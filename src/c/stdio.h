#ifndef STDIO_H
#define STDIO_H

#include "bitio.h"
#include "printk.h"

#define KBDR 0x60
#define KBSR 0x64

#define KBDR_READY 1

#define OFFSET 0x0D

#define LSHIFT 0x12
#define CAPS 0x58
#define RSHIFT 0x59
#define BKSP 0x66

typedef struct {
   char pressed;
   char shift;
} kb_state;

char get_kb_c();
char is_key_press(unsigned char c);
void handle_key(unsigned char c);

#endif
