#include "string.h"

#include "kmalloc.h"

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
   char c;
   while ((c = s[size])) {
      size++;
   }
   return size;
}
char *strncpy(char *dest, const char *src, size_t n) {
   memcpy(dest, src, n);
   return dest;
}
int strncmp(const char *s1, const char *s2, size_t n) {
   int i;
   int val = 0;
   for (i = 0; i < n; i++) {
      if ((val = s1[i] - s2[i])) {
         return val;
      }
   }
   return val;
}
const char *strchr(const char *s, int c) {
   const char *character = s;
   int i = 0;
   size_t len = strlen(s);
   while (i < len) {
      if (*character == c) {
         return character;
      }
      character++;
      i++;
   }
   return NULL;
}
char *strdup(const char *s) {
   int size = strlen(s) + 1;
   char *new = kmalloc(size);
   memcpy(new, s, size);
   return new;
}
