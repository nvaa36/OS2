#include "stdio.h"

static char keycode_translation [] = {'\t', '`', '_', '_', '_', '_', '_', '_',
   'q', '1', '_', '_', '_', 'z', 's', 'a', 'w', '2', '_', '_', 'c', 'x', 'd',
   'e', '4', '3', '_', '_', ' ', 'v', 'f', 't', 'r', '5', '_', '_', 'n', 'b',
   'h', 'g', 'y', '6', '_', '_', '_', 'm', 'j', 'u', '7', '8', '_', '_', ',',
   'k', 'i', 'o', '0', '9', '_', '_', '.', '/', 'l', ';', 'p', '-', '_', '_',
   '_', '\'', '_', '[', '=', '_', '_', '_', '_', '\n', ']', '_', '\\', '_',
   '_', '_', '_', '_', '_', '_', '_', '\b'};

static kb_state state = {0, 0};

char get_kb_c() {
   unsigned char c = BKSP_PRESS + 1;

   unsigned char status = inb(KBSR);
   while (!is_key_press(c)) {
      while (!(status & KBDR_READY))
         status = inb(KBSR);
      c = inb(KBDR);
      handle_key(c);
   }
   return keycode_translation[c - OFFSET];
}

char is_key_press(unsigned char c) {
   if (c < BKSP_PRESS && c != LSHIFT && c != RSHIFT && c != CAPS &&
       c != BKSP) {
      return 1;
   }

   return 0;
}

void handle_key(unsigned char c) {
}
