#include "file.h"

#include "inode.h"
#include "kmalloc.h"
#include "printk.h"

// Returns 0 on success and -1 on failure.
int file_close(struct file **file) {
   kfree(*file);
   *file = NULL;
   return 0;
}

int file_read(struct file *file, char *dst, int len) {
   int bytes_read = file->inode->read(file->inode, file->cursor, len, dst);

   if (bytes_read < 0) {
      printk("Problem reading file.\n");
      return -1;
   }

   file->cursor += bytes_read;
   return bytes_read;
}

int file_read_fail(struct file *file, char *dst, int len) {
   printk("Cannot read a write-only file.\n");
   return -1;
}

int file_write(struct file *file, char *dst, int len) {
   printk("Unimplemented.\n");
   return len;
}

int file_write_fail(struct file *file, char *dst, int len) {
   printk("Cannot write a read-only file.\n");
   return -1;
}

int file_lseek(struct file *file, off_t offset, int whence) {
   if (whence == SEEK_SET) {
      if (offset >= file->size) {
         printk("Cannot lseek past the end of the file.\n");
         return -1;
      }

      file->cursor = offset;
      return 0;
   }

   if (file->cursor + offset >= file->size) {
      printk("Cannot lseek past the end of the file.\n");
      return -1;
   }

   file->cursor += offset;
   return 0;
}

int file_mmap(struct file *file, void *addr) {
   printk("Unimplemented.\n");
   return 0;
}

struct file *init_file(struct inode *inode, enum Mode mode, off_t size) {
   struct file *file;

   file = (struct file *)kmalloc(sizeof(struct file));
   file->inode = inode;
   file->cursor = 0;
   file->mode = mode;
   file->size = size;
   file->close = file_close;
   file->read = mode == WRITE ? file_read_fail : file_read;
   file->write = mode == READ ? file_write_fail : file_write;
   file->lseek = file_lseek;
   file->mmap = file_mmap;

   return file;
}
