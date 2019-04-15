#ifndef BITIO_H
#define BITIO_H

char inb(unsigned short int port);
void outb(char value, unsigned short int port);
void io_wait(void);

#endif
