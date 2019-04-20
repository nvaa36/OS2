#include "kmain.h"

int kmain(int argc, char **argv) {
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");

   /*int __loop = 1;
   while (__loop);*/
   setup_kernel();
   while (1) {
      asm("hlt");
   }
}

void setup_kernel() {
   setup_gdt();
   setup_interrupts();
   setup_keyboard_polling();
}
