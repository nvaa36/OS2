#ifndef SERIAL_H
#define SERIAL_H

#include "bitio.h"
#include "interrupts.h"
#include "string.h"

#define PORT 0x3f8   /* COM1 */

#define BUF_SIZE 64

typedef struct {
   char buf[BUF_SIZE];
   char *head, char *tail;
   char busy;
} SERState;

SERState ser_state;

void SER_init(void);
int SER_write(const char *buff, int len);

#endif
