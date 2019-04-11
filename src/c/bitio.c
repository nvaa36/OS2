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
