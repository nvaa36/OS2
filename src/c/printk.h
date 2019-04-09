#ifndef PRINTK_H
#define PRINTK_H

#include <stdarg.h>
#include "vga_driver.h"

int printk(const char *fmt, ...) __attribute__ ((format (printf, 1, 2)));

void print_char(char);
void print_str(const char *);
void print_uchar(unsigned char);
void print_short(short);
void print_long_hex(long);

#endif
