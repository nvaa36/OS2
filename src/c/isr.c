#include "isr.h"

void isr_normal(int isr_num, int sys_call_num) {
   if (isr_num > 256) {
      printk("Interrupt #%d out of bounds.\n", isr_num);
      asm("hlt");
   }
   irq_handler_t isr = irq_table[isr_num].handler;
   if (!isr) {
      printk("Interrupt #%d not supported.\n", isr_num);
      asm("hlt");
   }
   isr(isr_num, sys_call_num, irq_table[isr_num].arg);
   IRQ_end_of_interrupt(isr_num);
}

void isr_errcode(int isr_num, int errcode) {
   if (isr_num > 256) {
      printk("Interrupt #%d out of bounds.\n", isr_num);
      asm("hlt");
   }
   irq_handler_t isr = irq_table[isr_num].handler;
   if (!isr) {
      printk("Interrupt #%d not supported.\n", isr_num);
      asm("hlt");
   }
   isr(isr_num, errcode, NULL);
   IRQ_end_of_interrupt(isr_num);
}

void kb_isr(int isr_num, int err_code, void *arg) {
   char c = get_kb_c();
   if (c) {
      PROC_unblock_all(&kb_blocked);
   }
}

void ser_isr(int isr_num, int err_code, void *arg) {
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

void gp_isr(int isr_num, int err_code, void *arg) {
   printk("General Protection Fault. Error code: %x\n", err_code);
   asm("hlt");
}

void pf_isr(int isr_num, int err_code, void *arg) {
   void *addr = get_cr2();
   void *pt4 = get_cr3();
   PT1_Entry *pt1e = get_pt1_entry(pt4, addr);

   if (pt1e->avl != ALLOC_ON_DEMAND) {
      printk("Unhandled Page Fault. Addr: %p, table: %p, error code: %d\n",
             addr, pt4, err_code);
   }

   set_page_frame_pt1e(pt4, pt1e);
}

void sc_isr(int isr_num, int sys_call_num, void *arg) {
   system_call(sys_call_num, arg);
}
