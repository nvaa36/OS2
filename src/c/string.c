#include "string.h"

void *memset(void *dst, int c, size_t n) {
   int i;
   for (i = 0; i < n; i++) {
      ((char *)dst)[i] = (char)c;
   }
   return dst;
}
void *memcpy(void *dest, const void *src, size_t n) {
   int i;
   for (i = 0; i < n; i++) {
      ((char *)dest)[i] = ((char *)src)[i];
   }
   return dest;
}
size_t strlen(const char *s) {
   size_t size = 0;
   return size;
}
char *strncpy(char *dest, const char *src, size_t n) {
   return dest;
}
int strncmp(const char *s1, const char *s2, size_t n) {
   int val = 0;
   return val;
}
/*const char *strchr(const char *s, int c) {
}
char *strdup(const char *s);*/
