#ifndef STDIO_H
#define STDIO_H

#include "serial.h"

#define KBDR 0x60
#define KBSR 0x64

#define KBDR_READY 1

#define OFFSET 0x0D

#define RELEASED 0xF0

#define LSHIFT 0x12
#define CAPS 0x58
#define RSHIFT 0x59
#define BKSP 0x66

#define LOW_A 0x61
#define LOW_Z 0x7A
#define UPPER_A 0x41
#define UPPER_Z 0x5A

#define EXCL 0x21
#define TILD 0x7E

typedef struct {
   char buff[BUFF_SIZE];
   int tail;
   char release_char;
   char shift;
   char caps;
} KBstate;

void setup_kb_state();
char get_char_head(int *read);
void getc_block(void *arg);
char get_kb_c();
char poll_kb();
unsigned char handle_key(unsigned char c);

#endif
