#define GETC 0x03
#define PUTC 0x05
#define TRAP 0x80

#include <stdint.h>

void make_system_call(int sys_call_num, void *params) {
   asm("movq %0, %%rsi" : : "r"((uint64_t)sys_call_num) : "rsi");
   asm("movq %0, %%rdx" : : "r"((uint64_t)params) : "rdx");
   asm("int %0" : : "i"(TRAP));
}

char getc() {
   char c = 0;
   make_system_call(GETC, &c);

   return c;
}

void putc(char c) {
   make_system_call(PUTC, &c);
}

void test_func(void *arg) {
   while(1) {
      putc(getc() + 2);
   }
}
