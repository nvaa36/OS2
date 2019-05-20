#ifndef KMALLOC_H
#define KMALLOC_H

#include <stddef.h>

#define NUM_POOLS 6
#define MAX_POOL 2048

#define num_pages(X) ((X - 1) / PAGE_FRAME_SIZE + 1)

void setup_kmalloc();
void *kmalloc(size_t size);
void kfree(void *addr);

struct FreeList {
   struct FreeList *next;
};

typedef struct FreeList free_list;

typedef struct {
   int max_size;
   int avail;
   free_list head;
} kmalloc_pool;

typedef struct {
   kmalloc_pool *pool;
   size_t size;
} kmalloc_extra;

#endif
