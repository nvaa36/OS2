#ifndef SERIAL_H
#define SERIAL_H

#include "bitio.h"
#include "interrupts.h"
#include "string.h"

#define COM1_PORT 0x3f8   /* COM1 */
#define IRR COM1_PORT + 2
#define LSR COM1_PORT + 5

#define BUFF_SIZE 64

typedef struct {
   char buff[BUFF_SIZE];
   char *head, *tail;
   char busy;
} SERState;

SERState ser_state;

void SER_init(void);
int SER_write(const char *buff, int len);
int is_transmit_empty();
void hw_write_serial();

#endif
