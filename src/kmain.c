#include "kmain.h"

int kmain(int argc, char **argv) {
   int i = 123;
   char c = 'd';
   short s = 111;
   long l = 123456;
   long long ll = 1234567;

   for (i = 0; i < 30; i++)
      printk("kjsdlkfjslkdf\n");
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   printk("%% %d %%\n", i);
   printk("%u %x %p\n", i, i, &i);
   printk("%c %hd %ld %qd\n", c, s, l, ll);

   int __loop = 1;
   while (__loop);
   setup_kernel();
   while(1) {
      printk("%c", get_kb_c());
   }
   while (1) {
      asm("hlt");
   }
}

void setup_kernel() {
   setup_keyboard_polling();
   /*setup_gdt();*/
   setup_interrupts();
   asm("int $0x50");
}
