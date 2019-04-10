#ifndef PRINTK_H
#define PRINTK_H

#include <stdarg.h>
#include "string.h"
#include "vga_driver.h"

#define DECIMAL 10
#define HEX 10
#define DEC_ZERO 48

int printk(const char *fmt, ...) __attribute__ ((format (printf, 1, 2)));

void handle_flag(char, va_list, int *);

void print_neg(long i, int *num_chars);
void print_char(char);
void print_str(const char *, int *);
void print_long_hex(long, int *);
void print_long_long(long, int *);

#endif
