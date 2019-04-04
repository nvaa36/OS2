#!/bin/bash
# Creating the kernel image and partitioning the initial disk: 

sudo setup_scripts/cleanup.sh 

sudo dd if=/dev/zero of=$1 bs=512 count=32768 # 16 MB disk image

sudo parted $1 mklabel msdos # partition edit partition MBR, make the MBR 

# add partition to the disk, starts 2048 sectors into disk image and ends 30720 sectors in, start at sector 2048 to leave room for grub 
sudo parted $1 mkpart primary fat32 2048s 30720s

# set the partition as bootable, flag for partition 1 
sudo parted $1 set 1 boot on

#partitioned, but no grub or any of our files 

#mount in our linux system to copy files to it 

#some device names/numbers might be off 

sudo losetup /dev/loop17 $1 # loop17 – loopback device might be different on system 

#allows grub to install 

#need another loopback device for the actual partition 

sudo losetup /dev/loop24 $1 -o 1048576 # set the other loopback device to point to the kernel partition (2048*512) 

#loop17 = grub, loop24 = kernel partition 

#actually put the fat32 fileystem on it 

sudo mkdosfs -F32 -f 2 /dev/loop24 # format disk image based on existing fat32 implementation 

sudo mount /dev/loop24 /mnt/fatgrub # make sure that the /mnt/fatgrub exists 

# install grub

sudo grub-install --root-directory=/mnt/fatgrub --no-floppy --modules="normal part_msdos ext2 multiboot" /dev/loop17 # need to have the path to the filesystem so grub can install files there

# put the rest of the data into the partition

sudo cp -r .img/* /mnt/fatgrub

sudo chmod 777 $1
