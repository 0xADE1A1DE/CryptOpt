/**
 * Copyright 2023 University of Adelaide
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

// eslint-disable-next-line @typescript-eslint/no-namespace
export namespace Fiat {
  export type Operation =
    | "!"
    | "&"
    | "*"
    | "+"
    | "-"
    | "<<"
    | "="
    | ">>"
    | "|"
    | "~"
    | "addcarryx"
    | "cmovznz"
    | "mulx"
    | "static_cast"
    | "subborrowx";

  export type Datatype = "(auto)" | DTArray | DTScalar;
  export type DTScalar = `i${1 | 8 | 32 | 64 | 128}` | `u${1 | 8 | 32 | 64 | 128}`;
  export type DTArray = `u${8 | 32 | 64}[${number}]`;
  export type ArgName = `arg${number}`;
  export type OutName = `out${number}`;
  export type OutVarName = `${OutName}[${number}]`;
  export type ArgVarName = `${ArgName}[${number}]`;
  export type VarName = `x${number}`;
  export type HexConstant = `0x${string}`;

  export type FiatArgument<N extends ArgName | OutName> = {
    name: N;
  } & (FiatArgumentScalar | FiatArgumentArray);

  export interface FiatArgumentArray {
    datatype: DTArray;
    lbound: HexConstant[];
    ubound: HexConstant[];
  }

  export interface FiatArgumentScalar {
    datatype: DTScalar;
    lbound: HexConstant;
    ubound: HexConstant;
  }

  export interface Parameters {
    size?: number;
    comment?: string;
  }

  // as in: computed
  export type DynArgument = {
    datatype: Datatype;
    name: Array<"_" | VarName> | OutVarName[] | OutName[] | [];
    operation: Operation;
    arguments: Argument[];
    parameters?: Parameters;
  };

  // as in: symbols
  export type ConstArgument =
    | HexConstant /*0x12*/
    | ArgName /*arg1*/
    | ArgVarName /*arg1[2]*/
    | VarName /*x34*/
    | `${number}` /*"1" stringified number(eg. shift ops )*/;

  export type Argument = DynArgument | ConstArgument;
  export interface FiatFunction {
    operation: string;
    arguments: FiatArgument<ArgName>[];
    returns: FiatArgument<OutName>[];
    body: DynArgument[];
  }
}
