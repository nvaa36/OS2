#include "filesystems.h"

#include "inode.h"
#include "kmalloc.h"
#include "printk.h"
#include <stddef.h>
#include "string.h"

struct fs_probe_node *probe_head, *probe_tail;

void add_probe(FS_detect_cb cb) {
   struct fs_probe_node *node = (struct fs_probe_node *)
                                kmalloc(sizeof(struct fs_probe_node));
   memset(node, 0, sizeof(*node));
   node->probe = cb;

   if (!probe_head) {
      probe_head = node;
      probe_tail = node;
   }
   else {
      probe_tail->next = node;
      probe_tail = node;
   }
}

uint64_t clusternum_to_lba(struct fat32_super_block *this,
                           uint32_t cluster_num) {
   return this->cluster_start_offset + cluster_num * this->sectors_per_cluster
          - (2 * this->sectors_per_cluster);
}

struct inode *read_inode(struct super_block *sb, unsigned long inode_num) {
   return NULL;
}

int read_cluster(struct fat32_super_block *sb, unsigned long inode_num,
                   void **buffer) {
   int i, bytes_read;
   char *block = kmalloc(BLOCK_SIZE * sb->sectors_per_cluster);
   bytes_read = 0;
   block_dev *dev = sb->super_block.dev;
   for (i = 0; i < sb->sectors_per_cluster; i++) {
      bytes_read += dev->read_block(dev, clusternum_to_lba(sb, inode_num) +
                                    i * BLOCK_SIZE, block + i * BLOCK_SIZE);
   }
   *buffer = block;
   return bytes_read;
}

uint32_t get_next_cluster(struct fat32_super_block *sb, uint64_t inode_num) {
   uint32_t next_inode_num = sb->FAT[inode_num];
   if (next_inode_num > MAX_FAT_NUM || next_inode_num == 0) {
      return 0;
   }
   return next_inode_num;
}

ino_t get_ino_of_offset(struct fat32_super_block *sb, ino_t start_cluster,
                        off_t offset) {
   int i;
   ino_t cur_cluster = start_cluster;

   for (i = 0; i < offset / (sb->sectors_per_cluster * BLOCK_SIZE); i++) {
      cur_cluster = get_next_cluster(sb, cur_cluster);
   }

   return cur_cluster;
}

struct inode *inode_for_path(const char *p, struct inode *cwd) {
   char *tmp, *orig_path;
   struct find_inode_info *tofind;

   struct inode *cur_inode = cwd;
   char *path = strdup(p);

   orig_path = path;
   tofind = (struct find_inode_info *)kmalloc(sizeof(*tofind));
   memset(tofind, 0, sizeof(*tofind));

   do {
      tmp = strtok(path, '/');
      tofind->name = path;
      tofind->inode = NULL;
      //printk("Looking for: %s in dir: %s\n", path, cur_inode->name);
      cur_inode->readdir(cur_inode, readdir_cb_find_inode, tofind);

      if (tofind->inode == NULL) {
         printk("Could not find file: %s in dir: %s\n", path, cur_inode->name);
         kfree(orig_path);
         return NULL;
      }

      cur_inode = tofind->inode;
      path = tmp;
   } while (tmp);

   kfree(orig_path);
   return cur_inode;
}

// Returns NULL if not able to parse FAT32 (e.g. if it is not FAT32)
struct super_block *fat32_probe(block_dev *dev) {
   struct fat32 fat32;
   int i;
   struct ino_metadata metadata;
   struct fat32_super_block *sb = (struct fat32_super_block *)
                            kmalloc(sizeof(struct fat32_super_block));
   memset(sb, 0, sizeof(*sb));

   dev->read_block(dev, BPB_OFF, &fat32);

   if (fat32.signature != FAT_SIG1 && fat32.signature != FAT_SIG2) {
      printk("Not a FAT\n");
      return NULL;
   }

   if (fat32.bpb.bytes_per_sector != BLOCK_SIZE) {
      printk("Block size not 512, %d instead.\n", fat32.bpb.bytes_per_sector);
      return NULL;
   }

   sb->super_block.dev = dev;
   sb->super_block.type = strdup("fat32");
   sb->super_block.name = strdup("main");
   sb->sectors_per_cluster = fat32.bpb.sectors_per_cluster ?:
                             fat32.bpb.large_sector_count;
   sb->tot_sectors = fat32.bpb.tot_sectors ?: fat32.sectors_per_fat;
   sb->sectors_per_fat = fat32.bpb.num_sectors_per_fat ?:
                         fat32.sectors_per_fat;
   sb->cluster_start_offset = fat32.bpb.reserved_sectors + fat32.bpb.num_fats *
                              sb->sectors_per_fat;
   memset(&metadata, 0, sizeof(metadata));
   metadata.st_ino = fat32.root_cluster_number;
   metadata.st_mode = MODE_DIR;
   sb->super_block.root_inode = init_dir_inode(metadata, (struct super_block *)sb,
                         NULL, NULL, "root");

   strncpy(sb->label, fat32.label, 11);
   sb->FAT = (uint32_t *)kmalloc(sb->sectors_per_fat * BLOCK_SIZE);
   for (i = 0; i < sb->sectors_per_fat; i++) {
      dev->read_block(dev, fat32.bpb.reserved_sectors + i,
                      (void *)sb->FAT + i * BLOCK_SIZE);
   }

   return (struct super_block *)sb;
}

void FS_register(FS_detect_cb probe) {
   add_probe(probe);
}

struct super_block *FS_probe(block_dev *dev) {
   struct super_block *sb = probe_head->probe(dev);
   return sb;
}

struct super_block *setup_filesystem(block_dev *dev) {
   probe_head = NULL;
   probe_tail = NULL;

   FS_register(fat32_probe);

   return FS_probe(dev);
}

