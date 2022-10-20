import { C_DI_MULTIPLICATION_IMM } from "@/enums";
import type { CryptOpt } from "@/types";
// so the idea here is, that if a number needs to be multiplied by one of those keys, we want to choose different instructions to implement that.
//C_SHL = "c_shl", // use at least one shift
//C_SHLX = "c_shlx", // same as shl, but use shlx, needs the const. in an reg, does not affect flags. and can save in different spot and can read from mem
// SHL kills OF/CF
export const IMM_MUL_DI_MAP: { [a in CryptOpt.HexConstant]: C_DI_MULTIPLICATION_IMM[] } = {
  // some are theoretical possible, but well.. I dont think they are sensible to be any faster than others.
  "0x2": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    C_DI_MULTIPLICATION_IMM.C_SHL, //  shl rax, 0x1;
    C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x1           shlx rax, rax, rbx;
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [rax + rax]
  ],
  "0x3": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [rax + 2 * rax]
  ],
  "0x4": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    C_DI_MULTIPLICATION_IMM.C_SHL, //  shl rax, 0x2;
    C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x2           shlx rax, rax, rbx;
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [4 * rax]
  ],
  "0x5": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    // C_DI_MULTIPLICATION_IMM.C_SHL, //  mov rbx, rax           shl  rax, 0x1          lea rax, [rax+rbx]
    // C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x1           shlx rcx, rax, rbx     lea rcx, [rax+rcx];
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [rax + 4 * rax]
  ],
  "0x8": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    C_DI_MULTIPLICATION_IMM.C_SHL, //  shl rax, 0x3;
    C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x3           shlx rax, rax, rbx;
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [8 * rax]
  ],
  "0xa": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    // C_DI_MULTIPLICATION_IMM.C_SHL, //                         shl rax, 0x1           lea rax, [rax + 4*rax]
    // C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x02          shlx rax, rax, rbx     lea rax, [rax + 4*rax]
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [rax + rax]                          lea rax, [rax + 4*rax]
  ],
  "0x10": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    C_DI_MULTIPLICATION_IMM.C_SHL, //  shl rax, 0x4;
    C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x4           shlx rax, rax, rbx;
    C_DI_MULTIPLICATION_IMM.C_LEA, //  lea rax, [8 * rax]     lea rax, [2 * rax]
  ],
  "0x13": [
    C_DI_MULTIPLICATION_IMM.C_IMUL,
    // C_DI_MULTIPLICATION_IMM.C_SHL, //  mov rax, rdx           shl  rax, 0x3          add rax, rdx             lea rax, [rdx + rax*2]
    // C_DI_MULTIPLICATION_IMM.C_SHLX, // mov rbx, 0x3           shlx rbx, rax, rbx     lea rbx, [rax + rbx]     lea rax, [rax + rbx*2]
    C_DI_MULTIPLICATION_IMM.C_LEA, //  mov rbx, rax           lea  rbx, [rbx+rbx*8]  lea rax, [rax+rbx*2]
  ],
};
