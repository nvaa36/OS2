#include "vga_driver.h"

#include "string.h"

static unsigned short *vgaBuff = (unsigned short*)VGA_BASE;
static int width = 80;
static int height = 20;
static int cursor = 0;
static unsigned char color = 0x2f;

void VGA_display_char(char c) {
   if (c == '\n') {
      cursor = (cursor / width + 1) * width;
      if (cursor >= width*height) {
         scroll();
         cursor -= width;
      }
   }
   else if (c == '\r') {
      cursor = cursor / width * width;
      } else {
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

void VGA_clear(){
   memset(vgaBuff, 0, width * height * sizeof(unsigned short));
}

void scroll() {
   memcpy(vgaBuff, vgaBuff + width, width * (height - 1)
          * sizeof(unsigned short));
   memset(vgaBuff + width * (height - 1), 0, width * sizeof(unsigned short));
}

void backspace() {
   if (cursor > 0) {
      cursor--;
   }
   vgaBuff[cursor] = (color << 8) | 0;
}

int VGA_row_count(void) {
   return height;
}

int VGA_col_count(void) {
   return width;
}

void VGA_display_attr_char(int x, int y, char c, int fg, int bg) {
   vgaBuff[x + y * width] = (bg << 12) | (fg << 8) | c;
}
