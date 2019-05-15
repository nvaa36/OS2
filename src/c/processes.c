#include "processes.h"

int proc_count;

void setup_multiprocessing() {
   proc_count = 1;
   curr_proc = &kern_proc;
   next_proc = curr_proc;
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
   asm("movq %%ds, %0" : "=r"(kern_proc.ds));
   asm("movq %%es, %0" : "=r"(kern_proc.es));
   asm("movq %%fs, %0" : "=r"(kern_proc.fs));
   asm("movq %%gs, %0" : "=r"(kern_proc.gs));
   asm("movq %%rsp, %0" : "=r"(kern_proc.rsp));
   asm("movq %%rbp, %0" : "=r"(kern_proc.rbp));
   proc_head = NULL;
   proc_tail = NULL;
}

void PROC_run(void) {
   curr_proc = &kern_proc;
   yield();
}

void PROC_reschedule() {
   if (proc_head == NULL) {
      next_proc = &kern_proc;
      return;
   }

   next_proc = proc_head;
   if (proc_head == proc_tail) {
      return;
   }
   proc_head = proc_head->next;
   proc_head->prev = NULL;
   next_proc->next = NULL;
   proc_tail->next = next_proc;
   next_proc->prev = proc_tail;
   proc_tail = next_proc;
}

process *PROC_create_kthread(kproc_t entry_point, void *arg) {
   start_stack *stack;
   process *new_proc;
   uint16_t rflags;

   void *stack_loc = MMU_alloc_kern_stack();
   stack = (start_stack *)(stack_loc + STACK_NUM_PAGES * PAGE_FRAME_SIZE -
                 sizeof(start_stack));
   memset(stack, 0, sizeof(start_stack));

   stack->ret_rip = (uint64_t)entry_point;
   stack->ret_cs = DEFAULT_CS;
   asm("pushf"); // Push the flags register
   asm("pop %0" : "=r"(rflags));
   stack->ret_rflags = (uint64_t)rflags;
   stack->ret_rsp = (uint64_t)&stack->entry_ret_addr;
   stack->ret_ss = DEFAULT_SS;

   stack->entry_ret_addr = (uint64_t)kexit;
   stack->entry_arg = (uint64_t)arg;

   new_proc = kmalloc(sizeof(process));
   memset(new_proc, 0, sizeof(process));
   new_proc->rsp = (uint64_t)stack;
   new_proc->stack_base = stack_loc;
   new_proc->pid = proc_count++;

   if (!proc_head) {
      proc_head = new_proc;
      proc_tail = new_proc;
   }
   else {
      new_proc->prev = proc_tail;
      proc_tail->next = new_proc;
      proc_tail = new_proc;
   }

   return new_proc;
}

void yield_internal() {
   PROC_reschedule();
}

void kexit_internal() {
   if (proc_head == proc_tail) {
      proc_head = NULL;
      proc_tail = NULL;
   }
   else {
      proc_head = proc_head->next;
   }
   PROC_reschedule();
   MMU_free_kern_stack(curr_proc->stack_base);
   kfree(curr_proc);
}
