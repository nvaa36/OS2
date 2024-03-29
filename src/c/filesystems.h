#ifndef FILESYSTEMS_H
#define FILESYSTEMS_H

#include "block_device.h"
#include "file.h"
#include "inode.h"

#define BPB_OFF 0

#define FAT_SIG1 0x28
#define FAT_SIG2 0x29

#define MODE_FILE 0x1
#define MODE_DIR 0x2

#define MAX_FAT_NUM 0x0FFFFFF8

struct super_block {
   struct inode *root_inode;
   block_dev *dev;
   struct inode *(*read_inode)(struct super_block*, unsigned long inode_num);
      // Currently unimplemented
   int (*sync_fs)(struct super_block*); // Note: Unimplemented
   void (*put_super) (struct super_block *); // Note: Unimplemented
   const char *name, *type;
};

struct fat32_super_block {
   struct super_block super_block;
   uint32_t *FAT;
   uint8_t sectors_per_cluster;
   uint32_t tot_sectors;
   uint32_t sectors_per_fat;
   uint64_t cluster_start_offset;
   char label[11];
};

struct fat_bpb {
   uint8_t jmp[3];
   char oem_id[8];
   uint16_t bytes_per_sector;
   uint8_t sectors_per_cluster;
   uint16_t reserved_sectors;
   uint8_t num_fats;
   uint16_t num_dirents;
   uint16_t tot_sectors;
   uint8_t mdt;
   uint16_t num_sectors_per_fat;
   uint16_t sectors_per_track;
   uint16_t num_heads;
   uint32_t num_hidden_sectors;
   uint32_t large_sector_count;
} __attribute__((packed));

struct fat32 {
   struct fat_bpb bpb;
   uint32_t sectors_per_fat;
   uint16_t flags;
   uint8_t major_vers;
   uint8_t minor_vers;
   uint32_t root_cluster_number;
   uint16_t fsinfo_sector;
   uint16_t backup_boot_sector;
   uint8_t zero[12];
   uint8_t drive_num;
   uint8_t nt_flags;
   uint8_t signature;
   uint32_t serial_num;
   char label[11];
   char sys_id[8];
   uint8_t boot_code[420];
   uint8_t boot_sig[2];
} __attribute__((packed));

struct FATDirEnt {
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

typedef struct super_block *(*FS_detect_cb)(block_dev *dev);
struct super_block *setup_filesystem();

struct fs_probe_node {
   FS_detect_cb probe;
   struct fs_probe_node *next;
};

struct super_block *FS_probe(block_dev *dev);
uint64_t clusternum_to_lba(struct fat32_super_block *this,
                           uint32_t cluster_num);
int read_cluster(struct fat32_super_block *sb, unsigned long inode_num,
                   void **buffer);
uint32_t get_next_cluster(struct fat32_super_block *sb, uint64_t inode_num);
ino_t get_ino_of_offset(struct fat32_super_block *sb, ino_t start_cluster,
                        off_t offset);
struct inode *inode_for_path(const char *path, struct inode *cwd);

#endif
