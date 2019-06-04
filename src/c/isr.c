#include "isr.h"

#include "constants.h"

#include "bitio.h"
#include "block_device.h"
#include "interrupts.h"
#include "printk.h"
#include "processes.h"
#include "serial.h"
#include "stdio.h"
#include "system_calls.h"
#include "virtual_paging.h"

void isr_normal(int isr_num, int sys_call_num, void *arg) {
   if (isr_num > 256) {
      printk("Interrupt #%d out of bounds.\n", isr_num);
      asm("hlt");
   }
   irq_handler_t isr = irq_table[isr_num].handler;
   if (!isr) {
      printk("Interrupt #%d not supported.\n", isr_num);
      asm("hlt");
   }
   isr(isr_num, sys_call_num, irq_table[isr_num].arg, arg);
   if (isr_num > OFFSET1 && isr_num < OFFSET2 + 0x08) {
      IRQ_end_of_interrupt(isr_num - OFFSET1);
   }
}

void isr_errcode(int isr_num, int errcode, void *arg) {
   if (isr_num > 256) {
      printk("Interrupt #%d out of bounds.\n", isr_num);
      asm("hlt");
   }
   irq_handler_t isr = irq_table[isr_num].handler;
   if (!isr) {
      printk("Interrupt #%d not supported.\n", isr_num);
      asm("hlt");
   }
   isr(isr_num, errcode, NULL, arg);
}

void kb_isr(int isr_num, int err_code, void *isr_arg, void *arg) {
   char c = get_kb_c();
   if (c) {
      PROC_unblock_all(&kb_blocked);
   }
}

void ata_isr(int isr_num, int err_code, void *isr_arg, void *arg) {
   ata_request_queue *queue = (ata_request_queue *)isr_arg;

   if (queue->head == NULL) {
      return;
   }

   ata_read_handler(queue);

   PROC_unblock_head(&ata_blocked);
}

void ser_isr(int isr_num, int err_code, void *isr_arg, void *arg) {
   unsigned char int_type;
   int_type = inb(IRR);

   if (int_type & (1 << 1)) {
      /* Check if it is a LINE interrupt */
      if (int_type & (1 << 2)) {
         /* Read LSR */
         inb(LSR);
         return;
      }
      hw_write_serial();
      return;
   }
   printk("Unhandled serial interrupt type: %u\n", int_type);
}

void gp_isr(int isr_num, int err_code, void *isr_arg, void *arg) {
   printk("General Protection Fault. Error code: %x\n", err_code);
   asm("hlt");
}

void pf_isr(int isr_num, int err_code, void *isr_arg, void *arg) {
   void *addr = get_cr2();
   void *pt4 = get_cr3();
   PT1_Entry *pt1e = get_pt1_entry(pt4, addr);

   // TODO: Is this hacky? Is there a better way to do this?
   if ((uint64_t)addr < USER_SPACE_START && pt1e->avl != ALLOC_ON_DEMAND) {
      printk("Unhandled Page Fault. Addr: %p, table: %p, error code: %d\n",
             addr, pt4, err_code);
   }

   set_page_frame_pt1e(pt4, pt1e);
}

void sc_isr(int isr_num, int sys_call_num, void *isr_arg, void *arg) {
   system_call(sys_call_num, arg);
}
