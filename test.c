#include <stdlib.h>
#include <malloc.h>
#include <assert.h>

int main(void) {
  int i = 0;
  mallopt(M_CHECK_ACTION, 3);
  for (i=0; i<9000; i++) {
    void* ptr = malloc(1024);
	assert(ptr);
  }
  return 0;
}
