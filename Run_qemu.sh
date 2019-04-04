# Running the kernel with qemu

qemu-system-x86_64 -s -drive format=raw,file=foo.img -serial stdio #stdio helful for debugging for standard input/ouput port

# -s: support qemu remote debugging

## Running gdb
## Tell gdb which cpu architecture
# set arch i386:x86-64:intel
# target remote localhost:1234
## No symbols, so just random crap
# symbol-file os2/kernel.bin
## need to load user-space programs separately and tell gdb where the program is loaded
# add-symbol-file <user-space-program> 0x8000000000