// import { Flags, FlagState, Register } from "@/enums";
// import { isByteRegister, isFlag, isImm, isMem, isSafeImm32, zx } from "@/helper";
// import { RegisterAllocator } from "@/registerAllocator";
// import {
//   asm,
//   imm,
//   RegisterAllocation,
//   U1Allocation,
//   U64Allocation,
//   U64RegisterAllocation,
//   U1RegisterAllocation,
//   U64MemoryAllocation,
//   MemoryAllocation,
// } from "@/types";
// import { sub } from "../subtraction";
//
// function r__CF_rm(out: string, arg0: U64Allocation): asm[] {
//   const ra = RegisterAllocator.getInstance();
//   const reg = ra.backupIfStoreHasDependencies(arg0, out);
//
//   // because it will be overwritten
//   ra.spillFlag(Flags.CF);
//   ra.spillFlag(Flags.OF);
//
//   return [`sbb ${reg}, 0x0; ${out} -= CF`];
// }
//
// // r = minuend - subtrahend
// export function r__frmi_frmi(
//   out: string,
//   arg0_minuend: imm | U64Allocation | U1Allocation,
//   arg1_subtrahend: imm | U64Allocation | U1Allocation,
// ): asm[] {
//   const ra = RegisterAllocator.getInstance();
//   // cant calculate imm - xxx
//   if (isImm(arg0_minuend)) {
//     const r = ra.loadImmToReg64(arg0_minuend);
//     arg0_minuend = { store: r, datatype: "u64" } as U64RegisterAllocation;
//   } else if (isFlag(arg0_minuend.store)) {
//     // also cannot do any CF - xxx
//     const r = ra.spillFlag(arg0_minuend.store);
//     if (!r) {
//       throw new Error("TSNH. Why cant I spill that flag here?");
//     }
//     arg0_minuend = { store: r, datatype: "u1" } as U1RegisterAllocation;
//   } else if (isMem(arg0_minuend.store)) {
//     // TODO: could optimize, if minuend is small and subtrahend too.
//     arg0_minuend = ra.moveOneMemoryToRegister([arg0_minuend], "movzx")[0] as RegisterAllocation;
//   }
//
//   // from here on, r__r_fmri
//   return r__r_fmri(out, arg0_minuend as RegisterAllocation, arg1_subtrahend);
// }
//
// function r__r_fmri(
//   out: string,
//   arg0_minuend: RegisterAllocation,
//   arg1_subtrahend: imm | U64Allocation | U1Allocation,
// ): asm[] {
//   // r - CF  -> sbb r, 0x0 ; kills OF
//   // r - OF  -> seto r8; movzx r64, r8;    r__r_rm
//   // r - i   ->   if(safe32)               lea rax, [rax - imm]
//   // r - i   ->     else     mov r64, imm; r__r_rm
//   // r - r/m ->                            r__r_rm
//
//   const ra = RegisterAllocator.getInstance();
//
//   // IMM
//   if (isImm(arg1_subtrahend)) {
//     if (isSafeImm32(arg1_subtrahend)) {
//       const r = ra.backupIfStoreHasDependencies(arg0_minuend, out);
//       return [`lea ${r}, [ ${r} - ${arg1_subtrahend} ]; `];
//     } else {
//       const r = ra.loadImmToReg64(arg1_subtrahend);
//
//       arg1_subtrahend = { store: r, datatype: "u64" } as U64RegisterAllocation;
//       return r__r_rm(out, arg0_minuend, arg1_subtrahend);
//     }
//   }
//
//   // FLAGs
//   if (isFlag(arg1_subtrahend.store)) {
//     if (arg1_subtrahend.store == Flags.CF) {
//       ra.spillFlag(Flags.OF);
//       ra.declareFlagState(Flags.CF, FlagState.KILLED);
//       const r = ra.backupIfStoreHasDependencies(arg0_minuend, out);
//       return [`sbb ${r}, 0x0; ${r}-=CF`];
//     } else {
//       // flag is in OF
//       const r = ra.spillFlag(Flags.OF);
//       arg1_subtrahend = { store: r, datatype: "u1" } as U1RegisterAllocation;
//       return r__r_rm(out, arg0_minuend, arg1_subtrahend);
//     }
//   }
//
//   return r__r_rm(out, arg0_minuend, arg1_subtrahend);
// }
// function r__r_rm(
//   out: string,
//   arg0_minuend: RegisterAllocation,
//   arg1_subtrahend: RegisterAllocation | MemoryAllocation,
// ): asm[] {
//   const ra = RegisterAllocator.getInstance();
//
//   ra.spillFlag(Flags.CF);
//   ra.spillFlag(Flags.OF);
//
//   // r8  = r8a  - r/m8b  ->                    sub r8a,  r/m8b
//   // r64 = r8a  - r/m64b -> movzx r64a, r8a;   sub r64a, r/m64b
//   // r64 = r64a - r/m8b  -> movzx r64b, r/m8b; sub r64a, r64b
//
//   if (arg0_minuend.datatype === "u1" && arg0_minuend.datatype === arg1_subtrahend.datatype) {
//     const r = ra.backupIfStoreHasDependencies(arg0_minuend, out);
//     if (!isByteRegister(r)) {
//       // would then need too zx arg0_minuend.store, or getByteRegFromQwReg;
//       // but should actually investigate why we dont get r8
//       throw new Error("should return Byte Reg.");
//     }
//     return [`sub ${r}, ${arg1_subtrahend.store}; r8 -= r/m8`];
//   }
//   if (arg0_minuend.datatype === "u1") {
//     const r = ra.backupIfStoreHasDependencies(arg0_minuend, out);
//     const { inst, reg } = zx(r);
//
//     return [inst, `sub ${reg}, ${arg1_subtrahend.store}; zx'ed arg0 -= arg1 `];
//   }
//   if (arg1_subtrahend.datatype === "u1") {
//     if (isMem(arg1_subtrahend.store)) {
//       arg1_subtrahend = ra.moveOneMemoryToRegister([arg1_subtrahend], "movzx")[0] as U64RegisterAllocation;
//     }
//   }
//   const r = ra.backupIfStoreHasDependencies(arg0_minuend, out);
//
//   const { inst, reg } = zx(r); // in case minuend was reg/8
//
//   return [inst, `sub ${reg}, ${arg1_subtrahend.store}; zx'ed arg0 -= arg1 `];
// }
