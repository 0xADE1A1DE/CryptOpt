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

export type METHOD_T = (typeof AVAILABLE_METHODS)[number];

export const AVAILABLE_METHODS = ["square", "mul", "reduce", "scmul"];

export const METHOD_DETAILS: {
  [f in METHOD_T]: {
    name: string;
  };
} = {
  mul: {
    // the operation 'multiply' is called fe_mul_inner in the library
    name: "secp256k1_fe_mul_inner",
  },
  square: {
    name: "secp256k1_fe_sqr_inner",
  },
  reduce: {
    name: "secp256k1_scalar_reduce_512",
  },
  scmul: {
    name: "secp256k1_scalar_mul_512",
  },
};
