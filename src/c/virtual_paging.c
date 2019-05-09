#include "virtual_paging.h"

PT4_Entry *kern_pt4;
void *kern_heap_mem_addr;
void *kern_stack_mem_addr;

void setup_kernel_page_tables() {
   kern_pt4 = setup_page_tables();
}

void set_page_kern_frame(void *address) {
   set_page_frame(kern_pt4, address);
}

void *MMU_alloc_kern_stack() {
   return MMU_alloc_kern_pages(STACK_NUM_PAGES);
}

// Allocates the virtual space and creates page table entries, but doesn't
// allocate a frame.
void *MMU_alloc_kern_page() {
   void *virt_addr = (void *)kern_heap_mem_addr;
   PT1_Entry *pt1e = get_pt1_entry(kern_pt4, virt_addr);

   pt1e->avl = ALLOC_ON_DEMAND;
   kern_heap_mem_addr += PAGE_FRAME_SIZE;
   return virt_addr;
}

void *MMU_alloc_kern_pages(int num) {
   void *virt_addr = (void *)kern_heap_mem_addr;
   PT1_Entry *pt1e;
   int i;

   for (i = 0; i < num; i++) {
      pt1e = get_pt1_entry(kern_pt4, virt_addr + i * PAGE_FRAME_SIZE);
      pt1e->avl = ALLOC_ON_DEMAND;
   }

   kern_heap_mem_addr += PAGE_FRAME_SIZE * num;

   return virt_addr;
}

void MMU_free_kern_page(void *address) {
   MMU_free_page(kern_pt4, address);
}

void MMU_free_kern_pages(void *address, int num) {
   MMU_free_pages(kern_pt4, address, num);
}

static void init_identity_frames(PT4_Entry *pt4) {
   int i;
   PT3_Entry *pt3;

   pt3 = (PT3_Entry *)MMU_pf_alloc();

   memset(pt3, 0, PAGE_FRAME_SIZE);

   pt4[0].present = 1;
   pt4[0].rw = 1;
   pt4[0].pt3_ba = (uint64_t)pt3 >> ADDR_SHIFT;

   // Setup the first entry in pt4 to be an identity mapping. All pt3 entries
   // in the corresponding pt3s map directly to a page in memory.
   for (i = 0; i < PAGE_FRAME_SIZE / sizeof(PT3_Entry); i++) {
      pt3[i].present = 1;
      pt3[i].page_size = 1;
      pt3[i].rw = 1;
      pt3[i].pt2_ba = i * ONE_GIG >> BIG_PAGE_ADDR_SHIFT;
   }
}

// Returns the pointer to p4
// TODO: currently only works for the kernel page table.
PT4_Entry *setup_page_tables() {
   PT4_Entry *pt4 = (PT4_Entry *)MMU_pf_alloc();

   memset(pt4, 0, PAGE_FRAME_SIZE);

   init_identity_frames(pt4);

   kern_heap_mem_addr = (void *)KERN_HEAP_START;
   kern_stack_mem_addr = (void *)KERN_STACK_START;
   set_cr3(pt4);
   return pt4;
}

// Walks the page table of the address and allocates new tables if need be.
// Returns the pt1 entry at the end.
PT1_Entry *get_pt1_entry(PT4_Entry *pt4, void *address) {
   PT4_Entry *pt4e;
   PT3_Entry *pt3e;
   PT2_Entry *pt2e;
   PT1_Entry *pt1e;
   virtual_address *addr = (virtual_address *)(&address);

   pt4e = &pt4[addr->pt4_ind];

   if (!pt4e->present) {
      pt3e = (PT3_Entry *)MMU_pf_alloc();
      memset(pt3e, 0, sizeof(PAGE_FRAME_SIZE));
      pt4e->pt3_ba = (uint64_t)pt3e >> ADDR_SHIFT;
      pt4e->present = 1;
      pt4e->rw = 1;
   }

   pt3e = &((PT3_Entry *)((uint64_t)pt4e->pt3_ba << ADDR_SHIFT))
          [addr->pt3_ind];

   if (!pt3e->present) {
      pt2e = (PT2_Entry *)MMU_pf_alloc();
      memset(pt2e, 0, sizeof(PAGE_FRAME_SIZE));
      pt3e->present = 1;
      pt3e->pt2_ba = (uint64_t)pt2e >> ADDR_SHIFT;
      pt3e->rw = 1;
   }

   pt2e = &((PT2_Entry *)((uint64_t)pt3e->pt2_ba << ADDR_SHIFT))
          [addr->pt2_ind];

   if (!pt2e->present) {
      pt1e = (PT1_Entry *)MMU_pf_alloc();
      memset(pt1e, 0, sizeof(PAGE_FRAME_SIZE));
      pt2e->present = 1;
      pt2e->pt1_ba = (uint64_t)pt1e >> ADDR_SHIFT;
      pt2e->rw = 1;
   }

   return &((PT1_Entry *)((uint64_t)pt2e->pt1_ba << ADDR_SHIFT))
          [addr->pt1_ind];
}

// Assigns a new page frame to the given pt1 entry.
void set_page_frame_pt1e(PT4_Entry *pt4, PT1_Entry *pt1e) {
   void *frame = MMU_pf_alloc();
   memset(frame, 0, sizeof(PAGE_FRAME_SIZE));

   if (!pt1e->present) {
      pt1e->present = 1;
      pt1e->rw = 1;
      pt1e->avl = 0;
      pt1e->pf_ba = (uint64_t)frame >> ADDR_SHIFT;
   }
}

// Assigns a new page frame to an address given the address, sets all the
// present bits along the way and allocates the needed page tables. Used in the
// page fault handler.
void set_page_frame(PT4_Entry *pt4, void *address) {
   PT1_Entry *pt1e = get_pt1_entry(pt4, address);
   void *frame = MMU_pf_alloc();
   memset(frame, 0, sizeof(PAGE_FRAME_SIZE));

   if (!pt1e->present) {
      pt1e->present = 1;
      pt1e->avl = 0;
      pt1e->pf_ba = (uint64_t)frame >> ADDR_SHIFT;
   }
}

// This function must be called with a valid address with a page frame
// attached. Returns without doing anything is the address is invalid.
void MMU_free_page(PT4_Entry *pt4, void *address) {
   PT4_Entry *pt4e;
   PT3_Entry *pt3e;
   PT2_Entry *pt2e;
   PT1_Entry *pt1e;
   void *frame;
   virtual_address *addr = (virtual_address *)(&address);

   pt4e = &pt4[addr->pt4_ind];

   if (!pt4e->present) {
      printk("Tried to free invalid page %p.\n", address);
      return;
   }

   pt3e = &((PT3_Entry *)((uint64_t)pt4e->pt3_ba << ADDR_SHIFT))
          [addr->pt3_ind];

   if (!pt3e->present) {
      printk("Tried to free invalid page %p.\n", address);
      return;
   }

   pt2e = &((PT2_Entry *)((uint64_t)pt3e->pt2_ba << ADDR_SHIFT))
          [addr->pt2_ind];

   if (!pt2e->present) {
      printk("Tried to free invalid page %p.\n", address);
      return;
   }

   pt1e = &((PT1_Entry *)((uint64_t)pt2e->pt1_ba << ADDR_SHIFT))
          [addr->pt1_ind];

   if (!pt1e->present) {
      printk("Tried to free invalid page %p.\n", address);
      return;
   }

   frame = (void *)((uint64_t)pt1e->pf_ba << ADDR_SHIFT);

   pt1e->present = 0;
   
   MMU_pf_free(frame);
}

// This function must be called with a valid address with a page frame
// attached to every address in all of the pages.
void MMU_free_pages(PT4_Entry *pt4, void *address, int num) {
   uint64_t i;

   for (i = 0; i < num; i++) {
      MMU_free_page(pt4, address + i * PAGE_FRAME_SIZE);
   }

   MMU_free_page(pt4, address + i * PAGE_FRAME_SIZE - 1);
}

void set_cr3(PT4_Entry *pt4) {
   asm("movq %0, %%cr3" : : "r"(pt4));
}

void *get_cr3() {
   void *cr3;

   asm("movq %%cr3, %0" : "=r"(cr3));

   return cr3;
}

void *get_cr2() {
   void *cr2;

   asm("movq %%cr2, %0" : "=r"(cr2));

   return cr2;
}
