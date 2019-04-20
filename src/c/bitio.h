#ifndef BITIO_H
#define BITIO_H

#include <stdint.h>

char inb(unsigned short int port);
void outb(uint16_t port, uint8_t val);
void io_wait(void);

#endif
