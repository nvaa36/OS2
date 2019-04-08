#include "vga_driver.h"

static unsigned short *vgaBuff = (unsigned short*)VGA_BASE;
static int width = 80;
static int height = 20;
static int cursor = 0;
static unsigned char color = 0x2f;

void VGA_display_char(char c) {
   if (c == '\n') {
      cursor = (cursor / width + 1) * width;
      if (cursor >= width*height)
         scroll();
   }
   else if (c == '\r')
      cursor = cursor / width * width;
      else {
         vgaBuff[cursor] = (color << 8) | c;
         if ( (cursor % width) < (width - 1))
            cursor++;
      }
}

void VGA_display_str(const char *str) {
   char c;
   int i;
   while ((c = str[i])) {
      VGA_display_char(c);
      i++;
   }
}

void VGA_clear(){}

void scroll() {}
