#ifndef GDT_H
#define GDT_H

#include <stdint.h>
#include "string.h"

#define NUM_GDT_ENTRIES 2
#define KERN_IND 1

struct csdesc {
   uint16_t limit1;
   uint16_t base_addr1;
   uint8_t base_addr2;

   uint8_t a:1;
   uint8_t r:1;
   uint8_t c:1;
   uint8_t exec:1;
   uint8_t one:1;
   uint8_t dpl:2;
   uint8_t present:1;

   uint8_t limit2:4;
   uint8_t avail:1;
   uint8_t long_mode:1;
   uint8_t d:1;
   uint8_t g:1;

   uint8_t base_addr3;
} __attribute__ ((packed));

typedef struct csdesc cs_desc;

/* TODO: Change when multiple types of descriptors. */
typedef struct csdesc gdt_entry;

struct tabledesc {
   uint16_t limit;
   uint64_t base_addr;
} __attribute__ ((packed));

typedef struct tabledesc table_desc;

gdt_entry gdt[NUM_GDT_ENTRIES];
table_desc table_descriptor;

void setup_gdt();
void setup_kernel_segment();
void lgdt(void* base, uint16_t size);

#endif
