#!/bin/bash

# Create ELF obj files and link them

nasm -f elf64 src/multiboot_header.asm
nasm -f elf64 src/boot.asm
ld -n -o .img/isofiles/boot/kernel.bin -T src/linker.ld obj/multiboot_header.o obj/boot.o
grub-mkrescue -o os.iso .img/isofiles
