#include "bitio.h"

char inb(unsigned short int port) {
   char value;

   asm("inb %1, %0"
       : "=a" (value)
       : "Nd" (port));

   return value;
}

uint16_t inw(unsigned short int port) {
   uint16_t value;

   asm("inw %1, %0"
       : "=a" (value)
       : "Nd" (port));

   return value;
}

void outb(uint16_t port, uint8_t val)
{
   asm volatile ( "outb %0, %1" : : "a"(val), "Nd"(port) );
   /* There's an outb %al, $imm8  encoding, for compile-time constant port numbers that fit in 8b.  (N constraint).
    * Wider immediate constants would be truncated at assemble-time (e.g. "i" constraint).
    * The  outb  %al, %dx  encoding is the only option for all other cases.
    * %1 expands to %dx because  port  is a uint16_t.  %w1 could be used if we had the port number a wider C type */
}

void outl(uint16_t port, uint32_t val)
{
   asm volatile ( "outl %0, %1" : : "a"(val), "Nd"(port) );
   /* There's an outb %al, $imm8  encoding, for compile-time constant port numbers that fit in 8b.  (N constraint).
    * Wider immediate constants would be truncated at assemble-time (e.g. "i" constraint).
    * The  outb  %al, %dx  encoding is the only option for all other cases.
    * %1 expands to %dx because  port  is a uint16_t.  %w1 could be used if we had the port number a wider C type */
}

void io_wait(void) {
   /* Port 0x80 is used for 'checkpoints' during POST. */
   /* The Linux kernel seems to think it is free for use :-/ */
   asm volatile ( "outb %%al, $0x80" : : "a"(0) );
   /* %%al instead of %0 makes no difference.  TODO: does the register need to be zeroed? */
}
