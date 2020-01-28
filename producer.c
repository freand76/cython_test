#include <stdio.h>
#include "producer.h"
#include "common.h"

static common_struct_t local = { .inc = 3 };

common_struct_t produce(void) {
  local.inc++;
  printf("produce %d\n", local.inc);
  return local;
}

void produce_simple(void) {
  printf("producer_simple\n");
}
