#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include <stdint.h>
#include "gdt.h"

#define NUM_IDT_ENTRIES 256

struct idte{
   uint16_t offset1;
   uint16_t selector;

   uint8_t ist:3;
   uint8_t ign:5;
   uint8_t type:4;
   uint8_t zero:1;
   uint8_t dpl:2;
   uint8_t p:1;
   uint16_t offset2;

   uint32_t offset3;
   uint32_t ign2;

} __attribute__ ((packed));

typedef struct idte idt_entry;

void setup_interrupts();
void setup_idt();
void lidt(void* base, uint16_t size);

#endif
