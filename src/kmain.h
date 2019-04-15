#ifndef KMAIN_H
#define KMAIN_H

#include "c/gdt.h"
#include "c/interrupts.h"
#include "c/printk.h"
#include "c/setup_keyboard.h"
#include "c/stdio.h"

int kmain(int argc, char **argv);

void setup_kernel();

#endif
