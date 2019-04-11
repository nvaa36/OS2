#ifndef PRINTK_H
#define PRINTK_H

#include "bitio.h"
#include "printk.h"

#define PS2_DATA 0x60
#define PS2_CMD 0x64
#define PS2_STATUS PS2_CMD
#define PS2_STATUS_OUTPUT 1
#define PS2_STATUS_INPUT (1 << 1)

void setup_keyboard_polling();

#endif
