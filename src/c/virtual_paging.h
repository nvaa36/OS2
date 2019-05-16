#ifndef VIRTUAL_PAGING_H
#define VIRTUAL_PAGING_H

#include "constants.h"

#include "page_frame_allocator.h"
#include "string.h"

/*
 * Memory layout:
 * 0 - physical page frames - 1 to 1 mapping
 * 1 - kernel stacks
 * 2-14 - growth area
 * 15 - kernel heap
 * 16+ - user space
*/

#define ONE_GIG 0x40000000
#define STACK_NUM_PAGES 1024

#define BIG_PAGE_ADDR_SHIFT 30
#define ADDR_SHIFT 12

#define ALLOC_ON_DEMAND 1

#define IDENT_IND 0
#define KERN_STACK_IND 1
#define KERN_HEAP_IND 15

#define KERN_HEAP_START 0xF0000000000
#define KERN_STACK_START 0x20000000000

typedef struct {
   uint64_t reserved:3;
   uint64_t pwt:1;
   uint64_t pcd:1;
   uint64_t reserved2:7;
   uint64_t pt4_ba:40;

   uint64_t zero:12;
} CR3_Entry;

typedef struct {
   uint64_t present:1;
   uint64_t rw:1;
   uint64_t su:1;
   uint64_t pwt:1;
   uint64_t pcd:1;
   uint64_t accessed:1;
   uint64_t zero:3;
   uint64_t avl:3;
   uint64_t pt3_ba:40;

   uint64_t avl2:11;
   uint64_t exec_disabled:1;
} PT4_Entry;

typedef struct {
   uint64_t present:1;
   uint64_t rw:1;
   uint64_t su:1;
   uint64_t pwt:1;
   uint64_t pcd:1;
   uint64_t accessed:1;
   uint64_t ign:1;
   uint64_t page_size:1; // 1 for page, 0 for pointing to pt2
   uint64_t zero:1;
   uint64_t avl:3;
   uint64_t pt2_ba:40;

   uint64_t avl2:11;
   uint64_t exec_disabled:1;
} PT3_Entry;

typedef struct {
   uint64_t present:1;
   uint64_t rw:1;
   uint64_t su:1;
   uint64_t pwt:1;
   uint64_t pcd:1;
   uint64_t accessed:1;
   uint64_t zero:3;
   uint64_t avl:3;
   uint64_t pt1_ba:40;

   uint64_t avl2:11;
   uint64_t exec_disabled:1;
} PT2_Entry;

typedef struct {
   uint64_t present:1;
   uint64_t rw:1;
   uint64_t su:1;
   uint64_t pwt:1;
   uint64_t pcd:1;
   uint64_t accessed:1;
   uint64_t dirty:1;
   uint64_t pat:1;
   uint64_t global:1;
   uint64_t avl:3;
   uint64_t pf_ba:40;

   uint64_t avl2:11;
   uint64_t exec_disabled:1;
} PT1_Entry;

typedef struct {
   uint64_t frame_ind:12;
   uint64_t pt1_ind:9;
   uint64_t pt2_ind:9;
   uint64_t pt3_ind:9;
   uint64_t pt4_ind:9;
   uint64_t sign_ext:16;
} virtual_address;

// Kernel page table functions. Most are wrappers for the normal page table
// functions that pass in the kernel pt4.
void setup_kernel_page_tables();
void set_page_kern_frame(void *address);

// Allocates a kernel stack of the default size of 512 pages or 2 MB
void *MMU_alloc_kern_stack();
void MMU_free_kern_stack(void *);

// Functions to allocate pages from the kernel heap.
void *MMU_alloc_kern_page();
void *MMU_alloc_kern_pages(int num);
void MMU_free_kern_page(void *address);
void MMU_free_kern_pages(void *address, int num);

// New process page table functions.
PT4_Entry *setup_page_tables();
void MMU_free_page(PT4_Entry *, void *);
void MMU_free_pages(PT4_Entry *, void *, int num);
// Functions to allocate pages from the user heap.
/* void *MMU_alloc_page();
void *MMU_alloc_pages(int num);*/

// Gets the pt1 entry of the address given.
PT1_Entry *get_pt1_entry(PT4_Entry *pt4, void *address);
// Assigns a new page frame to an address given the address, sets all the
// present bits along the way and allocates the needed page tables. Used in the
// page fault handler.
void set_page_frame_pt1e(PT4_Entry *pt4, PT1_Entry *pt1e);
void set_page_frame(PT4_Entry *pt4, void *address);

// Functions for interacting with the CR registers.
void set_cr3(PT4_Entry *pt4);
void *get_cr3();
void *get_cr2();
#endif
