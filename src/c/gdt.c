#include "gdt.h"

#include "string.h"
#include "tss.h"

uint64_t gdt[NUM_GDT_ENTRIES];

void setup_kernel_segment() {
   ((cs_desc*)&gdt[KERN_IND])->limit1 = 0;
   ((cs_desc*)&gdt[KERN_IND])->base_addr1 = 0;
   ((cs_desc*)&gdt[KERN_IND])->base_addr2 = 0;
   ((cs_desc*)&gdt[KERN_IND])->a = 0;
   ((cs_desc*)&gdt[KERN_IND])->r = 0;
   ((cs_desc*)&gdt[KERN_IND])->c = 0;
   ((cs_desc*)&gdt[KERN_IND])->exec = 1;
   ((cs_desc*)&gdt[KERN_IND])->one = 1;
   ((cs_desc*)&gdt[KERN_IND])->dpl = 0;
   ((cs_desc*)&gdt[KERN_IND])->present = 1;

   ((cs_desc*)&gdt[KERN_IND])->limit2 = 0;
   ((cs_desc*)&gdt[KERN_IND])->avail = 0;
   ((cs_desc*)&gdt[KERN_IND])->long_mode = 1;
   ((cs_desc*)&gdt[KERN_IND])->d = 0;
   ((cs_desc*)&gdt[KERN_IND])->g = 0;

   ((cs_desc*)&gdt[KERN_IND])->base_addr3 = 0;
}

void setup_user_segment() {
   ((cs_desc*)&gdt[USER_IND])->limit1 = 0;
   ((cs_desc*)&gdt[USER_IND])->base_addr1 = 0;
   ((cs_desc*)&gdt[USER_IND])->base_addr2 = 0;
   ((cs_desc*)&gdt[USER_IND])->a = 0;
   ((cs_desc*)&gdt[USER_IND])->r = 0;
   ((cs_desc*)&gdt[USER_IND])->c = 0;
   ((cs_desc*)&gdt[USER_IND])->exec = 1;
   ((cs_desc*)&gdt[USER_IND])->one = 1;
   ((cs_desc*)&gdt[USER_IND])->dpl = 3;
   ((cs_desc*)&gdt[USER_IND])->present = 1;

   ((cs_desc*)&gdt[USER_IND])->limit2 = 0;
   ((cs_desc*)&gdt[USER_IND])->avail = 0;
   ((cs_desc*)&gdt[USER_IND])->long_mode = 1;
   ((cs_desc*)&gdt[USER_IND])->d = 0;
   ((cs_desc*)&gdt[USER_IND])->g = 0;

   ((cs_desc*)&gdt[USER_IND])->base_addr3 = 0;
}

void setup_tss_desc() {
   uint64_t tss_loc = (uint64_t)&tss;
   /* TODO: Does this actually need to be set */
   ((tss_desc1*)&gdt[TSS_IND1])->limit1 = TSS_SIZE;
   ((tss_desc1*)&gdt[TSS_IND1])->base_addr1 = tss_loc;
   ((tss_desc1*)&gdt[TSS_IND1])->base_addr2 = tss_loc >> 16;

   /* TODO: Is this the right type? What is the right type? */
   ((tss_desc1*)&gdt[TSS_IND1])->type = AVAIL_TSS_TYPE;
   ((tss_desc1*)&gdt[TSS_IND1])->zero = 0;
   ((tss_desc1*)&gdt[TSS_IND1])->dpl = 0;
   ((tss_desc1*)&gdt[TSS_IND1])->present = 1;

   ((tss_desc1*)&gdt[TSS_IND1])->limit2 = 0;
   ((tss_desc1*)&gdt[TSS_IND1])->avail = 0;
   ((tss_desc1*)&gdt[TSS_IND1])->long_mode = 1;
   ((tss_desc1*)&gdt[TSS_IND1])->d = 0;
   ((tss_desc1*)&gdt[TSS_IND1])->g = 0;

   ((tss_desc1*)&gdt[TSS_IND1])->base_addr3 = tss_loc >> 24;

   ((tss_desc2*)&gdt[TSS_IND2])->base_addr4 = tss_loc >> 32;
   ((tss_desc2*)&gdt[TSS_IND2])->zeros = 0;
}

void lgdt(void* base, uint16_t size) {
   GDTR.length = size;
   GDTR.base = base;
   asm ( "lgdt %0" : : "m"(GDTR) );
}

void ltr() {
   asm("ltr %0" : : "a"((uint16_t)(TSS_IND1 * sizeof(uint64_t))));
}

void setup_gdt() {
   /* Zero first entry. */
   memset(gdt, 0, sizeof(uint64_t));
   setup_kernel_segment();
   setup_user_segment();
   setup_tss_desc();

   /* Make the table descriptor */
   lgdt((void *)gdt, sizeof(gdt));
   ltr();
}
