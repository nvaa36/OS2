#!/bin/bash
# Creating the kernel image and partitioning the initial disk: 
sudo dd if=/dev/zero of=foo.img bs=512 count=32768
sudo parted foo.img mklabel msdos
sudo parted foo.img mkpart primary fat32 2048s 30720s
sudo parted foo.img set 1 boot on
sudo ./Cleanup.sh 
sudo losetup /dev/loop14 foo.img
sudo losetup /dev/loop17 foo.img -o 1048576
sudo mkdosfs -F32 -f 2 /dev/loop17
sudo mount /dev/loop1 /mnt/fatgrub

