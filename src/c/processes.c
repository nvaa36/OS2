#include "processes.h"

void PROC_run(void) {
   curr_proc = &kern_proc;
   asm("movq %%rax, %0" : "=r"(kern_proc.rax));
   asm("movq %%rbx, %0" : "=r"(kern_proc.rbx));
   asm("movq %%rcx, %0" : "=r"(kern_proc.rcx));
   asm("movq %%rdx, %0" : "=r"(kern_proc.rdx));
   asm("movq %%r8, %0" : "=r"(kern_proc.r8));
   asm("movq %%r9, %0" : "=r"(kern_proc.r9));
   asm("movq %%r10, %0" : "=r"(kern_proc.r10));
   asm("movq %%r11, %0" : "=r"(kern_proc.r11));
   asm("movq %%r12, %0" : "=r"(kern_proc.r12));
   asm("movq %%r13, %0" : "=r"(kern_proc.r13));
   asm("movq %%r14, %0" : "=r"(kern_proc.r14));
   asm("movq %%r15, %0" : "=r"(kern_proc.r15));
   asm("movq %%cs, %0" : "=r"(kern_proc.cs));
   asm("movq %%ss, %0" : "=r"(kern_proc.ss));
   asm("movq %%ds, %0" : "=r"(kern_proc.ds));
   asm("movq %%es, %0" : "=r"(kern_proc.es));
   asm("movq %%fs, %0" : "=r"(kern_proc.fs));
   asm("movq %%gs, %0" : "=r"(kern_proc.gs));
   asm("movq %%rsp, %0" : "=r"(kern_proc.rsp));
   kern_proc.next = &kern_proc;
   kern_proc.prev = &kern_proc;
   yield();
}

void PROC_reschedule() {
   //TODO: Think about this case more.
   if (curr_proc == NULL) {
      next_proc = &kern_proc;
      return;
   }

   next_proc = curr_proc->next;
}

void PROC_create_kthread(kproc_t entry_point, void *arg) {
   start_stack *stack;
   uint16_t rflags;

   void *stack_loc = MMU_alloc_kern_stack() + STACK_NUM_PAGES * PAGE_FRAME_SIZE -
                 sizeof(start_stack);
   stack = (start_stack *)stack_loc;
   memset(stack, 0, sizeof(start_stack));

   stack->ret_rip = (uint64_t)entry_point;
   stack->ret_cs = kern_proc.cs;
   asm("pushf"); // Push the flags register
   asm("pop %0" : "=r"(rflags));
   stack->ret_rflags = (uint64_t)rflags;
   stack->ret_rsp = (uint64_t)&stack->entry_ret_addr;
   stack->ret_ss = kern_proc.ss;

   stack->entry_ret_addr = (uint64_t)kexit;
   stack->entry_arg = (uint64_t)arg;
}

void yield_internal() {
   PROC_reschedule();
}

void kexit_internal() {
}
