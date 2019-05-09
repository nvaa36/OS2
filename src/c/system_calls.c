#include "system_calls.h"

void (*(sys_calls[NUM_SYS_CALLS]))();

void setup_syscalls() {
   sys_calls[YIELD] = yield_internal;
   sys_calls[KEXIT] = kexit_internal;
   sys_calls[TEST] = test;
}

void make_system_call(int sys_call_num, void *params) {
   asm("movq %0, %%rsi" : : "r"((uint64_t)sys_call_num) : "rsi");
   asm("int %0" : : "i"(TRAP));
}

void system_call(int sys_call_num) {
   sys_calls[sys_call_num]();
}

void yield() {
   make_system_call(YIELD, NULL);
}

void kexit() {
   make_system_call(KEXIT, NULL);
}

void test() {
   printk("System calls are working!\n");
}
