#ifndef PRINTK_H
#define PRINTK_H

#include <stdarg.h>
#include "string.h"
#include "vga_driver.h"

#define DECIMAL 10
#define DEC_ZERO 48

int printk(const char *fmt, ...) __attribute__ ((format (printf, 1, 2)));

void handle_flag(char, va_list, int *);

void print_char(char);
void print_str(const char *, int *);
void print_uchar(unsigned char, int *);
void print_short(short, int *);
void print_int(int, int *);
void print_long_hex(long, int *);

#endif
