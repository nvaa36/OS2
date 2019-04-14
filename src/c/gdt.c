#include "gdt.h"

void setup_gdt() {
   /* Zero first entry. */
   memset(gdt, 0, sizeof(gdt_entry));
   setup_kernel_segment();

   /* Make the table descriptor */
   lgdt((void *)gdt, sizeof(gdt));
}

void setup_kernel_segment() {
   gdt[KERN_IND].limit1 = 0;
   gdt[KERN_IND].base_addr1 = 0;
   gdt[KERN_IND].base_addr2 = 0;
   gdt[KERN_IND].a = 0;
   gdt[KERN_IND].r = 0;
   gdt[KERN_IND].c = 0;
   gdt[KERN_IND].exec = 1;
   gdt[KERN_IND].one = 1;
   gdt[KERN_IND].dpl = 0;
   gdt[KERN_IND].present = 1;

   gdt[KERN_IND].limit2 = 0;
   gdt[KERN_IND].avail = 0;
   gdt[KERN_IND].long_mode = 1;
   gdt[KERN_IND].d = 0;
   gdt[KERN_IND].g = 0;

   gdt[KERN_IND].base_addr3 = 0;
}

void lgdt(void* base, uint16_t size) {
   struct {
      uint16_t length;
      void* base;
   } __attribute__((packed)) GDTR;
   GDTR.length = size;
   GDTR.base = base;
   asm ( "lgdt %0" : : "m"(GDTR) );
}
