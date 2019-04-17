#include "interrupts.h"

idt_entry idt[NUM_IDT_ENTRIES];

void setup_interrupts() {
   disable_interrupts();
   setup_idt();
   PIC_remap(OFFSET1, OFFSET2);
   /* Enable keyboard interrupt */
   /*IRQ_clear_mask(KB_IRQ);*/
   enable_interrupts();
}

void setup_idt() {
   int i;
   uint64_t offset;

   for (i = 0; i < NUM_IDT_ENTRIES; i++) {
      /* Offset calculated from asm labels for the 1st and second isrs */
      offset = (uint64_t)(&isr_0 + i * (isr_1-isr_0));
      idt[i].offset1 = (uint16_t)offset;
      /* Want index 1 in the GDT */
      idt[i].selector = 0 | (1 << 3);
      idt[i].ist = 0;
      idt[i].ign = 0;
      /* Make all types interrupts for now */
      idt[i].type = 0xE;
      idt[i].zero = 0;
      /* TODO: Don't know what to set this to */
      idt[i].dpl = 0;
      /* Set all of them to present, print an error message if unimplemented */
      idt[i].p = 1;

      idt[i].offset2 = (uint16_t)(offset >> 16);
      idt[i].offset3 = (uint32_t)(offset >> 32);

      idt[i].ign2 = 0;
   }

   lidt((void *)idt, sizeof(idt));
}

/* Code from OSDevWiki */
/* reinitialize the PIC controllers, giving them specified vector offsets
   rather than 8h and 70h, as configured by default */
/*
arguments:
   offset1 - vector offset for master PIC
             vectors on the master become offset1..offset1+7
   offset2 - same for slave PIC: offset2..offset2+7
*/
void PIC_remap(int offset1, int offset2)
{
   unsigned char a1, a2;

   a1 = inb(PIC1_DATA);                        // save masks
   a2 = inb(PIC2_DATA);

   outb(PIC1_COMMAND, ICW1_INIT | ICW1_ICW4);  // starts the initialization sequence (in cascade mode)
   io_wait();
   outb(PIC2_COMMAND, ICW1_INIT | ICW1_ICW4);
   io_wait();
   outb(PIC1_DATA, offset1);                 // ICW2: Master PIC vector offset
   io_wait();
   outb(PIC2_DATA, offset2);                 // ICW2: Slave PIC vector offset
   io_wait();
   outb(PIC1_DATA, 4);                       // ICW3: tell Master PIC that there is a slave PIC at IRQ2 (0000 0100)
   io_wait();
   outb(PIC2_DATA, 2);                       // ICW3: tell Slave PIC its cascade identity (0000 0010)
   io_wait();

   outb(PIC1_DATA, ICW4_8086);
   io_wait();
   outb(PIC2_DATA, ICW4_8086);
   io_wait();

   outb(PIC1_DATA, a1);   // restore saved masks.
   outb(PIC2_DATA, a2);
}

void IRQ_end_of_interrupt(int irq) {
   if(irq >= 8)
      outb(PIC2_COMMAND,PIC_EOI);

   outb(PIC1_COMMAND,PIC_EOI);
}

void IRQ_set_mask(int irq) {
   uint16_t port;
   uint8_t value;

   if(irq < 8) {
      port = PIC1_DATA;
   } else {
      port = PIC2_DATA;
      irq -= 8;
   }
   value = inb(port) | (1 << irq);
   outb(port, value);        
}

void IRQ_clear_mask(int irq) {
   uint16_t port;
   uint8_t value;

   if(irq < 8) {
      port = PIC1_DATA;
   } else {
      port = PIC2_DATA;
      irq -= 8;
   }
   value = inb(port) & ~(1 << irq);
   outb(port, value);        
}
/* End OSDevWiki code */

int IRQ_get_mask(int IRQline) {
   uint16_t port;

   if(IRQline < 8) {
      port = PIC1_DATA;
   } else {
      port = PIC2_DATA;
      IRQline -= 8;
   }
   return inb(port);
}

void lidt(void* base, uint16_t size) {
   IDTR.length = size;
   IDTR.base = base;
   asm ( "lidt %0" : : "m"(IDTR) );
}

void enable_interrupts() {
   asm("STI");
}

void disable_interrupts() {
   asm("CLI");
}