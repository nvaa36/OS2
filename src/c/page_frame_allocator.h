#ifndef PAGE_FRAM_ALL_H
#define PAGE_FRAM_ALL_H

#include "printk.h"

#define END_TYPE 0
#define MMAP 6
#define ELF 9

// TODO: determine later after actually getting parsing working
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

mem_region mem_regions[MMAP_ARR_SIZE];
int mem_arr_size;

elf_header elf_headers[ELF_HEADS_SIZE];
int elf_arr_size;

frameList free_frames;

void setup_frame_alloc(uint32_t *tag_pointer);
void parse_multiboot_tags(uint32_t *tag_pointer);
void setup_open_frames();
void *MMU_pf_alloc(void);
void MMU_pf_free(void *pf);

#endif
