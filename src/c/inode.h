#ifndef INODE_H
#define INODE_H

#include <stdint.h>
#include "file.h"

#define FAT_ATTR_READ_ONLY 0x01
#define FAT_ATTR_HIDDEN 0x02
#define FAT_ATTR_SYSTEM 0x04
#define FAT_ATTR_VOLUME_ID 0x08
#define FAT_ATTR_DIRECTORY 0x10
#define FAT_ATTR_ARCHIVE 0x20
#define FAT_ATTR_EXTDIR (FAT_ATTR_READ_ONLY | FAT_ATTR_HIDDEN | \
                      FAT_ATTR_SYSTEM | FAT_ATTR_VOLUME_ID)

#define EXT_NAME_F_END 5
#define EXT_NAME_M_END 11
#define SKIP_NAME 0xE5
#define EXT_ORD_MASK 0x3F
#define END_EXT_MASK 0x40
#define EXT_NAME_BYTES 13
#define MAX_NAME_SIZE END_EXT_MASK * EXT_NAME_BYTES

typedef unsigned long ino_t;
typedef unsigned int mode_t;
typedef unsigned int uid_t;
typedef unsigned int gid_t;
typedef long off_t;

typedef struct super_block super_block;
typedef struct inode inode;

typedef int (*readdir_cb)(const char *, inode *, void *);

struct ino_metadata {
   ino_t st_ino;
   mode_t st_mode;
   uid_t st_uid;
   gid_t st_gid;
   off_t st_size;
};

struct inode {
   ino_t st_ino;
   mode_t st_mode;
   uid_t st_uid;
   gid_t st_gid;
   off_t st_size;
   super_block *super_parent;
   struct inode *inode_parent, *next;
   char *name;
   struct file *(*open)(struct inode *inode, enum Mode mode);
   int (*readdir)(struct inode *inode, readdir_cb cb, void *p);
   int (*read)(struct inode *inode, int offset, int len, char *dst);
   int (*unlink)(struct inode *inode, const char *name);
   void (*free)(struct inode **inode);
};

struct dir_inode {
   struct inode inode;
   struct inode *child;
};

struct FAT_dir_ent {
   char name[11];
   uint8_t attr;
   uint8_t nt;
   uint8_t ct_tenths;
   uint16_t ct;
   uint16_t cd;
   uint16_t ad;
   uint16_t cluster_hi;
   uint16_t mt;
   uint16_t md;
   uint16_t cluster_lo;
   uint32_t size;
} __attribute__((packed));

struct FAT_long_dir_ent {
   uint8_t order;
   uint16_t first[5];
   uint8_t attr;
   uint8_t type;
   uint8_t checksum;
   uint16_t middle[6];
   uint16_t zero;
   uint16_t last[2];
} __attribute__((packed));

struct find_inode_info {
   const char *name;
   struct inode *inode;
};

struct inode *init_dir_inode(struct ino_metadata metadata,
                             super_block *sb, struct inode *parent,
                             struct inode *next, const char *name);
struct inode *init_file_inode(struct ino_metadata metadata,
                             super_block *sb, struct inode *parent,
                             struct inode *next, const char *name);

int readdir_cb_test(const char *name, struct inode *inode, void *p);
int readdir_cb_find_inode(const char *name, struct inode *inode, void *p);

#endif
