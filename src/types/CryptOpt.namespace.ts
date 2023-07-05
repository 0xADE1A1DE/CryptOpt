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

import {
  C_DI_HANDLE_FLAGS_KK,
  C_DI_INSTRUCTION_AND,
  C_DI_MULTIPLICATION_IMM,
  C_DI_SPILL_LOCATION,
  DECISION_IDENTIFIER,
  Flags,
} from "@/enums";
import { parsedArgs } from "@/helper";

import { Fiat } from "./fiat.namespace";

export const FRAME_POINTER_OPTIONS = ["omit", "save", "constant"];
export type FRAME_POINTER_OPTIONS_T = (typeof FRAME_POINTER_OPTIONS)[number];

// eslint-disable-next-line @typescript-eslint/no-namespace
export namespace CryptOpt {
  export type StateFile = {
    parsedArgs: typeof parsedArgs;
    to: number[];
    body: StringOperation[];
    ratio: number;
    convergence: string[];
    seed: number;
    time: {
      validate: number;
      generateFiat: number;
      generateCryptopt: number;
    };
  };
  export type Operation_T =
    | Fiat.Operation
    // | "-" // name = arguments[0] - arguments[1] - arguments[2]
    // | "<<" // name = arguments[0] >> arguments [1]
    // | ">>" // name = arguments[0] >> arguments [1] (logical shift right)
    | "sar" // arithmetic shift right
    | "shrd" // name = arguments[0], arguments [1] >> arguments [2]; shift arg0 arg2-bits to the right, filling up with bits from arg1
    | "ror"
    | "^" //xor
    | "limb" // only available on u128 variables. selects limb arguments[1] form arguments[0] (x2=limb(x1, 1) with x1 a u128, with assign x2 the high limb from x1;
    | "cmp"
    | "zext";
  // grep operation -r *.json |tr -s '[[:space:]]' |  cut -d":" -f 3 | sed -e 's/,/|/' |sort |uniq

  export type Datatype_T = Fiat.Datatype;
  export type VarnameL = `${Fiat.VarName}_${number}`; // limb
  export type VarnameNL = Fiat.VarName; // no-limb
  export type Varname = VarnameL | VarnameNL; // either
  export type HexConstant = Fiat.HexConstant | `-${Fiat.HexConstant}`; // 0x{string} or -0x{string}
  export type ConstArgument =
    | Exclude<Fiat.ConstArgument, Fiat.HexConstant | Fiat.VarName>
    | HexConstant //-0xabc, 0xabe
    | Varname // extends Fiat Types to x1_1
    | Fiat.OutName;
  export type Argument = ConstArgument | DynArgument;

  /**
   *
   * This is more specific, using tuples rather than arrays.
   */
  export type DynArgumentName =
    | []
    | [Fiat.OutVarName] // out1[0]
    | [Fiat.OutName] // out1 (used in addcarryx)
    | [Varname] // x1
    | [Varname | "_", Varname] // x1, x2 and _, x2 for the case one does not care about HI limb
    | [Varname, "_"]; //  x2, _ for the case one does not care about LO limb /** cant combine them to avoid "_","_" which does not make sense.
  export interface DynArgument extends Omit<Fiat.DynArgument, "operation" | "arguments" | "name"> {
    name: DynArgumentName;
    operation: Operation_T;
    arguments: Argument[];
    decisions: {
      [DECISION_IDENTIFIER.DI_FLAG]?: [number, Flags[]];
      [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [number, string[]]; // probably len 2 or three (rdx or add(a,b,c))
      [DECISION_IDENTIFIER.DI_HANDLE_FLAGS_KK]?: [number, C_DI_HANDLE_FLAGS_KK[]];
      [DECISION_IDENTIFIER.DI_CHOOSE_IMM]?: [number, string[]]; // probably len 2 ["0x0", "-0x1"]
      [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]?: [number, C_DI_INSTRUCTION_AND[]]; // probably len 2  bzhi / and
      [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]?: [number, C_DI_MULTIPLICATION_IMM[]]; //
      [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [number, C_DI_SPILL_LOCATION[]];
    };
    decisionsHot: string[];
  }

  export type Function = Omit<Fiat.FiatFunction, "body"> & { body: StringOperation[] };

  export interface StaticCastOperation extends DynArgument {
    name: [];
    operation: "static_cast";
    arguments: Argument[];
  }

  export interface ArgumentWithStringArguments extends DynArgument {
    arguments: ConstArgument[];
  }

  /**
   * This is more specific, using tuples rather than arrays.
   * Also it narrows down to not use empty arrays
   */
  export interface ArgumentWithStringNames extends DynArgument {
    name: Exclude<DynArgument["name"], []>;
  }

  export interface StringOperation
    extends Omit<ArgumentWithStringNames, "arguments">,
      Omit<ArgumentWithStringArguments, "name"> {}
}
export type Node = CryptOpt.StringOperation;
export type Nodes = Node[];
