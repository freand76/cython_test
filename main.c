#include <stdio.h>

#include "producer.h"
#include "consumer.h"
#include "common.h"

int main(int args, char* argv[]) {
  printf("[%d] %s\n", args, argv[0]);
  for (int idx = 0; idx < 10; idx++) {
    common_struct_t x = produce();
    consume(x);
  }
  return 0;
}
