#include <stdio.h>
#include <gc.h>

void __attribute__((constructor)) _initializer (void) {
  printf("gcpreload inits!\n");
  //GC_INIT();
  printf("gcpreload loaded!\n");
}

void *malloc(size_t size) {
  return GC_MALLOC(size);
}

void free1(void *ptr) {
  GC_FREE(ptr);
}
void *calloc1(size_t nmemb, size_t size) {
  return GC_MALLOC(nmemb*size);
}

void *realloc1(void *ptr, size_t size) {
  return GC_REALLOC(ptr, size);
}
