#include "stdio.h"

#include "bitio.h"
#include "interrupts.h"
#include "printk.h"
#include "processes.h"
#include "string.h"


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
   '_', '_', '_', '_', '_', '_', '_', '_', '{', '|', '}'};

KBstate kb_state;

void setup_kb_state() {
   memset(&(kb_state), 0, sizeof(kb_state));
}

char get_char_head(int *read) {
   char character = 0;
   character = kb_state.buff[(*read)++];
   if (*read >= BUFF_SIZE)
      *read = 0;

   if (!character) {
      printk("Error reading character.\n");
   }
   
   return character;
}

void getc_block(char *arg) {
   disable_interrupts();
   while (curr_proc->kb_read == kb_state.tail) {
      PROC_block_on(&kb_blocked, 1);
      disable_interrupts();
   }

   *arg = get_char_head(&curr_proc->kb_read);
}

// Returns the key if a valid key was pressed, 0 otherwise
char get_kb_c() {
   unsigned char c;
   char translated_key = 0;

   c = inb(KBDR);
   translated_key = handle_key(c);

   if (translated_key) {
      kb_state.buff[kb_state.tail++] = translated_key;
      if (kb_state.tail >= BUFF_SIZE)
         kb_state.tail = 0;
   }
   return translated_key;
}

char poll_kb() {
   unsigned char status = inb(KBSR);

   while (!(status & KBDR_READY))
      status = inb(KBSR);
   return inb(KBDR);
}

unsigned char handle_key(unsigned char c) {
   if (kb_state.release_char) {
      kb_state.release_char = 0;
      if (c == LSHIFT || c == RSHIFT) {
         kb_state.shift = 0;
         return 0;
      }
      return 0;
   }
   if (c == LSHIFT || c == RSHIFT) {
      kb_state.shift = 1;
      return 0;
   }
   if (c == CAPS) {
      kb_state.caps = !kb_state.caps;
      return 0;
   }
   if (c <= BKSP) {
      c = keycode_translation[c - OFFSET];
      if (c != '_') {
         if (c == '\n' || c == '\t' || c == '\b') {
            return c;
         }
         /* capitalize if caps lock and a letter */
         if (kb_state.caps && c >= LOW_A && c <= LOW_Z) {
            return c - LOW_A + UPPER_A;
         }
         if (kb_state.shift) {
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

   if (c == RELEASED) {
      kb_state.release_char = 1;
   }
   return 0;
   
}
