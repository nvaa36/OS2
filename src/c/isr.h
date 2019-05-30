#ifndef ISR_H
#define ISR_H

void isr_normal(int isr_num, int sys_call_num, void *arg);
void isr_errcode(int isr_num, int errcode, void *arg);

void kb_isr(int, int, void*, void*);
void ser_isr(int, int, void*, void*);
void ata_isr(int, int, void*, void*);
void pf_isr(int, int, void*, void*);
void sc_isr(int, int, void*, void*);

#endif
