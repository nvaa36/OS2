#include "stdio.h"

static char keycode_translation [] = {'\t', '`', '_', '_', '_', '_', '_', '_',
   'q', '1', '_', '_', '_', 'z', 's', 'a', 'w', '2', '_', '_', 'c', 'x', 'd',
   'e', '4', '3', '_', '_', ' ', 'v', 'f', 't', 'r', '5', '_', '_', 'n', 'b',
   'h', 'g', 'y', '6', '_', '_', '_', 'm', 'j', 'u', '7', '8', '_', '_', ',',
   'k', 'i', 'o', '0', '9', '_', '_', '.', '/', 'l', ';', 'p', '-', '_', '_',
   '_', '\'', '_', '[', '=', '_', '_', '_', '_', '\n', ']', '_', '\\', '_',
   '_', '_', '_', '_', '_', '_', '_', '\b'};

char get_kb_c() {
   unsigned char c = BKSP_PRESS + 1;

   unsigned char status = inb(KBSR);
   while (!is_key_press(c)) {
      while (!(status & KBDR_READY))
         status = inb(KBSR);
      c = inb(KBDR);
   }
   return keycode_translation[c - OFFSET];
}

char is_key_press(unsigned char c) {
   if (c < BKSP_PRESS) {
      return 1;
   }

   return 0;
}
