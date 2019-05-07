#ifndef SYSTEM_CALLS_H
#define SYSTEM_CALLS_H

#include "printk.h"

#define TRAP 0x80

#define YIELD 0x01
#define EXIT 0x02
#define TEST 36

#define NUM_SYS_CALLS 2

void setup_syscalls();

// Make a system call, convention is, pass first parameter in rsi
void make_system_call(int sys_call_num, void *params);

void system_call(int sys_call_num);

void test();
void yield();
void exit();

#endif
