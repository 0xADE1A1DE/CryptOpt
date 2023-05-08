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

// import { isFlag, TEMP_VARNAME } from "@/helper";
// import { RegisterAllocator } from "@/registerAllocator";
// import type {
//   asm,
//   imm,
//   U1Allocation,
//   U1FlagAllocation,
//   U1MemoryAllocation,
//   U1RegisterAllocation,
//   U64Allocation,
// } from "@/types";
//
// import { fr__f_rm_rmi, fr__rm_rm_rmi } from "./fr__rfm_rm_rmi";
//
// export { fr__frm_rmi } from "./fr__frm_rmi";
// export { r__frmi_frmi } from "./r__frm_rmi";
//
// export function fr__rfm_rm_rmi(
//   cout: string,
//   out: string,
//   cin: U1Allocation,
//   arg0: U64Allocation | U1Allocation,
//   arg1: imm | U64Allocation | U1Allocation,
// ): asm[] {
//   if (isFlag(cin.store)) {
//     return fr__f_rm_rmi(cout, out, cin as U1FlagAllocation, arg0, arg1);
//   } else {
//     return fr__rm_rm_rmi(cout, out, cin as U1RegisterAllocation | U1MemoryAllocation, arg0, arg1);
//   }
// }
//
// export function CR__C_M_S(cout: string, out: string, cin: string, min: string, sub: string): asm[] {
//   const ra = RegisterAllocator.getInstance();
//   const allocations = ra.getCurrentAllocations();
//   return fr__rfm_rm_rmi(cout, out, a_minuend, a_subtrahend);
//   return [];
// }
//
// export function xR__C_M_S(out: string, cin: string, min: string, sub: string): asm[] {
//   return [];
// }
//
// export function CR__x_M_S(
//   cout: string,
//   out: string,
//
//   min: string,
//   sub: string,
// ): asm[] {
//   return [];
// }
//
// export function xR__x_M_S(out: string, cin: string, min: string, sub: string): asm[] {
//   return [];
// }
