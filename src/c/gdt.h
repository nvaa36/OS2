#ifndef GDT_H
#define GDT_H

#include <stdint.h>
#include "string.h"
#include "tss.h"

#define NUM_GDT_ENTRIES 4
#define KERN_IND 1
#define TSS_IND1 2
#define TSS_IND2 3

#define AVAIL_TSS_TYPE 9

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

struct tssdesc_pt1 {
   uint16_t limit1;
   uint16_t base_addr1;
   uint8_t base_addr2;

   uint8_t type:4;
   uint8_t zero:1;
   uint8_t dpl:2;
   uint8_t present:1;

   uint8_t limit2:4;
   uint8_t avail:1;
   uint8_t long_mode:1;
   uint8_t d:1;
   uint8_t g:1;

   uint8_t base_addr3;

} __attribute__ ((packed));

struct tssdesc_pt2 {
   uint32_t base_addr4;

   uint32_t zeros;

} __attribute__ ((packed));

typedef struct csdesc cs_desc;
typedef struct tssdesc_pt1 tss_desc1;
typedef struct tssdesc_pt2 tss_desc2;

struct {
   uint16_t length;
   void* base;
} __attribute__((packed)) GDTR;

uint64_t gdt[NUM_GDT_ENTRIES];

void setup_gdt();
void setup_kernel_segment();
void setup_tss_desc();
void lgdt(void* base, uint16_t size);
void ltr();

#endif
