#include "stdio.h"

static char keycode_translation [] = {'\t', '`', '_', '_', '_', '_', '_', '_',
   'q', '1', '_', '_', '_', 'z', 's', 'a', 'w', '2', '_', '_', 'c', 'x', 'd',
   'e', '4', '3', '_', '_', ' ', 'v', 'f', 't', 'r', '5', '_', '_', 'n', 'b',
   'h', 'g', 'y', '6', '_', '_', '_', 'm', 'j', 'u', '7', '8', '_', '_', ',',
   'k', 'i', 'o', '0', '9', '_', '_', '.', '/', 'l', ';', 'p', '-', '_', '_',
   '_', '\'', '_', '[', '=', '_', '_', '_', '_', '\n', ']', '_', '\\', '_',
   '_', '_', '_', '_', '_', '_', '_', '\b'};

static char shift_translation [] = {'_', '_', '_', '_', '_', '_', '_', '_',
   '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_',
   '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_',
   '_', '"', '_', '_', '_', '_', '<', '_', '>', '?', ')', '!', '@', '#', '$',
   '%', '^', '&', '*', '(', '_', ':', '_', '+', '_', '_', '_', '_', '_', '_',
   '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_',
   '_', '_', '_', '_', '_', '_', '_', '_', '{', '|', '}'}

static kb_state state = {0, 0};

char get_kb_c() {
   unsigned char c;
   char translated_key = 0;

   while (!translated_key) {
      c = poll_kb();
      translated_key = handle_key(c);
   }
   return translated key;
}

char poll_kb() {
   char c;
   unsigned char status = inb(KBSR);

   while (!(status & KBDR_READY))
      status = inb(KBSR);
   return inb(KBDR);
}

void handle_key(unsigned char c) {
   if (c == LSHIFT || c == RSHIFT) {
      state.shift = 1;
      return 0;
   }
   if (c == CAPS) {
      state.caps = 1;
      return 0;
   }
   /* TODO: handle backspace better? Somewhere else? */
   if (c < BKSP_PRESS) {
      c = keycode_translation[c - OFFSET];
      if (c == '\n' || c == '\t' || c == '\b') {
         return c;
      }
      /* capitalize if caps lock and a letter */
      if (state.caps && c >= LOW_A && c <= LOW_Z) {
         return c - LOW_A + UPPER_A;
      }
      if (state.shift) {
         if (c >= LOW_A && c <= LOW_Z) {
            return c - LOW_A + UPPER_A;
         }
         if (c >= EXCL && c <= TILD) {
            return shift_translation[c];
         }
      }
      return c;
   }
   
}

unsigned char shift_symbol(unsigned char c) {
   switch (c) {
   }
}
