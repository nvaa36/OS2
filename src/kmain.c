#include "kmain.h"

proc curr_proc, next_proc;

int kmain(uint32_t *tag_pointer) {
   int *page;
   /*int __loop = 1;
   while (__loop);*/
   setup_kernel(tag_pointer);
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   page = (int *)kmalloc(sizeof(int) * 12);
   printk("%p\n", page);
   make_system_call(TEST, NULL);
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
   setup_syscalls();
}
