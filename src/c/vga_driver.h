#ifndef VGA_DRIVER_H
#define VGA_DRIVER_H

#define VGA_BASE 0xb8000

void VGA_clear(void);
void VGA_display_char(char);
void VGA_display_str(const char *);
void scroll();

#endif
