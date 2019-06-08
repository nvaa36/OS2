#include "elf_loader.h"

#include "kmalloc.h"
#include "printk.h"
#include "string.h"
#include "virtual_paging.h"

extern PT4_Entry *kern_pt4;

// TODO: Is there a safer way to do this?
void load_segments(struct file *binary, uint64_t prog_num_entries,
                   struct ELF64ProgHeader *prog_table) {
   int i;
   struct ELF64ProgHeader entry;

   for (i = 0; i < prog_num_entries; i++) {
      entry = prog_table[i];
      if (entry.file_size != entry.mem_size) {
         printk("File and memory size are different.\n");
         continue;
      }

      if (entry.load_addr < USER_SPACE_START) {
         printk("Entry not in userspace.\n");
         continue;
      }

      // TODO: change when you have another page table for user.
      MMU_alloc_user_prog(kern_pt4, (void *)entry.load_addr, entry.file_size);
      binary->read(binary, (char *)entry.load_addr, entry.file_size);
   }
}

void *parse_elf(struct file *binary) {
   int prog_num_entries;
   struct ELF64Header header;
   struct ELF64ProgHeader *prog_table;
   void *entry_point = NULL;

   binary->read(binary, (char *)&header, sizeof(header));

   if (header.common.magic[0] != MAGIC_START ||
       strncmp((char *)header.common.magic + 1, ELF_MAGIC, LEN_ELF_MAGIC)) {
      printk("Not an ELF exectuable.\n");
      return NULL;
   }

   if (header.common.bitsize != BIT_SIZE_64) {
      printk("Not 64 bit.\n");
      return NULL;
   }

   if (header.common.abi && header.common.abi!= X86_64) {
      printk("Not x86-64 bit %x instead.\n", header.common.abi);
      return NULL;
   }

   if (header.common.exe_type != EXE_TYPE_EXEC) {
      printk("Not exectuable.\n");
      return NULL;
   }

   entry_point = (void *)header.prog_entry_pos;

   prog_num_entries = header.prog_ent_num;
   prog_table = (struct ELF64ProgHeader *)kmalloc(prog_num_entries *
                                                  header.prog_ent_size);
   
   binary->lseek(binary, header.prog_table_pos, SEEK_SET);
   binary->read(binary, (char *)prog_table, prog_num_entries *
                                            header.prog_ent_size);
   load_segments(binary, prog_num_entries, prog_table);

   kfree(prog_table);

   return entry_point;
}

void load_test_func(struct super_block *sb) {
   struct inode *file_inode;
   struct file *binary;
   void *entry_point;

   file_inode = inode_for_path("boot/test_files.bin", sb->root_inode);
   binary = file_inode->open(file_inode, READ);
   entry_point = parse_elf(binary);

   PROC_create_user_thread((kproc_t)entry_point, NULL);
   printk("%p\n", entry_point);
}
