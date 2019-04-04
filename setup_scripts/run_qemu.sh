#!/usr/bin/env bash

# Running the kernel with qemu

qemu-system-x86_64 -s -m 512 -drive format=raw,file=$1 -serial stdio #stdio helful for debugging for standard input/ouput port

# -s: support qemu remote debugging
