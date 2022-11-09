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

import { BINS } from "./enums";

export type CURVE_T = typeof AVAILABLE_CURVES[number];
export type METHOD_T = typeof AVAILABLE_METHODS[number];

export const SHA256SUMS = "sha256sums"; // the one created in the Makefile

export const AVAILABLE_CURVES = [
  "curve25519",
  "curve25519_solinas",
  "p224",
  "p256",
  "p384",
  "p434",
  "p448_solinas",
  "p521",
  "poly1305",
  "secp256k1",
  "secp256k1_dettman",
];
export const AVAILABLE_METHODS = ["square", "mul", "mul2", "add", "sub"];

export const METHOD_DETAILS: {
  [f in METHOD_T]: {
    name: {
      [k in BINS]: string;
    };
  };
} = {
  add: {
    name: {
      [BINS.unsaturated]: "carry_add",
      [BINS.wbw_montgomery]: "add",
      [BINS.solinas]: "",
      [BINS.dettman]: "",
    },
  },
  sub: {
    name: {
      [BINS.unsaturated]: "carry_sub",
      [BINS.wbw_montgomery]: "sub",
      [BINS.solinas]: "",
      [BINS.dettman]: "",
    },
  },
  mul: {
    // the operation 'multiply' is called carry_mul if the bin is unsaturated; mul if it is wbw_montgomery
    name: {
      [BINS.unsaturated]: "carry_mul",
      [BINS.wbw_montgomery]: "mul",
      [BINS.solinas]: "mul",
      [BINS.dettman]: "mul",
    },
  },
  mul2: {
    name: {
      [BINS.unsaturated]: "",
      [BINS.wbw_montgomery]: "",
      [BINS.solinas]: "mul2",
      [BINS.dettman]: "",
    },
  },
  square: {
    name: {
      [BINS.unsaturated]: "carry_square",
      [BINS.wbw_montgomery]: "square",
      [BINS.solinas]: "square",
      [BINS.dettman]: "square",
    },
  },
};

export const CURVE_DETAILS: {
  [curve in CURVE_T]: {
    bitwidth: number;
    argwidth: number;
    prime: string;
    binary: BINS;
    bounds: string[];
    magnitude?: number; // only used in dettman
    limbwidth?: number; // only used in dettman
  };
} = {
  curve25519: {
    argwidth: 5,
    bitwidth: 64,
    prime: "2^255 - 19",
    binary: BINS.unsaturated,
    bounds: [
      "0x18000000000000",
      "0x18000000000000",
      "0x18000000000000",
      "0x18000000000000",
      "0x18000000000000",
    ],
  },
  curve25519_solinas: {
    argwidth: 4,
    bitwidth: 64,
    prime: "2^255 - 19",
    binary: BINS.solinas,
    bounds: ["0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff"],
  },
  p224: {
    bitwidth: 64,
    argwidth: 4,
    prime: "2^224 - 2^96 + 1",
    binary: BINS.wbw_montgomery,
    bounds: ["0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff"],
  },
  p256: {
    argwidth: 4,
    bitwidth: 64,
    prime: "2^256 - 2^224 + 2^192 + 2^96 - 1",
    binary: BINS.wbw_montgomery,
    bounds: ["0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff"],
  },
  p384: {
    argwidth: 6,
    bitwidth: 64,
    prime: "2^384 - 2^128 - 2^96 + 2^32 - 1",
    binary: BINS.wbw_montgomery,
    bounds: [
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
    ],
  },
  p434: {
    argwidth: 7,
    bitwidth: 64,
    prime: "2^216 * 3^137 - 1",
    binary: BINS.wbw_montgomery,
    bounds: [
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
      "0xffffffffffffffff",
    ],
  },
  p448_solinas: {
    argwidth: 8,
    bitwidth: 64,
    prime: "2^448 - 2^224 - 1",
    binary: BINS.unsaturated,
    bounds: [
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
      "0x300000000000000",
    ],
  },
  p521: {
    argwidth: 9,
    bitwidth: 64,
    prime: "2^521 - 1",
    binary: BINS.unsaturated,
    bounds: [
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0xc00000000000000",
      "0x600000000000000",
    ],
  },
  poly1305: {
    argwidth: 3,
    bitwidth: 64,
    prime: "2^130 - 5",
    binary: BINS.unsaturated,
    bounds: ["0x300000000000", "0x180000000000", "0x180000000000"],
  },
  secp256k1: {
    argwidth: 4,
    bitwidth: 64,
    prime: "2^256 - 2^32 - 977",
    binary: BINS.wbw_montgomery,
    bounds: ["0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff", "0xffffffffffffffff"],
  },

  // /tmp/dettman_multiplication dettman 64 5 52 '2^256 - 4294968273' 1 mul --hints-file ${f} --no-wide-int --output-asm /dev/null --output /dev/null && echo $f ok
  secp256k1_dettman: {
    argwidth: 5,
    bitwidth: 64,
    magnitude: 1,
    limbwidth: 52,
    prime: "2^256 - 4294968273",
    binary: BINS.wbw_montgomery,
    bounds: [
      "0x1ffffffffffffe",
      "0x1ffffffffffffe",
      "0x1ffffffffffffe",
      "0x1ffffffffffffe",
      "0x1fffffffffffe",
    ],
  },
};
