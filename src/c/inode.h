#ifndef INODE_H
#define INODE_H

#include "filesystems.h"

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

struct inode *init_dir_inode(struct ino_metadata metadata,
                             struct super_block *sb, struct inode *parent,
                             struct inode *next, const char *name);
struct inode *init_file_inode(struct ino_metadata metadata,
                             struct super_block *sb, struct inode *parent,
                             struct inode *next, const char *name);

int readdir_cb_print(const char *name, struct inode *inode, void *p);

#endif
