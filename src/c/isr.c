#include "isr.h"

void isr_normal(int isr_num) {
   if (isr_num > 256) {
      printk("Interrupt #%d out of bounds.\n", isr_num);
      asm("hlt");
   }
   irq_handler_t isr = irq_table[isr_num].handler;
   if (!isr) {
      printk("Interrupt #%d not supported.\n", isr_num);
      asm("hlt");
   }
   isr(isr_num, 0, NULL);
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
      printk("%c", c);
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

void pf_isr(int isr_num, int err_code, void *arg) {
   void *addr = get_cr2();
   void *pt4 = get_cr3();
   
   if (1) {
      printk("Unhandled Page Fault. Addr: %p, table: %p, error code: %d\n",
             addr, pt4, err_code);
   }
}
