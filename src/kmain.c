#include "kmain.h"

int kmain(int argc, char **argv) {
   int i = 123;
   char c = 'd';
   short s = 111;
   long l = 123456;
   long long ll = 1234567;

   setup_kernel();
   /*int __loop = 1;
   while (__loop);*/
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   printk("%% %d %%\n", i);
   printk("%u %x %p\n", i, i, &i);
   printk("%c %hd %ld %qd\n", c, s, l, ll);
   /*for (i = 0; i < 10; i++)
      printk("kjsdlkfjslkdf\n");*/
   while(1) {
      printk("%c", get_kb_c());
   }
   while (1) {
      asm("hlt");
   }
}

void setup_kernel() {
   setup_keyboard_polling();
   setup_gdt();
   setup_interrupts();
}
