#!/usr/bin/env bash
set -x
trap read debug

# Creating the kernel image and partitioning the initial disk: 

dd if=/dev/zero of=foo.img bs=512 count=67584 # 16 MB disk image 

parted foo.img mklabel msdos # partition edit partition MBR, make the MBR 

parted foo.img mkpart primary fat32 2048s 65536s # add partition to the disk, starts 2048 sectors into disk image and ends 30720 sectors in, start at sector 2048 to leave room for grub 
parted foo.img set 1 boot on # set the partition as bootable, flag for partition 1 

#partitioned, but no grub or any of our files 

#mount in our linux system to copy files to it 

#some device names/numbers might be off 

losetup /dev/loop17 foo.img # loop17 – loopback device might be different on system 

#allows grub to install 

#need another loopback device for the actual partition 

losetup /dev/loop24 foo.img -o 1048576 # set the other loopback device to point to the kernel partition (2048*512) 

#loop17 = grub, loop24 = kernel partition 

#actually put the fat32 fileystem on it 

mkdosfs –F32 -f 2 /dev/loop24 # format disk image based on existing fat32 implementation 

mount /dev/loop24 /mnt/fatgrub # make sure that the /mnt/fatgrub exists 

# install grub 

grub -install --root-directory=/mnt/fatgrub --no-floppy --modules="normal part_msdos ext2 multiboot" /dev/loop17 # need to have the path to the filesystem so grub can install files there

# put the rest of the data into the partition

cp -r .img/* /mnt/fatgrub

