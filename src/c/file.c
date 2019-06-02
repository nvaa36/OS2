#include "file.h"

#include "inode.h"
#include "kmalloc.h"
#include "printk.h"

// Returns 0 on success and -1 on failure.
int close(struct file **file) {
   kfree(*file);
   *file = NULL;
   return 0;
}

int read(struct file *file, char *dst, int len) {
   int bytes_read = file->inode->read(file->inode, file->cursor, len, dst);

   if (bytes_read <= 0) {
      printk("Problem reading file.\n");
      return -1;
   }

   file->cursor += bytes_read;
   return bytes_read;
}

int read_fail(struct file *file, char *dst, int len) {
   printk("Cannot read a write-only file.\n");
   return -1;
}

int write(struct file *file, char *dst, int len) {
   printk("Unimplemented.\n");
   return len;
}

int write_fail(struct file *file, char *dst, int len) {
   printk("Cannot write a read-only file.\n");
   return -1;
}

int lseek(struct file *file, off_t offset) {
   if (file->cursor + offset >= file->size) {
      printk("Cannot lseek past the end of the file.\n");
      return -1;
   }

   file->cursor += offset;
   return 0;
}

int mmap(struct file *file, void *addr) {
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
   file->close = close;
   file->read = mode == WRITE ? read_fail : read;
   file->write = mode == READ ? write_fail : write;
   file->lseek = lseek;
   file->mmap = mmap;

   return file;
}
