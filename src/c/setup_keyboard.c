#include "setup_keyboard.h"

void setup_keyboard_polling() {
   unsigned char command;
   unsigned char data;
   /* disable ports 1 and 2 */
   command = xAD;
   outb(command, PS2_CMD);
   command = xA7;
   outb(command, PS2_CMD);
   /* read configuration byte */
   command = x20;
   outb(command, PS2_CMD);
   data = ps2_poll_read();
   printk(data);
}

static char ps2_poll_read(void) {
   char status = inb(PS2_STATUS);
   while (!(status & PS2_STATUS_OUTPUT))
      status = inb(PS2_STATUS);
   return inb(PS2_DATA);
}
