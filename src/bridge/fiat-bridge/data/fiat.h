#ifndef FIAT_H
#define FIAT_H


#include <stdint.h>
typedef unsigned char fiat_curve25519_uint1;
typedef signed char fiat_curve25519_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_CURVE25519_FIAT_EXTENSION __extension__
#  define FIAT_CURVE25519_FIAT_INLINE __inline__
#else
#  define FIAT_CURVE25519_FIAT_EXTENSION
#  define FIAT_CURVE25519_FIAT_INLINE
#endif

FIAT_CURVE25519_FIAT_EXTENSION typedef signed __int128 fiat_curve25519_int128;
FIAT_CURVE25519_FIAT_EXTENSION typedef unsigned __int128 fiat_curve25519_uint128;

typedef uint64_t fiat_curve25519_loose_field_element[5];

typedef uint64_t fiat_curve25519_tight_field_element[5];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_CURVE25519_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_curve25519_value_barrier_u64(x) (x)
#endif





void fiat_curve25519_carry_mul(fiat_curve25519_tight_field_element out1, const fiat_curve25519_loose_field_element arg1, const fiat_curve25519_loose_field_element arg2);

void fiat_curve25519_carry_square(fiat_curve25519_tight_field_element out1, const fiat_curve25519_loose_field_element arg1);

void fiat_curve25519_carry(fiat_curve25519_tight_field_element out1, const fiat_curve25519_loose_field_element arg1);

void fiat_curve25519_add(fiat_curve25519_loose_field_element out1, const fiat_curve25519_tight_field_element arg1, const fiat_curve25519_tight_field_element arg2);

void fiat_curve25519_sub(fiat_curve25519_loose_field_element out1, const fiat_curve25519_tight_field_element arg1, const fiat_curve25519_tight_field_element arg2);

void fiat_curve25519_opp(fiat_curve25519_loose_field_element out1, const fiat_curve25519_tight_field_element arg1);

void fiat_curve25519_carry_add(fiat_curve25519_tight_field_element out1, const fiat_curve25519_tight_field_element arg1, const fiat_curve25519_tight_field_element arg2);

void fiat_curve25519_carry_sub(fiat_curve25519_tight_field_element out1, const fiat_curve25519_tight_field_element arg1, const fiat_curve25519_tight_field_element arg2);

void fiat_curve25519_carry_opp(fiat_curve25519_tight_field_element out1, const fiat_curve25519_tight_field_element arg1);

void fiat_curve25519_relax(fiat_curve25519_loose_field_element out1, const fiat_curve25519_tight_field_element arg1);

void fiat_curve25519_selectznz(uint64_t out1[5], fiat_curve25519_uint1 arg1, const uint64_t arg2[5], const uint64_t arg3[5]);

void fiat_curve25519_to_bytes(uint8_t out1[32], const fiat_curve25519_tight_field_element arg1);

void fiat_curve25519_from_bytes(fiat_curve25519_tight_field_element out1, const uint8_t arg1[32]);

#include <stdint.h>
typedef unsigned char fiat_p224_uint1;
typedef signed char fiat_p224_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P224_FIAT_EXTENSION __extension__
#  define FIAT_P224_FIAT_INLINE __inline__
#else
#  define FIAT_P224_FIAT_EXTENSION
#  define FIAT_P224_FIAT_INLINE
#endif

FIAT_P224_FIAT_EXTENSION typedef signed __int128 fiat_p224_int128;
FIAT_P224_FIAT_EXTENSION typedef unsigned __int128 fiat_p224_uint128;

typedef uint64_t fiat_p224_montgomery_domain_field_element[4];

typedef uint64_t fiat_p224_non_montgomery_domain_field_element[4];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P224_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p224_value_barrier_u64(x) (x)
#endif






void fiat_p224_mul(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1, const fiat_p224_montgomery_domain_field_element arg2);

void fiat_p224_square(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1);

void fiat_p224_add(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1, const fiat_p224_montgomery_domain_field_element arg2);

void fiat_p224_sub(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1, const fiat_p224_montgomery_domain_field_element arg2);

void fiat_p224_opp(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1);

void fiat_p224_from_montgomery(fiat_p224_non_montgomery_domain_field_element out1, const fiat_p224_montgomery_domain_field_element arg1);

void fiat_p224_to_montgomery(fiat_p224_montgomery_domain_field_element out1, const fiat_p224_non_montgomery_domain_field_element arg1);

void fiat_p224_nonzero(uint64_t* out1, const uint64_t arg1[4]);

void fiat_p224_selectznz(uint64_t out1[4], fiat_p224_uint1 arg1, const uint64_t arg2[4], const uint64_t arg3[4]);

void fiat_p224_to_bytes(uint8_t out1[28], const uint64_t arg1[4]);

void fiat_p224_from_bytes(uint64_t out1[4], const uint8_t arg1[28]);

void fiat_p224_set_one(fiat_p224_montgomery_domain_field_element out1);

void fiat_p224_msat(uint64_t out1[5]);

void fiat_p224_divstep_precomp(uint64_t out1[4]);

void fiat_p224_divstep(uint64_t* out1, uint64_t out2[5], uint64_t out3[5], uint64_t out4[4], uint64_t out5[4], uint64_t arg1, const uint64_t arg2[5], const uint64_t arg3[5], const uint64_t arg4[4], const uint64_t arg5[4]);

#include <stdint.h>
typedef unsigned char fiat_p256_uint1;
typedef signed char fiat_p256_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P256_FIAT_EXTENSION __extension__
#  define FIAT_P256_FIAT_INLINE __inline__
#else
#  define FIAT_P256_FIAT_EXTENSION
#  define FIAT_P256_FIAT_INLINE
#endif

FIAT_P256_FIAT_EXTENSION typedef signed __int128 fiat_p256_int128;
FIAT_P256_FIAT_EXTENSION typedef unsigned __int128 fiat_p256_uint128;

typedef uint64_t fiat_p256_montgomery_domain_field_element[4];

typedef uint64_t fiat_p256_non_montgomery_domain_field_element[4];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P256_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p256_value_barrier_u64(x) (x)
#endif






void fiat_p256_mul(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1, const fiat_p256_montgomery_domain_field_element arg2);

void fiat_p256_square(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1);

void fiat_p256_add(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1, const fiat_p256_montgomery_domain_field_element arg2);

void fiat_p256_sub(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1, const fiat_p256_montgomery_domain_field_element arg2);

void fiat_p256_opp(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1);

void fiat_p256_from_montgomery(fiat_p256_non_montgomery_domain_field_element out1, const fiat_p256_montgomery_domain_field_element arg1);

void fiat_p256_to_montgomery(fiat_p256_montgomery_domain_field_element out1, const fiat_p256_non_montgomery_domain_field_element arg1);

void fiat_p256_nonzero(uint64_t* out1, const uint64_t arg1[4]);

void fiat_p256_selectznz(uint64_t out1[4], fiat_p256_uint1 arg1, const uint64_t arg2[4], const uint64_t arg3[4]);

void fiat_p256_to_bytes(uint8_t out1[32], const uint64_t arg1[4]);

void fiat_p256_from_bytes(uint64_t out1[4], const uint8_t arg1[32]);

void fiat_p256_set_one(fiat_p256_montgomery_domain_field_element out1);

void fiat_p256_msat(uint64_t out1[5]);

void fiat_p256_divstep_precomp(uint64_t out1[4]);

void fiat_p256_divstep(uint64_t* out1, uint64_t out2[5], uint64_t out3[5], uint64_t out4[4], uint64_t out5[4], uint64_t arg1, const uint64_t arg2[5], const uint64_t arg3[5], const uint64_t arg4[4], const uint64_t arg5[4]);

#include <stdint.h>
typedef unsigned char fiat_p384_uint1;
typedef signed char fiat_p384_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P384_FIAT_EXTENSION __extension__
#  define FIAT_P384_FIAT_INLINE __inline__
#else
#  define FIAT_P384_FIAT_EXTENSION
#  define FIAT_P384_FIAT_INLINE
#endif

FIAT_P384_FIAT_EXTENSION typedef signed __int128 fiat_p384_int128;
FIAT_P384_FIAT_EXTENSION typedef unsigned __int128 fiat_p384_uint128;

typedef uint64_t fiat_p384_montgomery_domain_field_element[6];

typedef uint64_t fiat_p384_non_montgomery_domain_field_element[6];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P384_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p384_value_barrier_u64(x) (x)
#endif






void fiat_p384_mul(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1, const fiat_p384_montgomery_domain_field_element arg2);

void fiat_p384_square(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1);

void fiat_p384_add(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1, const fiat_p384_montgomery_domain_field_element arg2);

void fiat_p384_sub(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1, const fiat_p384_montgomery_domain_field_element arg2);

void fiat_p384_opp(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1);

void fiat_p384_from_montgomery(fiat_p384_non_montgomery_domain_field_element out1, const fiat_p384_montgomery_domain_field_element arg1);

void fiat_p384_to_montgomery(fiat_p384_montgomery_domain_field_element out1, const fiat_p384_non_montgomery_domain_field_element arg1);

void fiat_p384_nonzero(uint64_t* out1, const uint64_t arg1[6]);

void fiat_p384_selectznz(uint64_t out1[6], fiat_p384_uint1 arg1, const uint64_t arg2[6], const uint64_t arg3[6]);

void fiat_p384_to_bytes(uint8_t out1[48], const uint64_t arg1[6]);

void fiat_p384_from_bytes(uint64_t out1[6], const uint8_t arg1[48]);

void fiat_p384_set_one(fiat_p384_montgomery_domain_field_element out1);

void fiat_p384_msat(uint64_t out1[7]);

void fiat_p384_divstep_precomp(uint64_t out1[6]);

void fiat_p384_divstep(uint64_t* out1, uint64_t out2[7], uint64_t out3[7], uint64_t out4[6], uint64_t out5[6], uint64_t arg1, const uint64_t arg2[7], const uint64_t arg3[7], const uint64_t arg4[6], const uint64_t arg5[6]);

#include <stdint.h>
typedef unsigned char fiat_p434_uint1;
typedef signed char fiat_p434_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P434_FIAT_EXTENSION __extension__
#  define FIAT_P434_FIAT_INLINE __inline__
#else
#  define FIAT_P434_FIAT_EXTENSION
#  define FIAT_P434_FIAT_INLINE
#endif

FIAT_P434_FIAT_EXTENSION typedef signed __int128 fiat_p434_int128;
FIAT_P434_FIAT_EXTENSION typedef unsigned __int128 fiat_p434_uint128;

typedef uint64_t fiat_p434_montgomery_domain_field_element[7];

typedef uint64_t fiat_p434_non_montgomery_domain_field_element[7];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P434_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p434_value_barrier_u64(x) (x)
#endif






void fiat_p434_mul(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1, const fiat_p434_montgomery_domain_field_element arg2);

void fiat_p434_square(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1);

void fiat_p434_add(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1, const fiat_p434_montgomery_domain_field_element arg2);

void fiat_p434_sub(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1, const fiat_p434_montgomery_domain_field_element arg2);

void fiat_p434_opp(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1);

void fiat_p434_from_montgomery(fiat_p434_non_montgomery_domain_field_element out1, const fiat_p434_montgomery_domain_field_element arg1);

void fiat_p434_to_montgomery(fiat_p434_montgomery_domain_field_element out1, const fiat_p434_non_montgomery_domain_field_element arg1);

void fiat_p434_nonzero(uint64_t* out1, const uint64_t arg1[7]);

void fiat_p434_selectznz(uint64_t out1[7], fiat_p434_uint1 arg1, const uint64_t arg2[7], const uint64_t arg3[7]);

void fiat_p434_to_bytes(uint8_t out1[55], const uint64_t arg1[7]);

void fiat_p434_from_bytes(uint64_t out1[7], const uint8_t arg1[55]);

void fiat_p434_set_one(fiat_p434_montgomery_domain_field_element out1);

void fiat_p434_msat(uint64_t out1[8]);

void fiat_p434_divstep_precomp(uint64_t out1[7]);

void fiat_p434_divstep(uint64_t* out1, uint64_t out2[8], uint64_t out3[8], uint64_t out4[7], uint64_t out5[7], uint64_t arg1, const uint64_t arg2[8], const uint64_t arg3[8], const uint64_t arg4[7], const uint64_t arg5[7]);

#include <stdint.h>
typedef unsigned char fiat_p448_solinas_uint1;
typedef signed char fiat_p448_solinas_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P448_SOLINAS_FIAT_EXTENSION __extension__
#  define FIAT_P448_SOLINAS_FIAT_INLINE __inline__
#else
#  define FIAT_P448_SOLINAS_FIAT_EXTENSION
#  define FIAT_P448_SOLINAS_FIAT_INLINE
#endif

FIAT_P448_SOLINAS_FIAT_EXTENSION typedef signed __int128 fiat_p448_solinas_int128;
FIAT_P448_SOLINAS_FIAT_EXTENSION typedef unsigned __int128 fiat_p448_solinas_uint128;

typedef uint64_t fiat_p448_solinas_loose_field_element[8];

typedef uint64_t fiat_p448_solinas_tight_field_element[8];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P448_SOLINAS_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p448_solinas_value_barrier_u64(x) (x)
#endif





void fiat_p448_solinas_carry_mul(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_loose_field_element arg1, const fiat_p448_solinas_loose_field_element arg2);

void fiat_p448_solinas_carry_square(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_loose_field_element arg1);

void fiat_p448_solinas_carry(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_loose_field_element arg1);

void fiat_p448_solinas_add(fiat_p448_solinas_loose_field_element out1, const fiat_p448_solinas_tight_field_element arg1, const fiat_p448_solinas_tight_field_element arg2);

void fiat_p448_solinas_sub(fiat_p448_solinas_loose_field_element out1, const fiat_p448_solinas_tight_field_element arg1, const fiat_p448_solinas_tight_field_element arg2);

void fiat_p448_solinas_opp(fiat_p448_solinas_loose_field_element out1, const fiat_p448_solinas_tight_field_element arg1);

void fiat_p448_solinas_carry_add(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_tight_field_element arg1, const fiat_p448_solinas_tight_field_element arg2);

void fiat_p448_solinas_carry_sub(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_tight_field_element arg1, const fiat_p448_solinas_tight_field_element arg2);

void fiat_p448_solinas_carry_opp(fiat_p448_solinas_tight_field_element out1, const fiat_p448_solinas_tight_field_element arg1);

void fiat_p448_solinas_relax(fiat_p448_solinas_loose_field_element out1, const fiat_p448_solinas_tight_field_element arg1);

void fiat_p448_solinas_selectznz(uint64_t out1[8], fiat_p448_solinas_uint1 arg1, const uint64_t arg2[8], const uint64_t arg3[8]);

void fiat_p448_solinas_to_bytes(uint8_t out1[56], const fiat_p448_solinas_tight_field_element arg1);

void fiat_p448_solinas_from_bytes(fiat_p448_solinas_tight_field_element out1, const uint8_t arg1[56]);

#include <stdint.h>
typedef unsigned char fiat_p521_uint1;
typedef signed char fiat_p521_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_P521_FIAT_EXTENSION __extension__
#  define FIAT_P521_FIAT_INLINE __inline__
#else
#  define FIAT_P521_FIAT_EXTENSION
#  define FIAT_P521_FIAT_INLINE
#endif

FIAT_P521_FIAT_EXTENSION typedef signed __int128 fiat_p521_int128;
FIAT_P521_FIAT_EXTENSION typedef unsigned __int128 fiat_p521_uint128;

typedef uint64_t fiat_p521_loose_field_element[9];

typedef uint64_t fiat_p521_tight_field_element[9];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_P521_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_p521_value_barrier_u64(x) (x)
#endif







void fiat_p521_carry_mul(fiat_p521_tight_field_element out1, const fiat_p521_loose_field_element arg1, const fiat_p521_loose_field_element arg2);

void fiat_p521_carry_square(fiat_p521_tight_field_element out1, const fiat_p521_loose_field_element arg1);

void fiat_p521_carry(fiat_p521_tight_field_element out1, const fiat_p521_loose_field_element arg1);

void fiat_p521_add(fiat_p521_loose_field_element out1, const fiat_p521_tight_field_element arg1, const fiat_p521_tight_field_element arg2);

void fiat_p521_sub(fiat_p521_loose_field_element out1, const fiat_p521_tight_field_element arg1, const fiat_p521_tight_field_element arg2);

void fiat_p521_opp(fiat_p521_loose_field_element out1, const fiat_p521_tight_field_element arg1);

void fiat_p521_carry_add(fiat_p521_tight_field_element out1, const fiat_p521_tight_field_element arg1, const fiat_p521_tight_field_element arg2);

void fiat_p521_carry_sub(fiat_p521_tight_field_element out1, const fiat_p521_tight_field_element arg1, const fiat_p521_tight_field_element arg2);

void fiat_p521_carry_opp(fiat_p521_tight_field_element out1, const fiat_p521_tight_field_element arg1);

void fiat_p521_relax(fiat_p521_loose_field_element out1, const fiat_p521_tight_field_element arg1);

void fiat_p521_selectznz(uint64_t out1[9], fiat_p521_uint1 arg1, const uint64_t arg2[9], const uint64_t arg3[9]);

void fiat_p521_to_bytes(uint8_t out1[66], const fiat_p521_tight_field_element arg1);

void fiat_p521_from_bytes(fiat_p521_tight_field_element out1, const uint8_t arg1[66]);

#include <stdint.h>
typedef unsigned char fiat_poly1305_uint1;
typedef signed char fiat_poly1305_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_POLY1305_FIAT_EXTENSION __extension__
#  define FIAT_POLY1305_FIAT_INLINE __inline__
#else
#  define FIAT_POLY1305_FIAT_EXTENSION
#  define FIAT_POLY1305_FIAT_INLINE
#endif

FIAT_POLY1305_FIAT_EXTENSION typedef signed __int128 fiat_poly1305_int128;
FIAT_POLY1305_FIAT_EXTENSION typedef unsigned __int128 fiat_poly1305_uint128;

typedef uint64_t fiat_poly1305_loose_field_element[3];

typedef uint64_t fiat_poly1305_tight_field_element[3];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_POLY1305_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_poly1305_value_barrier_u64(x) (x)
#endif







void fiat_poly1305_carry_mul(fiat_poly1305_tight_field_element out1, const fiat_poly1305_loose_field_element arg1, const fiat_poly1305_loose_field_element arg2);

void fiat_poly1305_carry_square(fiat_poly1305_tight_field_element out1, const fiat_poly1305_loose_field_element arg1);

void fiat_poly1305_carry(fiat_poly1305_tight_field_element out1, const fiat_poly1305_loose_field_element arg1);

void fiat_poly1305_add(fiat_poly1305_loose_field_element out1, const fiat_poly1305_tight_field_element arg1, const fiat_poly1305_tight_field_element arg2);

void fiat_poly1305_sub(fiat_poly1305_loose_field_element out1, const fiat_poly1305_tight_field_element arg1, const fiat_poly1305_tight_field_element arg2);

void fiat_poly1305_opp(fiat_poly1305_loose_field_element out1, const fiat_poly1305_tight_field_element arg1);

void fiat_poly1305_carry_add(fiat_poly1305_tight_field_element out1, const fiat_poly1305_tight_field_element arg1, const fiat_poly1305_tight_field_element arg2);

void fiat_poly1305_carry_sub(fiat_poly1305_tight_field_element out1, const fiat_poly1305_tight_field_element arg1, const fiat_poly1305_tight_field_element arg2);

void fiat_poly1305_carry_opp(fiat_poly1305_tight_field_element out1, const fiat_poly1305_tight_field_element arg1);

void fiat_poly1305_relax(fiat_poly1305_loose_field_element out1, const fiat_poly1305_tight_field_element arg1);

void fiat_poly1305_selectznz(uint64_t out1[3], fiat_poly1305_uint1 arg1, const uint64_t arg2[3], const uint64_t arg3[3]);

void fiat_poly1305_to_bytes(uint8_t out1[17], const fiat_poly1305_tight_field_element arg1);

void fiat_poly1305_from_bytes(fiat_poly1305_tight_field_element out1, const uint8_t arg1[17]);

#include <stdint.h>
typedef unsigned char fiat_secp256k1_uint1;
typedef signed char fiat_secp256k1_int1;
#if defined(__GNUC__) || defined(__clang__)
#  define FIAT_SECP256K1_FIAT_EXTENSION __extension__
#  define FIAT_SECP256K1_FIAT_INLINE __inline__
#else
#  define FIAT_SECP256K1_FIAT_EXTENSION
#  define FIAT_SECP256K1_FIAT_INLINE
#endif

FIAT_SECP256K1_FIAT_EXTENSION typedef signed __int128 fiat_secp256k1_int128;
FIAT_SECP256K1_FIAT_EXTENSION typedef unsigned __int128 fiat_secp256k1_uint128;

typedef uint64_t fiat_secp256k1_montgomery_domain_field_element[4];

typedef uint64_t fiat_secp256k1_non_montgomery_domain_field_element[4];

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

#if !defined(FIAT_SECP256K1_NO_ASM) && (defined(__GNUC__) || defined(__clang__))
#else
#  define fiat_secp256k1_value_barrier_u64(x) (x)
#endif






void fiat_secp256k1_mul(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1, const fiat_secp256k1_montgomery_domain_field_element arg2);

void fiat_secp256k1_square(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1);

void fiat_secp256k1_add(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1, const fiat_secp256k1_montgomery_domain_field_element arg2);

void fiat_secp256k1_sub(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1, const fiat_secp256k1_montgomery_domain_field_element arg2);

void fiat_secp256k1_opp(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1);

void fiat_secp256k1_from_montgomery(fiat_secp256k1_non_montgomery_domain_field_element out1, const fiat_secp256k1_montgomery_domain_field_element arg1);

void fiat_secp256k1_to_montgomery(fiat_secp256k1_montgomery_domain_field_element out1, const fiat_secp256k1_non_montgomery_domain_field_element arg1);

void fiat_secp256k1_nonzero(uint64_t* out1, const uint64_t arg1[4]);

void fiat_secp256k1_selectznz(uint64_t out1[4], fiat_secp256k1_uint1 arg1, const uint64_t arg2[4], const uint64_t arg3[4]);

void fiat_secp256k1_to_bytes(uint8_t out1[32], const uint64_t arg1[4]);

void fiat_secp256k1_from_bytes(uint64_t out1[4], const uint8_t arg1[32]);

void fiat_secp256k1_set_one(fiat_secp256k1_montgomery_domain_field_element out1);

void fiat_secp256k1_msat(uint64_t out1[5]);

void fiat_secp256k1_divstep_precomp(uint64_t out1[4]);

void fiat_secp256k1_divstep(uint64_t* out1, uint64_t out2[5], uint64_t out3[5], uint64_t out4[4], uint64_t out5[4], uint64_t arg1, const uint64_t arg2[5], const uint64_t arg3[5], const uint64_t arg4[4], const uint64_t arg5[4]);

#endif
