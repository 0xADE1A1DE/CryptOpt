#define SECP256K1_INLINE __inline__
#define static
// #define USE_ASM_X86_64

#include <stdint.h>
#define VERIFY_CHECK(cond)                                                     \
  do {                                                                         \
    (void)(cond);                                                              \
  } while (0)
#define VG_CHECK_VERIFY(x, y)

typedef __int128 uint128_t;
typedef struct {
  uint64_t d[4];
} secp256k1_scalar;

typedef struct {
  int64_t v[5];
} secp256k1_modinv64_signed62;

typedef struct {
  /* The modulus in signed62 notation, must be odd and in [3, 2^256]. */
  secp256k1_modinv64_signed62 modulus;

  /* modulus^{-1} mod 2^62 */
  uint64_t modulus_inv62;
} secp256k1_modinv64_modinfo;

/* Limbs of the secp256k1 order. */
#define SECP256K1_N_0 ((uint64_t)0xBFD25E8CD0364141ULL)
#define SECP256K1_N_1 ((uint64_t)0xBAAEDCE6AF48A03BULL)
#define SECP256K1_N_2 ((uint64_t)0xFFFFFFFFFFFFFFFEULL)
#define SECP256K1_N_3 ((uint64_t)0xFFFFFFFFFFFFFFFFULL)

/* Limbs of 2^256 minus the secp256k1 order. */
#define SECP256K1_N_C_0 (~SECP256K1_N_0 + 1)
#define SECP256K1_N_C_1 (~SECP256K1_N_1)
#define SECP256K1_N_C_2 (1)

/* Limbs of half the secp256k1 order. */
#define SECP256K1_N_H_0 ((uint64_t)0xDFE92F46681B20A0ULL)
#define SECP256K1_N_H_1 ((uint64_t)0x5D576E7357A4501DULL)
#define SECP256K1_N_H_2 ((uint64_t)0xFFFFFFFFFFFFFFFFULL)
#define SECP256K1_N_H_3 ((uint64_t)0x7FFFFFFFFFFFFFFFULL)

SECP256K1_INLINE static int secp256k1_scalar_check_overflow(const secp256k1_scalar *a) {
    int yes = 0;
    int no = 0;
    no |= (a->d[3] < SECP256K1_N_3); /* No need for a > check. */
    no |= (a->d[2] < SECP256K1_N_2);
    yes |= (a->d[2] > SECP256K1_N_2) & ~no;
    no |= (a->d[1] < SECP256K1_N_1);
    yes |= (a->d[1] > SECP256K1_N_1) & ~no;
    yes |= (a->d[0] >= SECP256K1_N_0) & ~no;
    return yes;
}

SECP256K1_INLINE static int secp256k1_scalar_reduce(secp256k1_scalar *r, unsigned int overflow) {
    uint128_t t;
    VERIFY_CHECK(overflow <= 1);
    t = (uint128_t)r->d[0] + overflow * SECP256K1_N_C_0;
    r->d[0] = t & 0xFFFFFFFFFFFFFFFFULL; t >>= 64;
    t += (uint128_t)r->d[1] + overflow * SECP256K1_N_C_1;
    r->d[1] = t & 0xFFFFFFFFFFFFFFFFULL; t >>= 64;
    t += (uint128_t)r->d[2] + overflow * SECP256K1_N_C_2;
    r->d[2] = t & 0xFFFFFFFFFFFFFFFFULL; t >>= 64;
    t += (uint64_t)r->d[3];
    r->d[3] = t & 0xFFFFFFFFFFFFFFFFULL;
    return overflow;
}
/* Inspired by the macros in OpenSSL's crypto/bn/asm/x86_64-gcc.c. */

/** Add a*b to the number defined by (c0,c1,c2). c2 must never overflow. */
#define muladd(a,b) { \
    uint64_t tl, th; \
    { \
        uint128_t t = (uint128_t)a * b; \
        th = t >> 64;         /* at most 0xFFFFFFFFFFFFFFFE */ \
        tl = t; \
    } \
    c0 += tl;                 /* overflow is handled on the next line */ \
    th += (c0 < tl);          /* at most 0xFFFFFFFFFFFFFFFF */ \
    c1 += th;                 /* overflow is handled on the next line */ \
    c2 += (c1 < th);          /* never overflows by contract (verified in the next line) */ \
    VERIFY_CHECK((c1 >= th) || (c2 != 0)); \
}

/** Add a*b to the number defined by (c0,c1). c1 must never overflow. */
#define muladd_fast(a,b) { \
    uint64_t tl, th; \
    { \
        uint128_t t = (uint128_t)a * b; \
        th = t >> 64;         /* at most 0xFFFFFFFFFFFFFFFE */ \
        tl = t; \
    } \
    c0 += tl;                 /* overflow is handled on the next line */ \
    th += (c0 < tl);          /* at most 0xFFFFFFFFFFFFFFFF */ \
    c1 += th;                 /* never overflows by contract (verified in the next line) */ \
    VERIFY_CHECK(c1 >= th); \
}

/** Add a to the number defined by (c0,c1,c2). c2 must never overflow. */
#define sumadd(a) { \
    unsigned int over; \
    c0 += (a);                  /* overflow is handled on the next line */ \
    over = (c0 < (a));         \
    c1 += over;                 /* overflow is handled on the next line */ \
    c2 += (c1 < over);          /* never overflows by contract */ \
}

/** Add a to the number defined by (c0,c1). c1 must never overflow, c2 must be zero. */
#define sumadd_fast(a) { \
    c0 += (a);                 /* overflow is handled on the next line */ \
    c1 += (c0 < (a));          /* never overflows by contract (verified the next line) */ \
    VERIFY_CHECK((c1 != 0) | (c0 >= (a))); \
    VERIFY_CHECK(c2 == 0); \
}

/** Extract the lowest 64 bits of (c0,c1,c2) into n, and left shift the number 64 bits. */
#define extract(n) { \
    (n) = c0; \
    c0 = c1; \
    c1 = c2; \
    c2 = 0; \
}

/** Extract the lowest 64 bits of (c0,c1,c2) into n, and left shift the number 64 bits. c2 is required to be zero. */
#define extract_fast(n) { \
    (n) = c0; \
    c0 = c1; \
    c1 = 0; \
    VERIFY_CHECK(c2 == 0); \
}

static void secp256k1_scalar_reduce_512(secp256k1_scalar *r, const uint64_t *l) {
#ifdef USE_ASM_X86_64
    /* Reduce 512 bits into 385. */
    uint64_t m0, m1, m2, m3, m4, m5, m6;
    uint64_t p0, p1, p2, p3, p4;
    uint64_t c;

    __asm__ __volatile__(
    /* Preload. */
    "movq 32(%%rsi), %%r11\n"
    "movq 40(%%rsi), %%r12\n"
    "movq 48(%%rsi), %%r13\n"
    "movq 56(%%rsi), %%r14\n"
    /* Initialize r8,r9,r10 */
    "movq 0(%%rsi), %%r8\n"
    "xorq %%r9, %%r9\n"
    "xorq %%r10, %%r10\n"
    /* (r8,r9) += n0 * c0 */
    "movq %8, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    /* extract m0 */
    "movq %%r8, %q0\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r10) += l1 */
    "addq 8(%%rsi), %%r9\n"
    "adcq $0, %%r10\n"
    /* (r9,r10,r8) += n1 * c0 */
    "movq %8, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += n0 * c1 */
    "movq %9, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* extract m1 */
    "movq %%r9, %q1\n"
    "xorq %%r9, %%r9\n"
    /* (r10,r8,r9) += l2 */
    "addq 16(%%rsi), %%r10\n"
    "adcq $0, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += n2 * c0 */
    "movq %8, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += n1 * c1 */
    "movq %9, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += n0 */
    "addq %%r11, %%r10\n"
    "adcq $0, %%r8\n"
    "adcq $0, %%r9\n"
    /* extract m2 */
    "movq %%r10, %q2\n"
    "xorq %%r10, %%r10\n"
    /* (r8,r9,r10) += l3 */
    "addq 24(%%rsi), %%r8\n"
    "adcq $0, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += n3 * c0 */
    "movq %8, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += n2 * c1 */
    "movq %9, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += n1 */
    "addq %%r12, %%r8\n"
    "adcq $0, %%r9\n"
    "adcq $0, %%r10\n"
    /* extract m3 */
    "movq %%r8, %q3\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r10,r8) += n3 * c1 */
    "movq %9, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += n2 */
    "addq %%r13, %%r9\n"
    "adcq $0, %%r10\n"
    "adcq $0, %%r8\n"
    /* extract m4 */
    "movq %%r9, %q4\n"
    /* (r10,r8) += n3 */
    "addq %%r14, %%r10\n"
    "adcq $0, %%r8\n"
    /* extract m5 */
    "movq %%r10, %q5\n"
    /* extract m6 */
    "movq %%r8, %q6\n"
    : "=g"(m0), "=g"(m1), "=g"(m2), "=g"(m3), "=g"(m4), "=g"(m5), "=g"(m6)
    : "S"(l), "i"(SECP256K1_N_C_0), "i"(SECP256K1_N_C_1)
    : "rax", "rdx", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "cc");

    /* Reduce 385 bits into 258. */
    __asm__ __volatile__(
    /* Preload */
    "movq %q9, %%r11\n"
    "movq %q10, %%r12\n"
    "movq %q11, %%r13\n"
    /* Initialize (r8,r9,r10) */
    "movq %q5, %%r8\n"
    "xorq %%r9, %%r9\n"
    "xorq %%r10, %%r10\n"
    /* (r8,r9) += m4 * c0 */
    "movq %12, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    /* extract p0 */
    "movq %%r8, %q0\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r10) += m1 */
    "addq %q6, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r9,r10,r8) += m5 * c0 */
    "movq %12, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += m4 * c1 */
    "movq %13, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* extract p1 */
    "movq %%r9, %q1\n"
    "xorq %%r9, %%r9\n"
    /* (r10,r8,r9) += m2 */
    "addq %q7, %%r10\n"
    "adcq $0, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += m6 * c0 */
    "movq %12, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += m5 * c1 */
    "movq %13, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += m4 */
    "addq %%r11, %%r10\n"
    "adcq $0, %%r8\n"
    "adcq $0, %%r9\n"
    /* extract p2 */
    "movq %%r10, %q2\n"
    /* (r8,r9) += m3 */
    "addq %q8, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r8,r9) += m6 * c1 */
    "movq %13, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    /* (r8,r9) += m5 */
    "addq %%r12, %%r8\n"
    "adcq $0, %%r9\n"
    /* extract p3 */
    "movq %%r8, %q3\n"
    /* (r9) += m6 */
    "addq %%r13, %%r9\n"
    /* extract p4 */
    "movq %%r9, %q4\n"
    : "=&g"(p0), "=&g"(p1), "=&g"(p2), "=g"(p3), "=g"(p4)
    : "g"(m0), "g"(m1), "g"(m2), "g"(m3), "g"(m4), "g"(m5), "g"(m6), "i"(SECP256K1_N_C_0), "i"(SECP256K1_N_C_1)
    : "rax", "rdx", "r8", "r9", "r10", "r11", "r12", "r13", "cc");

    /* Reduce 258 bits into 256. */
    __asm__ __volatile__(
    /* Preload */
    "movq %q5, %%r10\n"
    /* (rax,rdx) = p4 * c0 */
    "movq %7, %%rax\n"
    "mulq %%r10\n"
    /* (rax,rdx) += p0 */
    "addq %q1, %%rax\n"
    "adcq $0, %%rdx\n"
    /* extract r0 */
    "movq %%rax, 0(%q6)\n"
    /* Move to (r8,r9) */
    "movq %%rdx, %%r8\n"
    "xorq %%r9, %%r9\n"
    /* (r8,r9) += p1 */
    "addq %q2, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r8,r9) += p4 * c1 */
    "movq %8, %%rax\n"
    "mulq %%r10\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    /* Extract r1 */
    "movq %%r8, 8(%q6)\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r8) += p4 */
    "addq %%r10, %%r9\n"
    "adcq $0, %%r8\n"
    /* (r9,r8) += p2 */
    "addq %q3, %%r9\n"
    "adcq $0, %%r8\n"
    /* Extract r2 */
    "movq %%r9, 16(%q6)\n"
    "xorq %%r9, %%r9\n"
    /* (r8,r9) += p3 */
    "addq %q4, %%r8\n"
    "adcq $0, %%r9\n"
    /* Extract r3 */
    "movq %%r8, 24(%q6)\n"
    /* Extract c */
    "movq %%r9, %q0\n"
    : "=g"(c)
    : "g"(p0), "g"(p1), "g"(p2), "g"(p3), "g"(p4), "D"(r), "i"(SECP256K1_N_C_0), "i"(SECP256K1_N_C_1)
    : "rax", "rdx", "r8", "r9", "r10", "cc", "memory");
#else
    uint128_t c;
    uint64_t c0, c1, c2;
    uint64_t n0 = l[4], n1 = l[5], n2 = l[6], n3 = l[7];
    uint64_t m0, m1, m2, m3, m4, m5;
    uint32_t m6;
    uint64_t p0, p1, p2, p3;
    uint32_t p4;

    /* Reduce 512 bits into 385. */
    /* m[0..6] = l[0..3] + n[0..3] * SECP256K1_N_C. */
    c0 = l[0]; c1 = 0; c2 = 0;
    muladd_fast(n0, SECP256K1_N_C_0);
    extract_fast(m0);
    sumadd_fast(l[1]);
    muladd(n1, SECP256K1_N_C_0);
    muladd(n0, SECP256K1_N_C_1);
    extract(m1);
    sumadd(l[2]);
    muladd(n2, SECP256K1_N_C_0);
    muladd(n1, SECP256K1_N_C_1);
    sumadd(n0);
    extract(m2);
    sumadd(l[3]);
    muladd(n3, SECP256K1_N_C_0);
    muladd(n2, SECP256K1_N_C_1);
    sumadd(n1);
    extract(m3);
    muladd(n3, SECP256K1_N_C_1);
    sumadd(n2);
    extract(m4);
    sumadd_fast(n3);
    extract_fast(m5);
    VERIFY_CHECK(c0 <= 1);
    m6 = c0;

    /* Reduce 385 bits into 258. */
    /* p[0..4] = m[0..3] + m[4..6] * SECP256K1_N_C. */
    c0 = m0; c1 = 0; c2 = 0;
    muladd_fast(m4, SECP256K1_N_C_0);
    extract_fast(p0);
    sumadd_fast(m1);
    muladd(m5, SECP256K1_N_C_0);
    muladd(m4, SECP256K1_N_C_1);
    extract(p1);
    sumadd(m2);
    muladd(m6, SECP256K1_N_C_0);
    muladd(m5, SECP256K1_N_C_1);
    sumadd(m4);
    extract(p2);
    sumadd_fast(m3);
    muladd_fast(m6, SECP256K1_N_C_1);
    sumadd_fast(m5);
    extract_fast(p3);
    p4 = c0 + m6;
    VERIFY_CHECK(p4 <= 2);

    /* Reduce 258 bits into 256. */
    /* r[0..3] = p[0..3] + p[4] * SECP256K1_N_C. */
    c = p0 + (uint128_t)SECP256K1_N_C_0 * p4;
    r->d[0] = c & 0xFFFFFFFFFFFFFFFFULL; c >>= 64;
    c += p1 + (uint128_t)SECP256K1_N_C_1 * p4;
    r->d[1] = c & 0xFFFFFFFFFFFFFFFFULL; c >>= 64;
    c += p2 + (uint128_t)p4;
    r->d[2] = c & 0xFFFFFFFFFFFFFFFFULL; c >>= 64;
    c += p3;
    r->d[3] = c & 0xFFFFFFFFFFFFFFFFULL; c >>= 64;
#endif

    /* Final reduction of r. */
    secp256k1_scalar_reduce(r, c + secp256k1_scalar_check_overflow(r));
}

static void secp256k1_scalar_mul_512(uint64_t l[8], const secp256k1_scalar *a, const secp256k1_scalar *b) {
#ifdef USE_ASM_X86_64
    const uint64_t *pb = b->d;
    __asm__ __volatile__(
    /* Preload */
    "movq 0(%%rdi), %%r15\n"
    "movq 8(%%rdi), %%rbx\n"
    "movq 16(%%rdi), %%rcx\n"
    "movq 0(%%rdx), %%r11\n"
    "movq 8(%%rdx), %%r12\n"
    "movq 16(%%rdx), %%r13\n"
    "movq 24(%%rdx), %%r14\n"
    /* (rax,rdx) = a0 * b0 */
    "movq %%r15, %%rax\n"
    "mulq %%r11\n"
    /* Extract l0 */
    "movq %%rax, 0(%%rsi)\n"
    /* (r8,r9,r10) = (rdx) */
    "movq %%rdx, %%r8\n"
    "xorq %%r9, %%r9\n"
    "xorq %%r10, %%r10\n"
    /* (r8,r9,r10) += a0 * b1 */
    "movq %%r15, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += a1 * b0 */
    "movq %%rbx, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* Extract l1 */
    "movq %%r8, 8(%%rsi)\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r10,r8) += a0 * b2 */
    "movq %%r15, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += a1 * b1 */
    "movq %%rbx, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += a2 * b0 */
    "movq %%rcx, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* Extract l2 */
    "movq %%r9, 16(%%rsi)\n"
    "xorq %%r9, %%r9\n"
    /* (r10,r8,r9) += a0 * b3 */
    "movq %%r15, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* Preload a3 */
    "movq 24(%%rdi), %%r15\n"
    /* (r10,r8,r9) += a1 * b2 */
    "movq %%rbx, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += a2 * b1 */
    "movq %%rcx, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* (r10,r8,r9) += a3 * b0 */
    "movq %%r15, %%rax\n"
    "mulq %%r11\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    "adcq $0, %%r9\n"
    /* Extract l3 */
    "movq %%r10, 24(%%rsi)\n"
    "xorq %%r10, %%r10\n"
    /* (r8,r9,r10) += a1 * b3 */
    "movq %%rbx, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += a2 * b2 */
    "movq %%rcx, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* (r8,r9,r10) += a3 * b1 */
    "movq %%r15, %%rax\n"
    "mulq %%r12\n"
    "addq %%rax, %%r8\n"
    "adcq %%rdx, %%r9\n"
    "adcq $0, %%r10\n"
    /* Extract l4 */
    "movq %%r8, 32(%%rsi)\n"
    "xorq %%r8, %%r8\n"
    /* (r9,r10,r8) += a2 * b3 */
    "movq %%rcx, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* (r9,r10,r8) += a3 * b2 */
    "movq %%r15, %%rax\n"
    "mulq %%r13\n"
    "addq %%rax, %%r9\n"
    "adcq %%rdx, %%r10\n"
    "adcq $0, %%r8\n"
    /* Extract l5 */
    "movq %%r9, 40(%%rsi)\n"
    /* (r10,r8) += a3 * b3 */
    "movq %%r15, %%rax\n"
    "mulq %%r14\n"
    "addq %%rax, %%r10\n"
    "adcq %%rdx, %%r8\n"
    /* Extract l6 */
    "movq %%r10, 48(%%rsi)\n"
    /* Extract l7 */
    "movq %%r8, 56(%%rsi)\n"
    : "+d"(pb)
    : "S"(l), "D"(a->d)
    : "rax", "rbx", "rcx", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", "cc", "memory");
#else
    /* 160 bit accumulator. */
    uint64_t c0 = 0, c1 = 0;
    uint32_t c2 = 0;

    /* l[0..7] = a[0..3] * b[0..3]. */
    muladd_fast(a->d[0], b->d[0]);
    extract_fast(l[0]);
    muladd(a->d[0], b->d[1]);
    muladd(a->d[1], b->d[0]);
    extract(l[1]);
    muladd(a->d[0], b->d[2]);
    muladd(a->d[1], b->d[1]);
    muladd(a->d[2], b->d[0]);
    extract(l[2]);
    muladd(a->d[0], b->d[3]);
    muladd(a->d[1], b->d[2]);
    muladd(a->d[2], b->d[1]);
    muladd(a->d[3], b->d[0]);
    extract(l[3]);
    muladd(a->d[1], b->d[3]);
    muladd(a->d[2], b->d[2]);
    muladd(a->d[3], b->d[1]);
    extract(l[4]);
    muladd(a->d[2], b->d[3]);
    muladd(a->d[3], b->d[2]);
    extract(l[5]);
    muladd_fast(a->d[3], b->d[3]);
    extract_fast(l[6]);
    VERIFY_CHECK(c1 == 0);
    l[7] = c0;
#endif
}

#undef sumadd
#undef sumadd_fast
#undef muladd
#undef muladd_fast
#undef extract
#undef extract_fast

static void secp256k1_scalar_mul(secp256k1_scalar *r, const secp256k1_scalar *a, const secp256k1_scalar *b) {
    uint64_t l[8];
    secp256k1_scalar_mul_512(l, a, b);
    secp256k1_scalar_reduce_512(r, l);
}
