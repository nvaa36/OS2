#ifndef PAGE_FRAM_ALL_H
#define PAGE_FRAM_ALL_H

#include "printk.h"

#define END_TYPE 0
#define MMAP 6
#define ELF 9

#define MMAP_ARR_SIZE 40
#define ELF_HEADS_SIZE 30
#define MMAP_HEADER_SIZE 16

#define PAGE_FRAME_SIZE 4096

typedef struct {
   uint64_t *head;
   uint64_t *tail;
} frameList;

typedef struct {
   uint64_t start;
   uint64_t length;
} mem_region;

typedef struct {
   uint64_t address;
   uint64_t size;
} elf_header;

typedef struct {
   uint64_t start;
   uint64_t length;
   uint32_t type;
   uint32_t reserved;
} mem_entry;

typedef struct {
   uint32_t name;
   uint32_t type;
   uint64_t flags;
   uint64_t address;
   uint64_t offset;
   uint64_t size;
   uint32_t tab_ind;
   uint32_t info;
   uint64_t addr_align;
   uint64_t fix_entry;
} elf_entry;

void setup_frame_alloc(uint32_t *tag_pointer);
void parse_multiboot_tags(uint32_t *tag_pointer);
void setup_open_frames();
void *MMU_pf_alloc(void);
void MMU_pf_free(void *pf);

#endif
