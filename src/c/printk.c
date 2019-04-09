#include "printk.h"

int printk(const char *fmt, ...) {
   int num_chars = 0;
   return num_chars;
}

void print_char(char c) {
   VGA_display_char(c);
}
void print_str(const char *str) {
   VGA_display_str(str);
}
void print_uchar(unsigned char uc) {
}
void print_short(short sh) {
}
void print_long_hex(long lo) {
}
