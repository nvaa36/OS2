#ifndef PROCESSES_H
#define PROCESSES_H

#include <stdint.h>

#define DEFAULT_SS 0
#define DEFAULT_CS 8
#define USER_SS 0
#define USER_CS 32

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
   uint64_t ds;
   uint64_t es;
   uint64_t fs;
   uint64_t gs;
   uint64_t rbp;
   void *stack_base;
   struct Process *prev;
   struct Process *next;
   int kb_read;
   int pid;
} __attribute__ ((packed)) process;

typedef struct {
   uint64_t r11;
   uint64_t r10;
   uint64_t r9;
   uint64_t r8;
   uint64_t rcx;
   uint64_t rdx;
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

typedef struct {
   process *head;
   process *tail;
} process_queue;

typedef void (*kproc_t)(void*);

process kern_proc;
process *curr_proc, *next_proc;
process_queue ready_proc, kb_blocked, ata_blocked;
// Assumptions: each process is either in the ready queue or a blocked queue

/**
  * Assumptions: the current process will always be in the ready queue (not
  * necessarily the tail.
  **/

void setup_multiprocessing();

void PROC_run(void);
void PROC_reschedule();
process *PROC_create_kthread(kproc_t entry_point, void *arg);
process *PROC_create_user_thread(kproc_t entry_point, void *arg);

void PROC_block_on(process_queue *, int enable_ints);
void PROC_unblock_all(process_queue *);
void PROC_unblock_head(process_queue *);
void PROC_init_queue(process_queue *);


void yield_internal();
void kexit_internal();

#endif
