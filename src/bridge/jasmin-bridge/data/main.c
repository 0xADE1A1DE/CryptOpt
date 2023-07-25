#include <stdint.h>
#include <stdio.h>
void add_doubl4(uint64_t pr[4 * 4], // output
                uint64_t pinit[4], uint64_t px2[4], uint64_t pz2[4],
                uint64_t px3[4], uint64_t pz3[4]);

int main() {

  uint64_t pr[4 * 4] = {0};
  uint64_t pinit[4] = {1};
  uint64_t px2[4] = {2};
  uint64_t pz2[4] = {3};
  uint64_t px3[4] = {4};
  uint64_t pz3[4] = {6};
  add_doubl4(pr, pinit, px2, pz2, px3, pz3);

  printf("%lu \n", pr[0]);
  printf("%lu \n", pr[1]);
  printf("%lu \n", pr[2]);
  printf("%lu \n", pr[3]);
  printf("%lu \n", pr[4]);
  printf("%lu \n", pr[5]);
  printf("%lu \n", pr[6]);
  printf("%lu \n", pr[7]);
  printf("%lu \n", pr[8]);
  printf("%lu \n", pr[9]);
  printf("%lu \n", pr[10]);
  printf("%lu \n", pr[11]);
  printf("%lu \n", pr[12]);
  printf("%lu \n", pr[13]);
  printf("%lu \n", pr[14]);
  printf("%lu \n", pr[15]);
}
