#include "bitio.h"

char inb(unsigned short int port) {
   char value;

   asm("inb %1, %0"
       : "=a" (value)
       : "Nd" (port));

   return value;
}

void outb(char value, unsigned short int port) {
   asm("outb %1, %0" :
       : "d" (port), "a" (value));
}

void io_wait(void) {
   /* Port 0x80 is used for 'checkpoints' during POST. */
   /* The Linux kernel seems to think it is free for use :-/ */
   asm volatile ( "outb %%al, $0x80" : : "a"(0) );
   /* %%al instead of %0 makes no difference.  TODO: does the register need to be zeroed? */
}
