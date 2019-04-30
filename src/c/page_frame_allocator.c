#include "page_frame_allocator.h"

void setup_frame_alloc(uint32_t *tag_pointer) {
   parse_multiboot_tags(tag_pointer);
   setup_open_frames();
}

void parse_multiboot_tags(uint32_t *tag_pointer) {
   char done = 0;
   int i, m_ind = 0;
   uint32_t type, size, actual_size, entry_size, num_entries;
   uint64_t start, length;

   // clear the arrays
   memset(mem_regions, 0, sizeof(mem_regions));
   memset(elf_headers, 0, sizeof(elf_headers));

   // the fixed header
   tag_pointer++;
   tag_pointer++;
   while (!done) {
      type = *(tag_pointer++);
      size = *(tag_pointer++);
      // The actual size, 8-byte aligned
      actual_size = ((size + 7) / 8) * 8;
      printk("type: %x, size: %x\n", type, size);
      switch (type) {
         case END_TYPE:
            done = 1;
            break;
         case MMAP:
            entry_size = *(tag_pointer++);
            // throw away version
            tag_pointer++;
            for (i = 0; i < (size - MMAP_HEADER_SIZE) / entry_size; i++) {
               start = (uint64_t)*(tag_pointer++) << 32;
               start |= *(tag_pointer++);
               length = (uint64_t)*(tag_pointer++) << 32;
               length |= *(tag_pointer++);
               type = *(tag_pointer++);
               if (type == 1) {
                  mem_regions[m_ind].start = start;
                  mem_regions[m_ind].length = length;
                  m_ind++;
               }
               // throw away the reserved bytes
               tag_pointer++;
            }
            mem_arr_size = m_ind;
            if (size != actual_size) {
               // Make it 8-byte aligned
               tag_pointer++;
            }
            break;
         case ELF:
            num_entries = *(tag_pointer++);
            entry_size = *(tag_pointer++);
            // throw away str table ind
            tag_pointer++;
            for (i = 0; i < num_entries; i++) {
               // throw away 16 bytes of info
               tag_pointer += 4;
               elf_headers[i].address = (uint64_t)*(tag_pointer++) << 32;
               elf_headers[i].address |= *(tag_pointer++);
               // throw away 8 bytes of info
               tag_pointer += 2;
               elf_headers[i].size = (uint64_t)*(tag_pointer++) << 32;
               elf_headers[i].size |= *(tag_pointer++);
               // throw away 24 more bytes of data
               tag_pointer += 6;
            }
            elf_arr_size = i;
            if (size != actual_size) {
               // Make it 8-byte aligned
               tag_pointer++;
            }
            break;
         default:
            for (i = 8; i < actual_size; i += 4) {
               tag_pointer++;
            }
            break;
      }
   }
}

void setup_open_frames() {
   int i, j;
   uint64_t elf_size, elf_addr, elf_end_addr;
   uint64_t mem_addr, mem_size, mem_end_addr;

   for (i = 0; i < elf_arr_size; i++) {
      elf_addr = elf_headers[i].address;
      elf_size = elf_headers[i].size;
      if (!elf_size) {
         continue;
      }
      elf_end_addr = elf_addr + elf_size;
      for (j = 0; j < mem_arr_size; j++) {
         mem_addr = mem_regions[j].start;
         mem_size = mem_regions[j].length;
         mem_end_addr = mem_addr + mem_size;
         if (elf_addr >= mem_addr && elf_addr < mem_end_addr) {
            // If the start of the kernel section is in the mem segment
            if (elf_end_addr <= mem_end_addr) {
               // If the kernel section is in the mem section
               // Split the mem section into 2 parts and add the 2nd part to
               // the end of the list.
               mem_regions[j].length = elf_addr - mem_addr;
               if (mem_end_addr - elf_end_addr >= PAGE_FRAME_SIZE) {
                  mem_regions[mem_arr_size].start = elf_end_addr;
                  mem_regions[mem_arr_size].length = mem_end_addr - elf_end_addr;
                  mem_arr_size++;
               }
            }
            else {
               // Only part of the section is encompassed by the kernel
               mem_regions[j].length = elf_addr - mem_addr;
            }
         }
         else if (elf_end_addr >= mem_addr && elf_end_addr <= mem_end_addr) {
            mem_regions[j].start = elf_addr;
            mem_regions[j].length = mem_end_addr - elf_end_addr;
         }

         if (mem_regions[j].length < PAGE_FRAME_SIZE) {
            mem_regions[j].start = mem_regions[mem_arr_size - 1].start;
            mem_regions[j].length = mem_regions[mem_arr_size - 1].length;
            mem_arr_size -= 1;
         }
      }
   }
   free_frames.head = NULL;
}

void *MMU_pf_alloc() {
   uint64_t *tmp;
   if (free_frames.head != NULL) {
      tmp = free_frames.head;
      free_frames.head = (uint64_t *)*free_frames.head;
      return tmp;
   }

   if (mem_arr_size == 0) {
      printk("OOM!!!!!\n");
      asm("hlt");
   }

   tmp = (uint64_t *)mem_regions[0].start;
   mem_regions[0].start += PAGE_FRAME_SIZE;
   mem_regions[0].length -= PAGE_FRAME_SIZE;

   if (mem_regions[0].length < PAGE_FRAME_SIZE) {
      mem_regions[0].start = mem_regions[mem_arr_size - 1].start;
      mem_regions[0].length = mem_regions[mem_arr_size - 1].length;
      mem_arr_size -= 1;
   }

   return tmp;
}

void MMU_pf_free(void *pf) {
   *free_frames.tail = (uint64_t)pf;
   free_frames.tail = (uint64_t *)pf;
}
