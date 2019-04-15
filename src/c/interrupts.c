#include "interrupts.h"

idt_entry idt[NUM_IDT_ENTRIES];

void setup_interrupts() {
   setup_idt();
}

void setup_idt() {
   int i;

   for (i = 0; i < NUM_IDT_ENTRIES; i++) {
      /* TODO: make the offset correct */
      idt[i].offset1 = 0;
      /* TODO: Is this segment selector right? */
      /* Want index 1 in the GDT */
      idt[i].selector = 0 | (1 << 3);
      idt[i].ist = 0;
      idt[i].ign = 0;
      /* Make all types interrupts for now */
      idt[i].type = 0xE;
      idt[i].zero = 0;
      /* TODO: Don't know what to set this to */
      idt[i].zero = 0;
      /* Set all of them to present, print an error message if unimplemented */
      idt[i].p = 0;

      idt[i].offset2 = 0;
      idt[i].offset3 = 0;

      idt[i].ign2 = 0;
   }
}

void lidt(void* base, uint16_t size) {
   struct {
      uint16_t length;
      void* base;
   } __attribute__((packed)) IDTR;
   IDTR.length = size;
   IDTR.base = base;
   asm ( "lidt %0" : : "m"(GDTR) );
}
