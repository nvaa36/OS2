#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include <stdint.h>
#include "bitio.h"
#include "gdt.h"
#include "tss.h"

#define NUM_IDT_ENTRIES 256

/* Code from OSDevWiki */
#define PIC1      0x20     /* IO base address for master PIC */
#define PIC2      0xA0     /* IO base address for slave PIC */
#define PIC1_COMMAND PIC1
#define PIC1_DATA (PIC1+1)
#define PIC2_COMMAND PIC2
#define PIC2_DATA (PIC2+1)

#define ICW1_ICW4 0x01     /* ICW4 (not) needed */
#define ICW1_SINGLE  0x02     /* Single (cascade) mode */
#define ICW1_INTERVAL4  0x04     /* Call address interval 4 (8) */
#define ICW1_LEVEL   0x08     /* Level triggered (edge) mode */
#define ICW1_INIT 0x10     /* Initialization - required! */
 
#define ICW4_8086 0x01     /* 8086/88 (MCS-80/85) mode */
#define ICW4_AUTO 0x02     /* Auto (normal) EOI */
#define ICW4_BUF_SLAVE  0x08     /* Buffered mode/slave */
#define ICW4_BUF_MASTER 0x0C     /* Buffered mode/master */
#define ICW4_SFNM 0x10     /* Special fully nested (not) */

#define PIC_READ_IRR                0x0a    /* OCW3 irq ready next CMD read */
#define PIC_READ_ISR                0x0b    /* OCW3 irq service next CMD read */

#define PIC_EOI      0x20     /* End-of-interrupt command code */
/* End OSDevWiki code */

#define OFFSET1 0x20
#define OFFSET2 0x28

#define KB_IRQ 1

#define DF 0x8
#define GP 0xD
#define PF 0xE

#define NUM_IRQS 256

/* Labels for the 0th and 1st isrs */
extern void isr_0(void);
extern void isr_1(void);

/* ISR function pointers */
extern void kb_isr(int, int, void*);

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

struct {
   uint16_t length;
   void* base;
} __attribute__((packed)) IDTR;

// Actually use the void *arg
typedef void (*irq_handler_t)(int, int, void*);
struct {
   void *arg;
   irq_handler_t handler;
} irq_table[NUM_IRQS];

void setup_interrupts();
void setup_idt();
void lidt(void* base, uint16_t size);

void PIC_remap(int offset1, int offset2);
void setup_isrs();

/* interface for setting/clearing irqs */
/* TODO: implement this function. */
void IRQ_init(void);
void IRQ_set_mask(int irq);
void IRQ_clear_mask(int irq);
int IRQ_get_mask(int IRQline);
void IRQ_end_of_interrupt(int irq);

/* TODO: implement this function. */
typedef void (*irq_handler_t)(int, int, void*);
void IRQ_set_handler(int irq, irq_handler_t handler, void *arg);

uint16_t pic_get_irr(void);
uint16_t pic_get_isr(void);

void enable_interrupts();
void disable_interrupts();

#endif
