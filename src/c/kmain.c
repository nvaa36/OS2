#include "kmain.h"

int kmain(int argc, char **argv) {
   VGA_clear();
   VGA_display_str("OKAY!!!!!");
   while (1) {
      asm("hlt");
   }
}
