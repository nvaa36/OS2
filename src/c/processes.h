#ifndef PROCESSES_H
#define PROCESSES_H

#include <stdint.h>
#include "kmalloc.h"
#include "system_calls.h"

typedef struct Process{
   uint64_t rax;
   uint64_t rbx;
   uint64_t rcx;
   uint64_t rdx;
   uint64_t rsp;
   uint64_t r8;
   uint64_t r9;
   uint64_t r10;
   uint64_t r11;
   uint64_t r12;
   uint64_t r13;
   uint64_t r14;
   uint64_t r15;
   uint64_t cs;
   uint64_t ss;
   uint64_t ds;
   uint64_t es;
   uint64_t fs;
   uint64_t gs;
   struct Process *next;
   struct Process *prev;
   char blocked;
} __attribute__ ((packed)) process;

typedef struct {
   uint64_t r11;
   uint64_t r10;
   uint64_t rax;
   uint64_t rsi;
   uint64_t rdi;
   uint64_t ret_rip;
   uint64_t ret_cs;
   uint64_t ret_rflags;
   uint64_t ret_rsp;
   uint64_t ret_ss;
   uint64_t entry_ret_addr;
   uint64_t entry_arg;
} __attribute__ ((packed)) start_stack;

extern process *curr_proc;
extern process *next_proc;
extern process kern_proc;

typedef void (*kproc_t)(void*);

void PROC_run(void);
void PROC_reschedule();
void PROC_create_kthread(kproc_t entry_point, void *arg);

void yield_internal();
void kexit_internal();

#endif
