#include "kmain.h"

int kmain(int argc, char **argv) {
   int i = 123;
   char c = 'd';
   short s = 111;
   long l = 123456;
   long long ll = 1234567;
   /*int __loop = 1;
   while (__loop);*/
   printk("djs\nkhfaksdjhfkjhfoweihafoiehfioehfoiwehoifhweoifhweoifhweoifhoiwehfoiwehfiwehfoiehfoiehwfoiheofihweoifhweoifhaoeiwhfoiewhfoiewhfoiewhfoiewhfoiaewhfoiwehafioewh\n");
   printk("%% %d %%\n", i);
   printk("%u %x %p\n", i, i, &i);
   printk("%c %hd %ld %qd\n", c, s, l, ll);
   while (1) {
      asm("hlt");
   }
}
