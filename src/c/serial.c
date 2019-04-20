#include "serial.h"

void SER_init(void) {
   disable_interrupts();
   memset(&(ser_state.buf), 0, BUF_SIZE);
   ser_state.head = &(buf[0]);
   ser_state.tail = &(buf[0]);
   ser_state.busy = 0;

   outb(PORT + 1, 0x00);    // Disable all interrupts
   outb(PORT + 3, 0x80);    // Enable DLAB (set baud rate divisor)
   outb(PORT + 0, 0x03);    // Set divisor to 3 (lo byte) 38400 baud
   outb(PORT + 1, 0x00);    //                  (hi byte)
   outb(PORT + 3, 0x03);    // 8 bits, no parity, one stop bit
   outb(PORT + 2, 0xC7);    // Enable FIFO, clear them, with 14-byte threshold
   outb(PORT + 4, 0x02);    // Only transmit IRQ enabled
   enable_interrupts();
}

int SER_write(const char *buff, int len) {
   disable_interrupts();
   enable_interrupts();
}
