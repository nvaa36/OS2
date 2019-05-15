#include "kmalloc.h"

kmalloc_pool pools[NUM_POOLS];

/* Sets up the initial blocks to allocate. Initally allocates a page for each
 * pool.
 */
void setup_kmalloc() {
   int i;
   void *page, *pointer;

   memset (pools, 0, sizeof(pools));

   pools[0].max_size = 32;
   pools[1].max_size = 64;
   pools[2].max_size = 128;
   pools[3].max_size = 512;
   pools[4].max_size = 1024;
   pools[5].max_size = 2048;

   // Allocate a page for each pool.
   for (i = 0; i < NUM_POOLS; i++) {
      page = MMU_alloc_kern_page();
      pointer = page;
      pools[i].avail = PAGE_FRAME_SIZE / pools[i].max_size;
      while ((uint64_t)pointer < (uint64_t)page + PAGE_FRAME_SIZE) {
         ((free_list *)pointer)->next = pools[i].head.next;
         pools[i].head.next = pointer;
         pointer += pools[i].max_size;
      }
   }
}

static void refill_pool(kmalloc_pool *pool) {
   void *page, *pointer;

   page = MMU_alloc_kern_page();
   pointer = page;
   pool->avail = PAGE_FRAME_SIZE / pool->max_size;
   while ((uint64_t)pointer < (uint64_t)page + PAGE_FRAME_SIZE) {
      ((free_list *)pointer)->next = pool->head.next;
      pool->head.next = pointer;
      pointer += pool->max_size;
   }
}

void *kmalloc(size_t size) {
   int i, full_size;
   void *pointer;

   full_size = size + sizeof(kmalloc_extra);

   for (i = 0; i < NUM_POOLS; i++) {
      if (pools[i].max_size > full_size) {
         if (pools[i].avail < 1)
            refill_pool(&pools[i]);

         pointer = pools[i].head.next;
         pools[i].head.next = ((free_list *)pointer)->next;
         ((kmalloc_extra *)pointer)->pool = &pools[i];
         ((kmalloc_extra *)pointer)->size = size;
         pointer += sizeof(kmalloc_extra);
         pools[i].avail--;
         return pointer;
      }
   }

   // If the block requested doesn't fit into any of the pools.
   pointer = MMU_alloc_kern_pages(num_pages(full_size));
   ((kmalloc_extra *)pointer)->pool = NULL;
   ((kmalloc_extra *)pointer)->size = size;
   pointer += sizeof(kmalloc_extra);
   return pointer;

}

void kfree(void *addr) {
   kmalloc_pool *pool;
   kmalloc_extra *header;

   header = (kmalloc_extra *)(addr - sizeof(kmalloc_extra));
   pool = header->pool;

   // The thing was too big to fit in any pool.
   if (!pool) {
      MMU_free_kern_pages(header,
                          num_pages(header->size + sizeof(kmalloc_extra)));
      return;
   }

   if (pool > &pools[NUM_POOLS - 1] || pool < pools) {
      printk("Trying to free with invalid pool num: %p\n", pool);
      asm("hlt");
   }

   pool->avail++;
   ((free_list *)header)->next = pool->head.next;
   pool->head.next = (free_list *)header;
}
