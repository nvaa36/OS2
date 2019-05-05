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
         handle_flag(fmt, &i, c, va, &num_chars);
      } else {
         print_char(c);
      }
      num_chars++;
   }

   va_end(va);

   return num_chars;
}

void handle_flag(const char *fmt, int *ind, char c, va_list va, int *num_chars) {
   int i;

   switch (c) {
      case '%':
         print_char(c);
         (*num_chars)++;
         return;
      case 'c':
         print_char(va_arg(va, int));
         return;
      case 'd':
         i = va_arg(va, int);
         print_neg((long long)i, num_chars);
         print_long_long((long long)i, num_chars);
         return;
      case 'u':
         print_long_long((long long)va_arg(va, int), num_chars);
         return;
      case 'x':
         print_char('0');
         print_char('x');
         *num_chars += 2;
         print_long_hex((long long)va_arg(va, int), num_chars);
         return;
      case 'p':
         print_char('0');
         print_char('x');
         *num_chars += 2;
         print_long_hex((long long)va_arg(va, void *), num_chars);
         return;
      case 'h':
         print_dux(fmt, ind, (long long)va_arg(va, int), num_chars);
         return;
      case 'l':
         print_dux(fmt, ind, (long long)va_arg(va, long), num_chars);
         return;
      case 'q':
         print_dux(fmt, ind, (long long)va_arg(va, long long), num_chars);
         return;
   }
}

void print_dux(const char *fmt, int *i, long long num, int *num_chars) {
   char c2 = fmt[(++*i)];
   if (c2 == 'u') {
      print_long_long(num, num_chars);
   }
   if (c2 == 'd') {
      print_neg(num, num_chars);
      print_long_long(num, num_chars);
   }
   if (c2 == 'x') {
      print_char('0');
      print_char('x');
      *num_chars += 2;
      print_long_hex(num, num_chars);
   }
}

void print_char(char c) {
   if (c == '\b') {
      backspace();
   }
   else {
      VGA_display_char(c);
      SER_writec(c);
   }
}

void print_num_char(char c) {
   VGA_display_char(c + DEC_ZERO);
   SER_writec(c + DEC_ZERO);
}

void print_neg(long long i, int *num_chars) {
   if (i < 0) {
      print_char('-');
      (*num_chars)++;
   }
}

void print_long_long(long long i, int *num_chars) {
   int digit;

   if (!i) {
      return;
   }

   digit = (int)(i % DECIMAL);
   (*num_chars)++;
   print_long_long(i / DECIMAL, num_chars);
   print_num_char(digit);
}

void print_ulong_long(unsigned long long i, int *num_chars) {
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
void print_long_hex(long long i, int *num_chars) {
   char characters[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b',
                         'c', 'd', 'e', 'f'};
   int digit;

   if (!i) {
      return;
   }

   digit = (int)(i % HEX);
   (*num_chars)++;
   print_long_hex(i / HEX, num_chars);
   print_char(characters[digit]);
}
