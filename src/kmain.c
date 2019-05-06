#include "kmain.h"

int kmain(uint32_t *tag_pointer) {
   int i, *page, *page2;
   int __loop = 1;
   while (__loop);
   setup_kernel(tag_pointer);
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   page = (int *)kmalloc(sizeof(int) * 12);
   printk("%p\n", page);
   page2 = (int *)kmalloc(sizeof(int) * 12);
   printk("%p\n", page2);
   kfree(page);
   page = (int *)kmalloc(sizeof(int) * 12);
   printk("%p\n", page);
   kfree(page2);
   page2 = (int *)kmalloc(sizeof(int) * 4000);
   printk("%p\n", page2);
   for (i = 0; i < 40; i++) {
      page = (int *)kmalloc(sizeof(int) * 12);
      printk("%p\n", page);
   }
   for (i = 0; i < 4000; i++) {
      page2[i] = i + 40;
   }
   kfree(page2);
   while (1) {
      asm("hlt");
   }
}

void setup_kernel(uint32_t *tag_pointer) {
   setup_tss();
   setup_gdt();
   setup_interrupts();
   setup_frame_alloc(tag_pointer);
   setup_kernel_page_tables();
   setup_kmalloc();
   SER_init();
   setup_keyboard();
}
