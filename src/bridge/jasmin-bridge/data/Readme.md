generate ladder.s with 
`jasminc  -I Jade:/root/jasmin/libjade/src ladder.jazz   -o ladder.s` and makref with 
`jasminc  -I Jade:/root/jasmin/libjade/src ladder.jazz  -until_makeref  -pmakeref > makeref`
jasmin.s should have a signature of 
```c
void add_doubl4(
uint64_t    pr[4*4],  // output
uint64_t pinit[4],
uint64_t   px2[4], 
uint64_t   pz2[4], 
uint64_t   px3[4], 
uint64_t   pz3[4]
);
```
