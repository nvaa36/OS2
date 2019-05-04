#ifndef KMAIN_H
#define KMAIN_H

#include <stdint.h>
#include "c/gdt.h"
#include "c/interrupts.h"
#include "c/page_frame_allocator.h"
#include "c/printk.h"
#include "c/serial.h"
#include "c/setup_keyboard.h"
#include "c/stdio.h"
#include "c/virtual_paging.h"

int kmain(uint32_t *tag_pointer);

void setup_kernel(uint32_t *tag_pointer);

#endif
