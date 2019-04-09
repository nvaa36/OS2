#include "kmain.h"

int kmain(int argc, char **argv) {
   int i = 332;
   printk("\n");
   printk("%% %d %%\n", i);
   while (1) {
      asm("hlt");
   }
}
