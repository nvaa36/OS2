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
c_test_files := $(wildcard src/c/test/*.c)
c_object_test_files := $(patsubst src/c/test/%.c, \
	build/c/test/%.o, $(c_test_files))

.PHONY: all clean run img test

all: $(kernel)

clean:
	-sudo umount /mnt/fatgrub
	-sudo losetup -d /dev/loop17
	-sudo losetup -d /dev/loop24
	-rm -r build/*
	-rm -r .img/*
	-rm build/foo.img

run: $(img)
	qemu-system-x86_64 -s -drive format=raw,file=$(img)

img: $(kernel) $(grub_cfg)
	mkdir -p .img/boot/grub
	cp $(kernel) .img/boot/kernel.bin
	cp $(grub_cfg) .img/boot/grub
	setup_scripts/setup.sh $(img)

$(kernel): $(assembly_object_files) $(c_object_files) $(linker_script) \
				build/kmain.o
	ld -n -T $(linker_script) -o $(kernel) $(assembly_object_files) \
      $(c_object_files) build/kmain.o
		
$(test_kernel): $(assembly_object_files) $(c_object_files) \
	$(c_object_test_files) $(linker_script)
	ld -n -T $(linker_script) -o $(kernel) $(assembly_object_files) \
      $(c_object_files) $(c_object_test_files)

test: $(test_kernel) $(grub_cfg)
	mkdir -p .img/boot/grub
	cp $(kernel) .img/boot/kernel.bin
	cp $(grub_cfg) .img/boot/grub
	setup_scripts/setup.sh $(img)

# compile assembly files
build/asm/%.o: src/asm/%.asm
	mkdir -p build/asm
	nasm -g -felf64 $< -o $@

# compile kmain
build/kmain.o: src/kmain.c src/kmain.h
	mkdir -p build/c
	x86_64-elf-gcc -Wall -ffreestanding -nostdlib -lgcc -mno-red-zone -Werror -c -g $< -o $@

# compile c files
build/c/%.o: src/c/%.c src/c/%.h
	mkdir -p build/c
	x86_64-elf-gcc -Wall -ffreestanding -nostdlib -lgcc -mno-red-zone -Werror -c -g $< -o $@

# compile test files
build/c/test/%.o: src/c/test/%.c src/c/test/%.h
	mkdir -p build/c/test
	x86_64-elf-gcc -Wall -ffreestanding -nostdlib -lgcc -mno-red-zone -Werror -c -g $< -o $@
