kernel := build/kernel.bin
img := build/foo.img

linker_script := src/setup/linker.ld
grub_cfg := src/setup/grub.cfg
assembly_source_files := $(wildcard src/asm/*.asm)
assembly_object_files := $(patsubst src/asm/%.asm, \
	build/asm/%.o, $(assembly_source_files))
c_source_files := $(wildcard src/c/*.c)
c_object_files := $(patsubst src/c/%.c, \
	build/c/%.o, $(c_source_files))

.PHONY: all clean run img debug

all: $(kernel)

clean:
	-sudo umount /mnt/fatgrub
	-sudo losetup -d /dev/loop17
	-sudo losetup -d /dev/loop24
	-rm -r build/*
	-rm -r .img/*

run: $(img)
	qemu-system-x86_64 -s -drive format=raw,file=$(img)

debug: $(img)
	qemu-system-x86_64 -s -S -drive format=raw,file=$(img)

img: $(kernel) $(grub_cfg)
	mkdir -p .img/boot/grub
	cp $(kernel) .img/boot/kernel.bin
	cp $(grub_cfg) .img/boot/grub
	setup_scripts/setup.sh $(img)

$(kernel): $(assembly_object_files) $(c_object_files) $(linker_script)
	ld -n -T $(linker_script) -o $(kernel) $(assembly_object_files) \
      $(c_object_files)

# compile assembly files
build/asm/%.o: src/asm/%.asm
	mkdir -p build/asm
	nasm -g -felf64 $< -o $@

# compile c files
build/c/%.o: src/c/%.c
	mkdir -p build/c
	x86_64-elf-gcc -c -g $< -o $@
