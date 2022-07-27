#define SECP256K1_INLINE __inline__
#define static

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
