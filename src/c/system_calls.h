#ifndef SYSTEM_CALLS_H
#define SYSTEM_CALLS_H

#include <stddef.h>

#define TRAP 0x80
#define KEXIT_TRAP 0x81

#define YIELD 0x01
#define KEXIT 0x02
#define GETC 0x03
#define READ_BLOCK 0x04
#define PUTC 0x05
#define EXIT 0x06
#define TEST 36

#define NUM_SYS_CALLS 100

void setup_syscalls();

// Make a system call, convention is, pass first parameter in rsi
void make_system_call(int sys_call_num, void *params);

void system_call(int sys_call_num, void *arg);

void yield();
void kexit();
void exit();
char getc();
void putc(char c);
void test(void *arg);

#endif
