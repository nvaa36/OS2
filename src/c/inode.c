#include "inode.h"

#include <stddef.h>
#include "file.h"
#include "kmalloc.h"
#include "printk.h"
#include "string.h"

struct file *inode_dir_open(unsigned long inode) {
   printk("Cannot open directory.\n");
   return NULL;
}

struct file *inode_file_open(unsigned long inode) {
   // TODO: implement this function.
   return NULL;
}

int readdir_cb_print(const char *name, struct inode *inode, void *p) {
   printk("Found Inode: %s\n", name);
   if (inode->st_mode == MODE_DIR &&
       inode->st_ino != inode->inode_parent->st_ino &&
       inode->st_ino != inode->inode_parent->inode_parent->st_ino) {
      inode->readdir(inode, readdir_cb_print, p);
   }
   return 0;
}

int inode_dir_readdir(struct inode *inode, readdir_cb cb, void *p) {
   int i, j, offset;
   void *cluster;
   struct FAT_dir_ent *dir_ent;
   struct FAT_long_dir_ent *ldir_ent;
   struct ino_metadata metadata;

   int size = read_cluster((struct fat32_super_block *)inode->super_parent,
                           inode->st_ino, &cluster);
   struct inode *child_inode = NULL;
   char *name = NULL;
   int num_inodes = 0;

   for (i = 0; i < size; i += sizeof(struct FAT_dir_ent)) {
      dir_ent = (struct FAT_dir_ent *)(cluster + i);
      if (dir_ent->attr == FAT_ATTR_EXTDIR) {
         printk("EXT entry\n");
         ldir_ent = (struct FAT_long_dir_ent *)(dir_ent);
         offset = EXT_NAME_BYTES * ((ldir_ent->order & EXT_ORD_MASK) - 1);
         if (name == NULL) {
            name = (char *)kmalloc(MAX_NAME_SIZE + 1); // Could be potential for
            // aggresive memory usage
            memset(name, 0, MAX_NAME_SIZE + 1);
         }
         for (j = 0; j < EXT_NAME_BYTES; j++) {
            if (j < EXT_NAME_F_END)
               name[offset + j] = (char)ldir_ent->first[j];
            if (j >= EXT_NAME_F_END && j < EXT_NAME_M_END)
               name[offset + j] = (char)ldir_ent->middle[j - EXT_NAME_F_END];
            if (j >= EXT_NAME_M_END)
               name[offset + j] = (char)ldir_ent->last[j - EXT_NAME_M_END];
         }
      }
      else {
         if (dir_ent->name[0] == 0) {
            ((struct dir_inode *)inode)->child = child_inode;
            return num_inodes;
         }
         memset(&metadata, 0, sizeof(metadata));
         metadata.st_ino = dir_ent->cluster_hi << 16 | dir_ent->cluster_lo;
         if (dir_ent->name[0] != SKIP_NAME && metadata.st_ino != 0) {
            if (dir_ent->attr == FAT_ATTR_DIRECTORY) {
               metadata.st_mode = MODE_DIR;
               child_inode = init_dir_inode(metadata, inode->super_parent,
                                            inode, child_inode,
                                            name ?: dir_ent->name);
            }
            else {
               metadata.st_mode = MODE_FILE;
               child_inode = init_file_inode(metadata, inode->super_parent,
                                            inode, child_inode,
                                            name ?: dir_ent->name);
            }
            readdir_cb_print(name ?: dir_ent->name, child_inode, NULL);
            num_inodes++;
         }
         if (name) {
            kfree(name);
         }
         name = NULL;
      }
   }
   return 0;
}

int inode_file_readdir(struct inode *inode, readdir_cb cb, void *p) {
   printk("Not a directory.\n");
   return -1;
}

int inode_unlink(struct inode *inode, const char *name) {
   return 0;
}

void inode_free(struct inode **inode) {
}

struct inode *init_dir_inode(struct ino_metadata metadata,
                             struct super_block *sb, struct inode *parent,
                             struct inode *next, const char *name) {
   struct dir_inode *inode = (struct dir_inode *)
                             kmalloc(sizeof(struct dir_inode));
   memset(inode, 0, sizeof(struct dir_inode));
   memcpy(inode, &metadata, sizeof(struct ino_metadata));
   inode->inode.super_parent = sb;
   inode->inode.next = next;
   inode->inode.inode_parent = parent;
   inode->inode.name = strdup(name);
   inode->inode.open = inode_dir_open;
   inode->inode.readdir = inode_dir_readdir;
   inode->inode.unlink = inode_unlink;
   inode->inode.free = inode_free;
   return (struct inode *)inode;
}

struct inode *init_file_inode(struct ino_metadata metadata,
                             struct super_block *sb, struct inode *parent,
                             struct inode *next, const char *name) {
   struct inode *inode = (struct inode *)
                             kmalloc(sizeof(struct inode));
   memset(inode, 0, sizeof(struct inode));
   memcpy(inode, &metadata, sizeof(struct ino_metadata));
   inode->super_parent = sb;
   inode->next = next;
   inode->inode_parent = parent;
   inode->name = strdup(name);
   inode->open = inode_file_open;
   inode->readdir = inode_file_readdir;
   inode->unlink = inode_unlink;
   inode->free = inode_free;
   return inode;
}
