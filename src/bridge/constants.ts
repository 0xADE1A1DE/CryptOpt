/**
 * Copyright 2022 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

export const BRIDGES = ["fiat", "bitcoin-core", "manual"];

// currently used only in src/CountCycle
export const KNOWN_SYMBOLS: {
  [symbol: string]: { bridge: "fiat" | "bitcoin-core"; method: string; curve: string };
} = {
  // fiat curves
  fiat_curve25519_carry_mul: { bridge: "fiat", method: "mul", curve: "curve25519" },
  fiat_curve25519_carry_square: { bridge: "fiat", method: "square", curve: "curve25519" },
  fiat_p224_mul: { bridge: "fiat", method: "mul", curve: "p224" },
  fiat_p224_square: { bridge: "fiat", method: "square", curve: "p224" },
  fiat_p256_mul: { bridge: "fiat", method: "mul", curve: "p256" },
  fiat_p256_square: { bridge: "fiat", method: "square", curve: "p256" },
  fiat_p384_mul: { bridge: "fiat", method: "mul", curve: "p384" },
  fiat_p384_square: { bridge: "fiat", method: "square", curve: "p384" },
  fiat_p434_mul: { bridge: "fiat", method: "mul", curve: "p434" },
  fiat_p434_square: { bridge: "fiat", method: "square", curve: "p434" },
  fiat_p448_solinas_carry_mul: { bridge: "fiat", method: "mul", curve: "p448_solinas" },
  fiat_p448_solinas_carry_square: { bridge: "fiat", method: "square", curve: "p448_solinas" },
  fiat_p521_carry_mul: { bridge: "fiat", method: "mul", curve: "p521" },
  fiat_p521_carry_square: { bridge: "fiat", method: "square", curve: "p521" },
  fiat_poly1305_carry_mul: { bridge: "fiat", method: "mul", curve: "poly1305" },
  fiat_poly1305_carry_square: { bridge: "fiat", method: "square", curve: "poly1305" },
  fiat_secp256k1_mul: { bridge: "fiat", method: "mul", curve: "secp256k1" },
  fiat_secp256k1_square: { bridge: "fiat", method: "square", curve: "secp256k1" },

  // bitcoin curve
  secp256k1_fe_mul_inner: { bridge: "bitcoin-core", method: "mul", curve: "secp256k1" },
  secp256k1_fe_sqr_inner: { bridge: "bitcoin-core", method: "square", curve: "secp256k1" },
};
