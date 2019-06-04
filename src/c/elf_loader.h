#ifndef ELF_LOADER_H
#define ELF_LOADER_H

#include "filesystems.h"

#define MAGIC_START 0x7F
#define ELF_MAGIC "ELF"
#define LEN_ELF_MAGIC 3
#define BIT_SIZE_64 2
#define X86_64 0x3E
#define EXE_TYPE_EXEC 0x2

struct ELFCommonHeader {
   uint8_t magic[4];
   uint8_t bitsize;
   uint8_t endian;
   uint8_t version;
   uint8_t abi;
   uint64_t padding;
   uint16_t exe_type;
   uint16_t isa;
   uint32_t elf_version;
};

struct ELF64Header {
   struct ELFCommonHeader common;
   uint64_t prog_entry_pos;
   uint64_t prog_table_pos;
   uint64_t sec_table_pos;
   uint32_t flags;
   uint16_t hdr_size;
   uint16_t prog_ent_size;
   uint16_t prog_ent_num;
   uint16_t sec_ent_size;
   uint16_t sec_ent_num;
   uint16_t sec_name_idx;
};

struct ELF64ProgHeader {
   uint32_t type;
   uint32_t flags;
   uint64_t file_offset;
   uint64_t load_addr;
   uint64_t undefined;
   uint64_t file_size;
   uint64_t mem_size;
   uint64_t alignment;
};

void load_test_func(struct super_block *sb);
#endif
