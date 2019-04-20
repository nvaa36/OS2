#include "kmain.h"

int kmain(int argc, char **argv) {
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");

   int __loop = 1;
   while (__loop);
   setup_kernel();
   asm("INT $0x8");
   while (1) {
      asm("hlt");
   }
}

void setup_kernel() {
   setup_tss();
   setup_gdt();
   setup_interrupts();
   setup_keyboard();
}
