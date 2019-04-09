#include "kmain.h"

int kmain(int argc, char **argv) {
   const char *str = "Hello World.";
   printk("%s\n", str);
   while (1) {
      asm("hlt");
   }
}
