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

import { describe, expect, it, vi } from "vitest";

import { C_DI_HANDLE_FLAGS_KK, C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Flags, FlagState } from "@/enums";
import { add } from "@/instructionGeneration/addition";
import type { Allocations, CryptOpt, MemoryAllocation, RegisterAllocation } from "@/types";

// this not consistent in within itself (multiple vars in one single reg).
// Certain vars but is only used certain test
const allocs = {
  "0x0": { datatype: "u64", store: "rbp" },
  "0x39": { datatype: "u64", store: "r13" },
  "0x3ffffffffffffff": { datatype: "u64", store: "r8" },
  x10012: { datatype: "u128" },
  x10012_0: { datatype: "u64", store: "xmm12" },
  x10012_1: { datatype: "u64", store: "xmm11" },
  x10017: { datatype: "u128" },
  x10017_0: { datatype: "u64", store: "xmm15" },
  x102: { datatype: "u64", store: "r9" },
  x103: { datatype: "u64", store: "rdi" },
  x41: { datatype: "u128" },
  x41_0: { datatype: "u64", store: "xmm6" },
  x41_1: { datatype: "u64", store: "xmm5" },
  x42: { datatype: "u128" },
  x42_0: { datatype: "u64", store: "xmm14" },
  x44: { datatype: "u128" },
  x44_0: { datatype: "u64", store: "xmm8" },
  x44_1: { datatype: "u64", store: "xmm7" },
  x52: { datatype: "u128" },
  x52_0: { datatype: "u64", store: "xmm10" },
  x52_1: { datatype: "u64", store: "xmm9" },
  x78: { datatype: "u64", store: "r15" },
  x89: { datatype: "u128" },
  x89_0: { datatype: "u64", store: "rbx" },
  x92: { datatype: "u128" },
  x92_0: { datatype: "u64", store: "r11" },
  x93: { datatype: "u64", store: "rcx" },
  x94: { datatype: "u128" },
  x94_0: { datatype: "u64", store: "r12" },
  x96: { datatype: "u64", store: "rax" },
  x97: { datatype: "u128" },
  x97_1: { datatype: "u64", store: "r14" },
  x99: { datatype: "u64", store: "r10" },
};
describe("dummy", () => {
  it("should be okay", () => {
    expect("shell be right").toBeTruthy();
  });
});
