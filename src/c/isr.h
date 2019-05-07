#ifndef ISR_H
#define ISR_H

#include "constants.h"

#include "interrupts.h"
#include "printk.h"
#include "serial.h"
#include "stdio.h"
#include "system_calls.h"
#include "virtual_paging.h"

void isr_normal(int isr_num, int sys_call_num);
void isr_errcode(int isr_num, int errcode);

void kb_isr(int, int, void*);
void ser_isr(int, int, void*);
void pf_isr(int, int, void*);
void sc_isr(int, int, void*);

#endif
