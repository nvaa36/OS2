#ifndef STRING_H
#define STRING_H

#include <stddef.h>

void *memset(void *dst, int c, size_t n);
void *memcpy(void *dest, const void *src, size_t n);
size_t strlen(const char *s);
char *strncpy(char *dest, const char *src, size_t n);
int strncmp(const char *s1, const char *s2, size_t n);
const char *strchr(const char *s, int c);
/*char *strdup(const char *s);*/

#endif
