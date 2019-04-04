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
	@umount /mnt/fatgrub
	@losetup -d /dev/loop17
	@losetup -d /dev/loop24
	@rm -r build
	@rm -r .img

run: $(img)
	@qemu-system-x86_64 -s -m 512 -drive format=raw,file=$(img) -serial stdio

img:
	@setup_scripts/setup.sh $(img)

$(img): $(kernel) $(grub_cfg)
	@mkdir build
	@mkdir -p .img/boot/grub
	@cp $(kernel) .img/boot/kernel.bin
	@cp $(grub_cfg) .img/boot/grub
	@setup_scripts/setup.sh $(img)

$(kernel): $(assembly_object_files) $(linker_script)
	@ld -n -T $(linker_script) -o $(kernel) $(assembly_object_files)

# compile assembly files
build/%.o: src/%.asm
	@nasm -felf64 $< -o $@
