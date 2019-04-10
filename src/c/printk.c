#include "printk.h"

int printk(const char *fmt, ...) {
   va_list va;
   int i;
   char c;
   int num_chars = 0;
   int len = strlen(fmt);

   va_start(va, fmt);
   for (i = 0; i < len; i++) {
      c = fmt[i];
      if (c == '%') {
         c = fmt[++i];
         handle_flag(c, va, &num_chars);
      } else {
         print_char(c);
      }
      num_chars++;
   }

   va_end(va);

   return num_chars;
}

void handle_flag(char c, va_list va, int *num_chars) {
   int i;

   switch (c) {
      case '%':
         print_char(c);
         (*num_chars)++;
         return;
      case 'd':
         i = va_arg(va, int);
         print_neg((long)i);
         print_long_long((long)i, num_chars);
         return;
      case 'u':
         i = va_arg(va, int);
         print_long_long((long)i, num_chars);
         return;
      case 'x':
         i = va_arg(va, int);
         print_long_hex((long)i, num_chars);
         return;
   }
}

void print_char(char c) {
   VGA_display_char(c);
}

void print_num_char(char c) {
   VGA_display_char(c + DEC_ZERO);
}

void print_neg(long i, int *num_chars) {
   if (i < 0) {
      print_char('-');
      (*num_chars)++;
   }
}

void print_long_long(long i, int *num_chars) {
   int digit;

   if (!i) {
      return;
   }

   digit = (int)(i % DECIMAL);
   (*num_chars)++;
   print_long_long(i / DECIMAL, num_chars);
   print_num_char(digit);
}

void print_ulong_long(unsigned long i, int *num_chars) {
   int digit;

   if (!i) {
      return;
   }

   digit = (int)(i % DECIMAL);
   (*num_chars)++;
   print_long_long(i / DECIMAL, num_chars);
   print_num_char(digit);
}

void print_str(const char *str, int *num_chars) {
   VGA_display_str(str);
}
void print_long_hex(long lo, int *num_chars) {
   char [] characters = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b',
                         'c', 'd', 'e', 'f']
   int digit;

   if (!i) {
      return;
   }

   digit = (int)(i % HEX);
   (*num_chars)++;
   print_long_hex(i / HEX, num_chars);
   print_num_char(digit);
}
