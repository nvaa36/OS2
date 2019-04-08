kernel := build/kernel.bin
img := build/foo.img

linker_script := src/linker.ld
grub_cfg := src/grub.cfg
assembly_source_files := $(wildcard src/*.asm)
assembly_object_files := $(patsubst src/%.asm, \
	build/%.o, $(assembly_source_files))

.PHONY: all clean run img

all: $(kernel)

clean:
	-sudo umount /mnt/fatgrub
	-sudo losetup -d /dev/loop17
	-sudo losetup -d /dev/loop24
	-rm -r build/*
	-rm -r .img/*

run: $(img)
	qemu-system-x86_64 -s -drive format=raw,file=$(img)

img: $(kernel) $(grub_cfg)
	mkdir -p .img/boot/grub
	cp $(kernel) .img/boot/kernel.bin
	cp $(grub_cfg) .img/boot/grub
	setup_scripts/setup.sh $(img)

$(kernel): $(assembly_object_files) $(linker_script)
	ld -n -T $(linker_script) -o $(kernel) $(assembly_object_files)

# compile assembly files
build/%.o: src/%.asm
	nasm -g -felf64 $< -o $@