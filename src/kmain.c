#include "kmain.h"

int kmain(uint32_t *tag_pointer) {

   int __loop = 1;
   while (__loop);
   setup_kernel(tag_pointer);
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   while (1) {
      asm("hlt");
   }
}

void setup_kernel(uint32_t *tag_pointer) {
   setup_tss();
   setup_gdt();
   SER_init();
   setup_keyboard();
   setup_interrupts();
   setup_frame_alloc(tag_pointer);
}
