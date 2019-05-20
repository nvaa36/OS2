#include "system_calls.h"

#include "printk.h"
#include "processes.h"
#include "stdio.h"
#include "tss.h"

void (*(sys_calls[NUM_SYS_CALLS]))();

void setup_syscalls() {
   sys_calls[YIELD] = yield_internal;
   sys_calls[KEXIT] = kexit_internal;
   sys_calls[GETC] = getc_block;
   sys_calls[TEST] = test;
}

void make_system_call(int sys_call_num, void *params) {
   asm("movq %0, %%rsi" : : "r"((uint64_t)sys_call_num) : "rsi");
   asm("movq %0, %%rdx" : : "r"((uint64_t)params) : "rdx");
   asm("int %0" : : "i"(TRAP));
}

void system_call(int sys_call_num, void *arg) {
   sys_calls[sys_call_num](arg);
}

void yield() {
   make_system_call(YIELD, NULL);
}

void kexit() {
   asm("movq %0, %%rsi" : : "i"(KEXIT) : "rsi");
   asm("int %0" : : "i"(KEXIT_TRAP));
}

char getc() {
   make_system_call(GETC, NULL);

   return get_char_head(&curr_proc->kb_read);
}

void test(void *arg) {
   printk("System calls are working!\n");
}
