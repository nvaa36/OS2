#ifndef FILE_H
#define FILE_H

#include <stdint.h>

#define SEEK_SET 1
#define SEEK_CUR 2

typedef struct inode inode;

typedef long off_t;

enum Mode {READ, WRITE, BOTH};

struct file {
   inode *inode;
   off_t cursor;
   enum Mode mode;
   off_t size;
   int (*close)(struct file **file);
   int (*read)(struct file *file, char *dst, int len);
   int (*write)(struct file *file, char *dst, int len); // Unimplemented
   int (*lseek)(struct file *file, off_t offset, int whence);
   int (*mmap)(struct file *file, void *addr);
};

struct file *init_file(struct inode *inode, enum Mode mode, off_t size);

#endif
