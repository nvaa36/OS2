#!/usr/bin/env bash

#cleanup by unmounting filesystem and delete 2 loopbakc devices

umount /mnt/fatgrub
losetup -d /dev/loop17
losetup -d /dev/loop24
rm foo.img
