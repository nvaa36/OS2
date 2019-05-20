#include "serial.h"

#include "bitio.h"
#include "interrupts.h"
#include "string.h"

SERState ser_state;

void SER_init(void) {
   uint16_t init_enabled = interrupts_enabled();
   disable_interrupts();
   memset(&(ser_state.buff), 0, BUFF_SIZE);
   ser_state.head = &(ser_state.buff[0]);
   ser_state.tail = &(ser_state.buff[0]);
   ser_state.busy = 0;

   outb(COM1_PORT + 1, 0x00);    // Disable all interrupts
   outb(COM1_PORT + 3, 0x80);    // Enable DLAB (set baud rate divisor)
   outb(COM1_PORT + 0, 0x03);    // Set divisor to 3 (lo byte) 38400 baud
   outb(COM1_PORT + 1, 0x00);    //                  (hi byte)
   outb(COM1_PORT + 3, 0x03);    // 8 bits, no parity, one stop bit
   outb(COM1_PORT + 2, 0xC7);    // Enable FIFO, clear them, with 14-byte threshold
   outb(COM1_PORT + 4, 0x02);    // Only transmit IRQ enabled
   IRQ_clear_mask(SER_IRQ);
   if (init_enabled) {
      enable_interrupts();
   }
}

/* Returns 1 on success and 0 on failure, assumes interrupts are disabled. */
char ser_write(char toAdd) {
   if (ser_state.head == ser_state.tail - 1 ||
      (ser_state.head == &ser_state.buff[0]
       && ser_state.tail == &ser_state.buff[BUFF_SIZE-1]) )
      return 0;
   *ser_state.tail++ = toAdd;
   if (ser_state.tail >= &ser_state.buff[BUFF_SIZE])
      ser_state.tail = &ser_state.buff[0];

   return 1;
}

int SER_write(const char *buff, int len) {
   uint16_t init_enabled = interrupts_enabled();
   disable_interrupts();

   int i;
   char success = 0;

   for (i = 0; i < len; i++) {
      while (!(success = ser_write(buff[i])));
   }

   if (is_transmit_empty()) {
      hw_write_serial();
   }

   if (init_enabled) {
      enable_interrupts();
   }

   return len;
}

void SER_writec(char c) {
   uint16_t init_enabled = interrupts_enabled();
   disable_interrupts();

   char success = 0;

   while (!(success = ser_write(c)));

   if (is_transmit_empty()) {
      hw_write_serial();
   }

   if (init_enabled) {
      enable_interrupts();
   }
}

int is_transmit_empty() {
   return inb(COM1_PORT + 5) & 0x20;
}

/* Assumes interrupts are already disabled and transmit is empty. */
void hw_write_serial() {
   while (is_transmit_empty() == 0);
   ser_state.busy = 0;
   if (ser_state.head == ser_state.tail)
      return;
   outb(COM1_PORT, *ser_state.head++);
   ser_state.busy = 1;
   if (ser_state.head >= &ser_state.buff[BUFF_SIZE])
      ser_state.head = &ser_state.buff[0];
}
