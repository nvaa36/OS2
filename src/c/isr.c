#include "isr.h"

void isr_normal(int isr_num) {
   printk("Interrupt %d\n", isr_num);
   if (isr_num != 0x30) {
      asm("hlt");
   }
   IRQ_end_of_interrupt(isr_num);
}

void isr_errcode(int isr_num, int errcode) {
   IRQ_end_of_interrupt(isr_num);
}
