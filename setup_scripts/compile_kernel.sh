#!/bin/bash

# Create ELF obj files and link them

nasm -f elf64 src/multiboot_header.asm -o obj/multiboot_header.o
nasm -f elf64 src/boot.asm -o obj/boot.o
ld -n -o .img/isofiles/boot/kernel.bin -T src/linker.ld obj/multiboot_header.o obj/boot.o
grub-mkrescue -o os.iso .img/isofiles
