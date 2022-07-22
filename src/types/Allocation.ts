import { ByteRegister, Flags, imm, mem, Register } from "@/types";

export interface AllocationReq {
  oReg: string[];
  in: string[]; // if nothing needs to be read, this is an empty array
  allocationFlags?: AllocationFlags;
}
export interface AllocationRes {
  oReg: Register[];
  in: Array<Register | mem | imm | Flags>;
}

export type U1MemoryAllocation = {
  datatype: "u1";
  store: mem;
};
export type U1RegisterAllocation = {
  datatype: "u1";
  store: ByteRegister;
};
export type U1FlagAllocation = {
  datatype: "u1";
  store: Flags;
};
export type U64MemoryAllocation = {
  datatype: "u64";
  store: mem;
};
export type U64RegisterAllocation = {
  datatype: "u64";
  store: Register;
};
export type U8MemoryAllocation = {
  datatype: "u8";
  store: mem;
};
export type U8RegisterAllocation = {
  datatype: "u8";
  store: Register;
};
export type U1Allocation = U1MemoryAllocation | U1RegisterAllocation | U1FlagAllocation;
export type U8Allocation = U8MemoryAllocation | U8RegisterAllocation;
export type U64Allocation = U64MemoryAllocation | U64RegisterAllocation;
export type U128Allocation = { datatype: "u128"; store?: undefined };
export type MemoryAllocation = U1MemoryAllocation | U8MemoryAllocation | U64MemoryAllocation;
export type RegisterAllocation = U1RegisterAllocation | U8RegisterAllocation | U64RegisterAllocation;
export type PointerAllocation = {
  datatype: string; // "u64[]";
  store: mem | Register;
};
export type ValueAllocation = U1Allocation | U8Allocation | U64Allocation;
// probably add auto as store mem as well
export type Allocation = ValueAllocation | PointerAllocation | U128Allocation;
export type Allocations = { [key: string]: Allocation };

export enum AllocationFlags {
  NONE = 0,
  DONT_USE_IN_REGS_AS_OUT = 1 << 0,

  // will by default re-use registers, if the read do not have any other dependants as the write-vars
  // e.g. x1(rax) = x2(rbx) + x3(rcx), if x2 has no other uses then x1, rbx may be used as an out-reg
  // this behaviour can be diabled, using this flag
  ONE_IN_MUST_BE_IN_RDX = 1 << 1,
  IN_0_AS_OUT_REGISTER = 1 << 2,
  DISALLOW_IMM = 1 << 3,
  DISALLOW_MEM = 1 << 4,

  SAVE_FLAG_OF = 1 << 9,
  SAVE_FLAG_CF = 1 << 10,
  // will check if all the in-variables are the same size. if they are not, will issue a movzx before.
  // if IMMs are allowed (i.e. DISALLOW_IMM is not set) those will be returned as is, and not loaded into a register or padded.
  SAME_SIZE_READ = 1 << 11,
  // this avoids, that the allocated stores, are ALL in memory (used for CMP)
  DISALLOW_ALL_MEM = 1 << 12,
}
export enum FlagState {
  ZERO,
  ALIVE,
  KILLED,
}
