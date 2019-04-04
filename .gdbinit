# Running gdb
# Tell gdb which cpu architecture
set arch i386:x86-64:intel
target remote localhost:1234
# No symbols, so just random crap
symbol-file os2/kernel.bin
# need to load user-space programs separately and tell gdb where the program is loaded
add-symbol-file <user-space-program> <start-address>