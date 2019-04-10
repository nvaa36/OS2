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
         print_int(i, num_chars);
         return;
   }
}

void print_char(char c) {
   VGA_display_char(c);
}

void print_num_char(char c) {
   VGA_display_char(c + DEC_ZERO);
}

void print_int(int i, int *num_chars) {
   int digit;

   while (i) {
      digit = i % DECIMAL;
      print_num_char(digit);
      (*num_chars)++;
      i = i / DECIMAL;
   }
}

void print_str(const char *str, int *num_chars) {
   VGA_display_str(str);
}
void print_uchar(unsigned char uc, int *num_chars) {
}
void print_short(short sh, int *num_chars) {
}
void print_long_hex(long lo, int *num_chars) {
}
