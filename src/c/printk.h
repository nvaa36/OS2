#ifndef PRINTK_H
#define PRINTK_H

#include <stdarg.h>
#include "string.h"
#include "vga_driver.h"

#define DECIMAL 10
#define HEX 16
#define DEC_ZERO 48

int printk(const char *fmt, ...) __attribute__ ((format (printf, 1, 2)));

void handle_flag(const char *, int *, char, va_list, int *);

void print_dux(const char *, int *, long long, int *);
void print_neg(long long i, int *num_chars);
void print_char(char);
void print_str(const char *, int *);
void print_long_hex(long long, int *);
void print_long_long(long long, int *);

#endif
