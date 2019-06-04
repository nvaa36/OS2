#include "inode.h"

#include <stddef.h>
#include "filesystems.h"
#include "kmalloc.h"
#include "printk.h"
#include "string.h"

#include "md5.h"

struct file *inode_dir_open(struct inode *inode, enum Mode mode) {
   printk("Cannot open directory.\n");
   return NULL;
}

struct file *inode_file_open(struct inode *inode, enum Mode mode) {
   return init_file(inode, mode, inode->st_size);
}

// This callback will look for the file with the name in the inode_find struct
// and populate the inode field accordingly.
int readdir_cb_find_inode(const char *name, struct inode *inode, void *p) {
   struct find_inode_info *info = (struct find_inode_info *)p;

   //printk("Processing: %s\n", name);
   if (strlen(name) == strlen(info->name) && 
       !strncmp(name, info->name, strlen(name))) {
      //printk("Found node %s\n", name);
      info->inode = inode;
   }

   return 0;
}

int readdir_cb_test(const char *name, struct inode *inode, void *p) {
   char buffer[BLOCK_SIZE * 40 + 1];
   struct file *file;
   int bytes_read;

   //printk("Found Inode: %s\n", name);
   if (inode->st_mode == MODE_DIR &&
       inode->st_ino != inode->inode_parent->st_ino &&
       inode->st_ino != inode->inode_parent->inode_parent->st_ino) {
      inode->readdir(inode, readdir_cb_test, p);
   }

   if (!strncmp(name, "tester.txt", strlen("tester.txt"))) {
      file = inode->open(inode, READ);
      //file->lseek(file, 39);
      while ((bytes_read = file->read(file, buffer, BLOCK_SIZE * 40))) {
         buffer[bytes_read] = '\0';
         run_md5(buffer);
         printk((char *)buffer);
      }
      file->close(&file);
   }
   return 0;
}

int inode_dir_readdir(struct inode *inode, readdir_cb cb, void *p) {
   int i, j, offset, size;
   uint32_t inode_num;
   void *cluster;
   struct FAT_dir_ent *dir_ent;
   struct FAT_long_dir_ent *ldir_ent;
   struct ino_metadata metadata;

   struct inode *child_inode = NULL;
   char *name = NULL;
   int num_inodes = 0;
   inode_num = inode->st_ino;

   do {
      size = read_cluster((struct fat32_super_block *)inode->super_parent,
                          inode_num, &cluster);
      for (i = 0; i < size; i += sizeof(struct FAT_dir_ent)) {
         dir_ent = (struct FAT_dir_ent *)(cluster + i);
         if (dir_ent->attr == FAT_ATTR_EXTDIR) {
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
            metadata.st_size = dir_ent->size;
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
               cb(name ?: dir_ent->name, child_inode, p);
               num_inodes++;
            }
            if (name) {
               kfree(name);
            }
            name = NULL;
         }
      }
      kfree(cluster);
   } while ((inode_num = get_next_cluster(
              (struct fat32_super_block *)inode->super_parent, inode_num)));
   return 0;
}

int inode_file_readdir(struct inode *inode, readdir_cb cb, void *p) {
   printk("Not a directory.\n");
   return -1;
}

int inode_file_read(struct inode *inode, int offset, int len, char *dst) {
   int i;
   char *buffer;
   ino_t cur_cluster;

   int buffer_off = 0;
   int bytes_in_buffer = 0;
   struct fat32_super_block *sb = (struct fat32_super_block *)
                                  inode->super_parent;

   if (offset > inode->st_size) {
      printk("Offset past end of file.\n");
      return 0;
   }

   if (len > inode->st_size - offset) {
      // If there are not len more bytes in the file, simply read the rest.
      len = inode->st_size - offset;
   }

   cur_cluster = get_ino_of_offset(sb, inode->st_ino, offset);
   bytes_in_buffer = read_cluster(sb, cur_cluster, (void **)&buffer);

   for (i = 0, buffer_off = offset % (sb->sectors_per_cluster * BLOCK_SIZE);
        i < len; i++, buffer_off++) {
      if (buffer_off == bytes_in_buffer) {
         kfree(buffer);
         cur_cluster = get_next_cluster(sb, cur_cluster);
         if (!cur_cluster) {
            // There is no next cluster, we have reached the end.
            printk("End of file.\n");
            return i;
         }
         bytes_in_buffer = read_cluster(sb, cur_cluster, (void **)&buffer);
         if (!bytes_in_buffer) {
            printk("End of file.\n");
            return i;
         }
         buffer_off = 0;
      }
      dst[i] = buffer[buffer_off];
   }
   kfree(buffer);
   return len;
}

int inode_dir_read(struct inode *inode, int offset, int len, char *dst) {
   printk("Cannot read directory.\n");
   return -1;
}

int inode_unlink(struct inode *inode, const char *name) {
   // Unsupported
   printk("Unimplemented.\n");
   return 0;
}

void inode_free(struct inode **inode) {
   kfree(*inode);
   *inode = NULL;
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
   inode->inode.read = inode_dir_read;
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
   inode->read = inode_file_read;
   inode->unlink = inode_unlink;
   inode->free = inode_free;
   return inode;
}
