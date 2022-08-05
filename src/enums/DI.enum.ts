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

export enum DECISION_IDENTIFIER {
  DI_FLAG = "di_flag", // if a choice needs to be taken on which flag to choose from (add via OF or CF)
  DI_CHOOSE_ARG = "di_choose_arg", // which Instruction arg to do something with (load to reg  or load to rdx or so...)

  // all the following have a dedicated C_DI~
  DI_HANDLE_FLAGS_KK = "di_handle_flags_kk", // how to deal with two killed flags (in an add situation, for now).
  DI_CHOOSE_IMM = "di_choose_imm", // in the case that there needs to be a immediate value to be loaded to a reg (think clear OF)
  DI_INSTRUCTION_AND = "di_choose_instr_and", // e.g. bzhi | and
  DI_MULTIPLICATION_IMM = "di_mult_imm", // if we multiply a value by a known immediate, we can choose different instrs. (*2 -> *2 | +itself | shl|| *5 lea [x+4*x])
  DI_SPILL_LOCATION = "di_spill_location", // e.g. mem or vec_reg
}

// C stands for choice (as in possible values for the DI_HANDLE_FLAGS_KK to be)
export enum C_DI_HANDLE_FLAGS_KK {
  C_ADD = "c_add", // just use the add operation
  C_XOR_ADX = "c_xor_adx", // get a unused register, xor it to 0, then decide again on which flag to use w/ adx
  C_TEST_ADX = "c_test_adx", // same as C_XOR_ADX, but not writing a 0 to a register.
}

export enum C_DI_IMM {
  ZERO = "0x0",
  NEG_1 = "-0x1",
}

export enum C_DI_INSTRUCTION_AND {
  C_AND = "c_and", // use plain old and
  C_BZHI = "c_bzhi", // zero higher bits
}

export enum C_DI_MULTIPLICATION_IMM {
  // C_lea_M = "c_lea_*", // lea rax = [      2 * rax]
  C_SHL = "c_shl", // use at least one shift
  C_SHLX = "c_shlx", // same as shl, but use shlx, needs the const. in an reg, does not affect flags. and can save in different spot and can read from mem
  C_LEA = "c_lea", // some combination (for now...)
  C_IMUL = "c_imul", //
}

export enum C_DI_SPILL_LOCATION {
  C_DI_MEM = "c_mem",
  C_DI_XMM_REG = "c_xmm_reg",
}
