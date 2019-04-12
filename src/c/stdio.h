#ifndef STDIO_H
#define STDIO_H

#include "bitio.h"
#include "printk.h"

#define KBDR 0x60
#define KBSR 0x64

#define KBDR_READY 1

#define OFFSET 0x0D

#define BKSP_PRESS 0x66

char get_kb_c();
char is_key_press(unsigned char c);

#endif
