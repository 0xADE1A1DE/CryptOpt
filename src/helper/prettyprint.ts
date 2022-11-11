import { writeFileSync } from "fs";

import type { Fiat } from "@/types";

export function prettyPrintJsonAsC(filename: string, ops: Fiat.DynArgument[]): void {
  const buffer: string[] = [];

  const DT2Ctypes = {
    u64: "uint64_t",
    u1: "uint8_t",
    u8: "uint8_t",
  };

  buffer.push(`#include <stdint.h>`);
  buffer.push(preamble);
  buffer.push(`#define mulx fiat_curve25519_solinas_mulx_u64`);
  buffer.push(`#define add fiat_curve25519_solinas_addcarryx_u64`);
  buffer.push(`void fun(uint64_t *out1, uint64_t *arg1, uint64_t *arg2){`);

  ops.forEach((op, i) => {
    buffer.push(
      `// ${op.operation}(${op.name
        .map((o) => `&${o}`)
        .concat(op.arguments as string[])
        .join(", ")});`,
    );
    const t = DT2Ctypes[op.datatype as "u64"];
    const [limb0, limb1] = op.name.map((n) => (n == "_" ? `_null${i}` : n));
    switch (op.operation) {
      case "!":
        buffer.push(`${t} ${limb0} = ${op.operation} ${op.arguments[0]};`);
        break;

      case "mulx":
        buffer.push(
          `${t} ${limb0}; ${t} ${limb1};`,
          `mulx(&${limb0}, &${limb1}, ${op.arguments[0]}, ${op.arguments[1]});`,
        );
        break;

      case "addcarryx":
        buffer.push(
          `${t} ${limb0}; fiat_curve25519_solinas_uint1 ${limb1};`,
          `add(&${limb0}, &${limb1}, ${op.arguments[0]}, ${op.arguments[1]}, ${op.arguments[2]});`,
        );

        break;
      case "+":
        buffer.push(`${t} ${limb0} = ${op.arguments[0]} + ${op.arguments[1]};`);
        break;
      case "=":
        if (limb0.startsWith("out")) {
          buffer.push(`${limb0} = ${op.arguments[0]};`);
        } else {
          buffer.push(`${t} ${limb0} = ${op.arguments[0]};`);
        }
        break;
      default:
        buffer.push(JSON.stringify(op));
    }
    buffer.push("\n");
  });
  buffer.push(`}`);
  writeFileSync(filename, buffer.join("\n"));
}

const preamble = `
typedef unsigned char fiat_curve25519_solinas_uint1;
typedef signed char fiat_curve25519_solinas_int1;
#if defined(__GNUC__) || defined(__clang__)
#define FIAT_CURVE25519_SOLINAS_FIAT_EXTENSION __extension__
#define FIAT_CURVE25519_SOLINAS_FIAT_INLINE __inline__
#else
#define FIAT_CURVE25519_SOLINAS_FIAT_EXTENSION
#define FIAT_CURVE25519_SOLINAS_FIAT_INLINE
#endif

FIAT_CURVE25519_SOLINAS_FIAT_EXTENSION typedef signed __int128
    fiat_curve25519_solinas_int128;
FIAT_CURVE25519_SOLINAS_FIAT_EXTENSION typedef unsigned __int128
    fiat_curve25519_solinas_uint128;

#if (-1 & 3) != 3
#error "This code only works on a two's complement system"
#endif

/*
 * The function fiat_curve25519_solinas_addcarryx_u64 is an addition with carry.
 *
 * Postconditions:
 *   out1 = (arg1 + arg2 + arg3) mod 2^64
 *   out2 = ⌊(arg1 + arg2 + arg3) / 2^64⌋
 *
 * Input Bounds:
 *   arg1: [0x0 ~> 0x1]
 *   arg2: [0x0 ~> 0xffffffffffffffff]
 *   arg3: [0x0 ~> 0xffffffffffffffff]
 * Output Bounds:
 *   out1: [0x0 ~> 0xffffffffffffffff]
 *   out2: [0x0 ~> 0x1]
 */
static FIAT_CURVE25519_SOLINAS_FIAT_INLINE void
fiat_curve25519_solinas_addcarryx_u64(uint64_t *out1,
                                      fiat_curve25519_solinas_uint1 *out2,
                                      fiat_curve25519_solinas_uint1 arg1,
                                      uint64_t arg2, uint64_t arg3) {
  fiat_curve25519_solinas_uint128 x1;
  uint64_t x2;
  fiat_curve25519_solinas_uint1 x3;
  x1 = ((arg1 + (fiat_curve25519_solinas_uint128)arg2) + arg3);
  x2 = (uint64_t)(x1 & UINT64_C(0xffffffffffffffff));
  x3 = (fiat_curve25519_solinas_uint1)(x1 >> 64);
  *out1 = x2;
  *out2 = x3;
}

/*
 * The function fiat_curve25519_solinas_subborrowx_u64 is a subtraction with
 * borrow.
 *
 * Postconditions:
 *   out1 = (-arg1 + arg2 + -arg3) mod 2^64
 *   out2 = -⌊(-arg1 + arg2 + -arg3) / 2^64⌋
 *
 * Input Bounds:
 *   arg1: [0x0 ~> 0x1]
 *   arg2: [0x0 ~> 0xffffffffffffffff]
 *   arg3: [0x0 ~> 0xffffffffffffffff]
 * Output Bounds:
 *   out1: [0x0 ~> 0xffffffffffffffff]
 *   out2: [0x0 ~> 0x1]
 */
static FIAT_CURVE25519_SOLINAS_FIAT_INLINE void
fiat_curve25519_solinas_subborrowx_u64(uint64_t *out1,
                                       fiat_curve25519_solinas_uint1 *out2,
                                       fiat_curve25519_solinas_uint1 arg1,
                                       uint64_t arg2, uint64_t arg3) {
  fiat_curve25519_solinas_int128 x1;
  fiat_curve25519_solinas_int1 x2;
  uint64_t x3;
  x1 = ((arg2 - (fiat_curve25519_solinas_int128)arg1) - arg3);
  x2 = (fiat_curve25519_solinas_int1)(x1 >> 64);
  x3 = (uint64_t)(x1 & UINT64_C(0xffffffffffffffff));
  *out1 = x3;
  *out2 = (fiat_curve25519_solinas_uint1)(0x0 - x2);
}

/*
 * The function fiat_curve25519_solinas_mulx_u64 is a multiplication, returning
 * the full double-width result.
 *
 * Postconditions:
 *   out1 = (arg1 * arg2) mod 2^64
 *   out2 = ⌊arg1 * arg2 / 2^64⌋
 *
 * Input Bounds:
 *   arg1: [0x0 ~> 0xffffffffffffffff]
 *   arg2: [0x0 ~> 0xffffffffffffffff]
 * Output Bounds:
 *   out1: [0x0 ~> 0xffffffffffffffff]
 *   out2: [0x0 ~> 0xffffffffffffffff]
 */
static FIAT_CURVE25519_SOLINAS_FIAT_INLINE void
fiat_curve25519_solinas_mulx_u64(uint64_t *out1, uint64_t *out2, uint64_t arg1,
                                 uint64_t arg2) {
  fiat_curve25519_solinas_uint128 x1;
  uint64_t x2;
  uint64_t x3;
  x1 = ((fiat_curve25519_solinas_uint128)arg1 * arg2);
  x2 = (uint64_t)(x1 & UINT64_C(0xffffffffffffffff));
  x3 = (uint64_t)(x1 >> 64);
  *out1 = x2;
  *out2 = x3;
}
`;
