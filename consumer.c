#include <stdio.h>
#include "common.h"

void consume(common_struct_t in) {
  printf("consume %d\n", in.inc);
  in.inc += 20;
}

void consume_simple(void) {
  printf("consume_simple\n");
}
