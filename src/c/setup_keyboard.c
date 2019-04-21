#include "setup_keyboard.h"

void setup_keyboard() {
   unsigned char data = 0;
   unsigned char mask = 0;

   /* disable ports 1 and 2 */
   ps2_poll_cmd_write(DISABLE_P1);
   ps2_poll_cmd_write(DISABLE_P2);

   /* read configuration byte */
   ps2_poll_cmd_write(READ_CONF);
   data = ps2_poll_read();

   /* clear bits 1 and 6 */
   mask = ~(mask | PS2_INT2_BIT | PS2_CLCK2_BIT | PS2_PT_BIT);
   data &= mask;

   /* enable clock on channel 1 */
   mask = 0 | PS2_CLCK1_BIT;
   data |= mask;

   /* write out config bit */
   ps2_poll_cmd_write(WRITE_CONF);
   ps2_poll_write(data);

   /* enable port 1 */
   ps2_poll_cmd_write(ENABLE_P1);

   /* Reset kb */
   kb_poll_write(RESET);

   /* Set scancode set to set 2 */
   kb_poll_write(GETSET_SCANSET);
   kb_poll_write(SCANCODE_SET);

   /* Enable keyboard */
   kb_poll_write(ENABLE);
}

unsigned char ps2_poll_read() {
   unsigned char status = inb(PS2_STATUS);
   while (!(status & PS2_STATUS_OUTPUT))
      status = inb(PS2_STATUS);
   return inb(PS2_DATA);
}

void ps2_poll_write(unsigned char value) {
   unsigned char status = inb(PS2_STATUS);
   while ((status & PS2_STATUS_INPUT))
      status = inb(PS2_STATUS);
   outb(PS2_DATA, value);
}

void ps2_poll_cmd_write(unsigned char value) {
   unsigned char status = inb(PS2_STATUS);
   while ((status & PS2_STATUS_INPUT))
      status = inb(PS2_STATUS);
   outb(PS2_CMD, value);
}

void kb_poll_write(unsigned char data) {
   unsigned char response = RESEND;

   ps2_poll_write(data);
   while ((response = ps2_poll_read()) == RESEND) {
      ps2_poll_write(data);
   }
   if (response != ACK && response != PASSED) {
      printk("Error code %x for data %x\n", (int)response, data);
   }
}
