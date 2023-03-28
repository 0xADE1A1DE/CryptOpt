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

export type StructName = `struct.${string}`;
export type PT = "i64*" | `${StructName}*`; // pointer type
export type ST = "i1" | "i64" | "i128"; // scalar type
export type DT = PT | ST; // datatype
export type OP =
  | "add"
  | "and"
  | "ashr"
  | "getelementptr"
  | "icmp"
  | "load"
  | "lshr"
  | "mul"
  | "or"
  | "shl"
  | "store"
  | "trunc"
  | "xor"
  | "zext"; //raw types
export type varName_T = `x${number}`;

export type SSA = {
  name: [varName_T];
  operation: OP;
  datatype: ST;
  arguments: string;
  modifiers: string;
};

export type raw_T = {
  operation: string;
  arguments: [string];
  returns: [{ datatype: PT; name: varName_T }];
  body: SSA[];
};
