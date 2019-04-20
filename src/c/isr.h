#ifndef ISR_H
#define ISR_H

#include "interrupts.h"
#include "printk.h"
#include "stdio.h"

void isr_normal(int isr_num);
void isr_errcode(int isr_num, int errcode);

void kb_isr(int, int, void*);

#endif
