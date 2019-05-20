#include "processes.h"

#include "interrupts.h"
#include "kmalloc.h"
#include "page_frame_allocator.h"
#include "string.h"
#include "system_calls.h"
#include "virtual_paging.h"

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
   kern_proc.kb_read = 0;
   ready_proc.head = NULL;
   ready_proc.tail = NULL;
}

// Adds the process to the end.
static void add_proc(process_queue *queue, process *proc) {
   if (!queue->head) {
      queue->head = proc;
      queue->tail = proc;
   }
   else {
      proc->prev = queue->tail;
      queue->tail->next = proc;
      queue->tail = proc;
   }
}

static void remove_proc(process_queue *queue, process *proc) {
   if (proc == queue->head) {
      queue->head = proc->next;
   }

   if (proc == queue->tail) {
      queue->tail = proc->prev;
   }

   if (proc->prev) {
      proc->prev->next = proc->next;
   }

   if (proc->next) {
      proc->next->prev = proc->prev;
   }
}

void PROC_run(void) {
   curr_proc = &kern_proc;
   yield();
}

void PROC_reschedule() {
   if (ready_proc.head == NULL) {
      next_proc = &kern_proc;
      return;
   }

   next_proc = ready_proc.head;
   if (ready_proc.head == ready_proc.tail) {
      return;
   }
   ready_proc.head = ready_proc.head->next;
   ready_proc.head->prev = NULL;
   next_proc->next = NULL;
   ready_proc.tail->next = next_proc;
   next_proc->prev = ready_proc.tail;
   ready_proc.tail = next_proc;
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
   // Make the first argument when you start the function be the argument
   // passed in.
   stack->rdi = (uint64_t)arg;

   stack->entry_ret_addr = (uint64_t)kexit;
   stack->entry_arg = (uint64_t)arg;

   new_proc = kmalloc(sizeof(process));
   memset(new_proc, 0, sizeof(process));
   new_proc->rsp = (uint64_t)stack;
   new_proc->stack_base = stack_loc;
   new_proc->pid = proc_count++;

   add_proc(&ready_proc, new_proc);

   return new_proc;
}

void PROC_block_on(process_queue *queue, int enable_ints) {
   if (!queue) {
      return;
   }

   remove_proc(&ready_proc, curr_proc);
   add_proc(queue, curr_proc);

   if (enable_ints) {
      enable_interrupts();
   }

   yield();
}

void PROC_unblock_all(process_queue *queue) {
   while (queue->head) {
      PROC_unblock_head(queue);
   }
}
void PROC_unblock_head(process_queue *queue) {
   process *head = queue->head;

   remove_proc(queue, queue->head);
   add_proc(&ready_proc, head);
}
void PROC_init_queue(process_queue *queue) {
   queue->head = NULL;
   queue->tail = NULL;
}

void yield_internal(void *arg) {
   PROC_reschedule();
}

void kexit_internal(void *arg) {
   if (ready_proc.head == ready_proc.tail) {
      ready_proc.head = NULL;
      ready_proc.tail = NULL;
   }
   else {
      remove_proc(&ready_proc, curr_proc);
   }
   PROC_reschedule();
   MMU_free_kern_stack(curr_proc->stack_base);
   kfree(curr_proc);
}
