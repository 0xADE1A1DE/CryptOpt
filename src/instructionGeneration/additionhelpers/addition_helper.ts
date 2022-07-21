/**
 * This is a simple (yet long) mapper file.
 * It provides collection the functions of the form OUT__ARG0_ARG1_ARG2:
 *  - fr__rm_rm
 *  - r__rm_rm_rmf
 *  - fr__rm_rm_rmf
 *  - r__rmf_rmf
 * where r stands for register, m for memory, f for flag.
 *
 * They will then analyse the arguments and call the respective implementation function
 *
 * All of them will emit the necessary asm-instructions, to add the arguments together.
 * They will also take care of the allocation and new allocation of the results. (name of out-flag and out-reg)
 */

import { isByteRegister, isFlag, isMem, isRegister } from "@/helper";
import {
  MemoryAllocation,
  RegisterAllocation,
  U1Allocation,
  U1FlagAllocation,
  U1MemoryAllocation,
  U1RegisterAllocation,
  U64Allocation,
  U64RegisterAllocation,
  ValueAllocation,
  asm,
} from "@/types";
import { fr__r_r, fr__r_m, fr__m_m } from "./fr__rm_rm";
import {
  r__r_r_f,
  r__r_r_r,
  r__r_r_m,
  r__r_m_f,
  r__r_m_r,
  r__r_m_m,
  r__m_m_f,
  r__m_m_r,
  r__m_m_m,
} from "./r__rm_rm_rmf";
import {
  fr__r_r_f,
  fr__r_r_r,
  fr__r_r_m,
  fr__r_m_f,
  fr__r_m_r,
  fr__r_m_m,
  fr__m_m_f,
  fr__m_m_r,
  fr__m_m_m,
} from "./fr__rm_rm_rmf";
import { r__r_r, r__r_m, r__r_f, r__m_m, r__m_f, r__f_f } from "./r__rmf_rmf";

export function fr__rm_rm(cout: string, out: string, arg0: ValueAllocation, arg1: ValueAllocation): asm[] {
  if (isFlag(arg0.store) || isFlag(arg1.store)) {
    // what?
    throw new Error("flags are not supported here in fr__rm_rm.TSNH");
  }
  const mem0 = isMem(arg0.store);
  const mem1 = isMem(arg1.store);
  if (!mem0 && !mem1) {
    return fr__r_r(cout, out, arg0 as RegisterAllocation, arg1 as RegisterAllocation);
  }
  if (!mem0 && mem1) {
    return fr__r_m(cout, out, arg0 as RegisterAllocation, arg1 as MemoryAllocation);
  }
  if (mem0 && !mem1) {
    return fr__r_m(cout, out, arg1 as RegisterAllocation, arg0 as MemoryAllocation);
  }
  if (mem0 && mem1) {
    return fr__m_m(cout, out, arg0 as MemoryAllocation, arg1 as MemoryAllocation);
  }
  throw new Error("arguments are not rr / rm / mm. Abort");
}

export function r__rm_rm_rmf(
  out: string,
  arg0: U64Allocation,
  arg1: MemoryAllocation | RegisterAllocation,
  cin: U1Allocation,
): asm[] {
  const reg0 = isRegister(arg0.store);
  const reg1 = isRegister(arg1.store) || isByteRegister(arg1.store);
  const cinFlag = isFlag(cin.store);
  const cinMem = isMem(cin.store);
  // dont check for register here, since U1RegisterAllocations are not necessarily in rax but rather in al

  //  R + R + RMR
  if (reg0 && reg1) {
    if (cinFlag) {
      return r__r_r_f(
        out,
        arg0 as U64RegisterAllocation,
        arg1 as RegisterAllocation,
        cin as U1FlagAllocation,
      );
    }
    if (cinMem) {
      return r__r_r_m(
        out,
        arg0 as U64RegisterAllocation,
        arg1 as RegisterAllocation,
        cin as U1MemoryAllocation,
      );
    }
    // cin must be in Reg then
    return r__r_r_r(
      out,
      arg0 as U64RegisterAllocation,
      arg1 as RegisterAllocation,
      cin as U1RegisterAllocation,
    );
  }
  //  R + M + RMR
  if (reg0 && !reg1) {
    if (cinFlag) {
      return r__r_m_f(out, arg0 as U64RegisterAllocation, arg1 as MemoryAllocation, cin as U1FlagAllocation);
    }
    // cin must be in Reg then
    if (cinMem) {
      return r__r_m_m(
        out,
        arg0 as U64RegisterAllocation,
        arg1 as MemoryAllocation,
        cin as U1MemoryAllocation,
      );
    }
    return r__r_m_r(
      out,
      arg0 as U64RegisterAllocation,
      arg1 as MemoryAllocation,
      cin as U1RegisterAllocation,
    );
  }
  //  M + R + RMR (note switched arg0 and arg0 to r_r_m_x function)
  if (!reg0 && reg1) {
    if (cinFlag) {
      return r__r_m_f(out, arg1 as RegisterAllocation, arg0 as MemoryAllocation, cin as U1FlagAllocation);
    }
    if (cinMem) {
      return r__r_m_m(out, arg1 as RegisterAllocation, arg0 as MemoryAllocation, cin as U1MemoryAllocation);
    }
    // cin must be in Reg then
    return r__r_m_r(out, arg1 as RegisterAllocation, arg0 as MemoryAllocation, cin as U1RegisterAllocation);
  }
  //  M + M + RMR
  if (!reg0 && !reg1) {
    if (cinFlag) {
      return r__m_m_f(out, arg1 as MemoryAllocation, arg0 as MemoryAllocation, cin as U1FlagAllocation);
    }
    if (cinMem) {
      return r__m_m_m(out, arg1 as MemoryAllocation, arg0 as MemoryAllocation, cin as U1MemoryAllocation);
    }
    // cin must be in Reg then
    return r__m_m_r(out, arg1 as MemoryAllocation, arg0 as MemoryAllocation, cin as U1RegisterAllocation);
  }

  throw new Error("arguments are not rrf / rmf / mmf / rrr / rmr / mmr / rrm / rmm / mmm. Abort");
}

// note that this is "the same" function as r__rm_rm_rmf" distinguish-wise.
// instead of r_x_x_x, fr_x_x_x will be called, and the cout-arg is passed.
// TODO: remove code-duplication
export function fr__rm_rm_rmf(
  cout: string,
  out: string,
  arg0: U64Allocation,
  arg1: U64Allocation | U1Allocation,
  cin: U1Allocation,
): asm[] {
  if (isByteRegister(arg0.store)) {
    throw new Error(
      "not supported. TSNH. either put u1 as arg1 or carry in. if they alreaady are, then implement u1+u1+u1",
    );
  }
  const reg0 = isRegister(arg0.store);
  const reg1 = isRegister(arg1.store) || isByteRegister(arg1.store);
  const cinFlag = isFlag(cin.store);
  const cinMem = isMem(cin.store);
  // dont check for register here, since U1RegisterAllocations are not necessarily in rax but rather in al

  //  R + R + RMR
  if (reg0 && reg1) {
    if (cinFlag) {
      return fr__r_r_f(
        cout,
        out,
        arg0 as U64RegisterAllocation,
        arg1 as RegisterAllocation,
        cin as U1FlagAllocation,
      );
    }
    if (cinMem) {
      return fr__r_r_m(
        cout,
        out,
        arg0 as U64RegisterAllocation,
        arg1 as RegisterAllocation,
        cin as U1MemoryAllocation,
      );
    }
    // cin must be in Reg then
    return fr__r_r_r(
      cout,
      out,
      arg0 as U64RegisterAllocation,
      arg1 as RegisterAllocation,
      cin as U1RegisterAllocation,
    );
  }
  //  R + M + RMR
  if (reg0 && !reg1) {
    if (cinFlag) {
      return fr__r_m_f(
        cout,
        out,
        arg0 as U64RegisterAllocation,
        arg1 as MemoryAllocation,
        cin as U1FlagAllocation,
      );
    }
    // cin must be in Reg then
    if (cinMem) {
      return fr__r_m_m(
        cout,
        out,
        arg0 as U64RegisterAllocation,
        arg1 as MemoryAllocation,
        cin as U1MemoryAllocation,
      );
    }
    return fr__r_m_r(
      cout,
      out,
      arg0 as U64RegisterAllocation,
      arg1 as MemoryAllocation,
      cin as U1RegisterAllocation,
    );
  }
  //  M + R + RMR (note switched arg0 and arg0 to r_r_m_x function)
  if (!reg0 && reg1) {
    if (cinFlag) {
      return fr__r_m_f(
        cout,
        out,
        arg1 as RegisterAllocation,
        arg0 as MemoryAllocation, // cause of error above, we can assume that its a mem
        cin as U1FlagAllocation,
      );
    }
    if (cinMem) {
      return fr__r_m_m(
        cout,
        out,
        arg1 as RegisterAllocation,
        arg0 as MemoryAllocation, // cause of error above, we can assume that its a mem
        cin as U1MemoryAllocation,
      );
    }
    // cin must be in Reg then
    return fr__r_m_r(
      cout,
      out,
      arg1 as RegisterAllocation,
      arg0 as MemoryAllocation, // cause of error above, we can assume that its a mem
      cin as U1RegisterAllocation,
    );
  }
  //  M + M + RMR
  if (!reg0 && !reg1) {
    if (cinFlag) {
      return fr__m_m_f(
        cout,
        out,
        arg1 as MemoryAllocation, // cause of error above, we can assume that its a mem
        arg0 as MemoryAllocation,
        cin as U1FlagAllocation,
      );
    }
    if (cinMem) {
      return fr__m_m_m(
        cout,
        out,
        arg1 as MemoryAllocation, // cause of error above, we can assume that its a mem
        arg0 as MemoryAllocation,
        cin as U1MemoryAllocation,
      );
    }
    // cin must be in Reg then
    return fr__m_m_r(
      cout,
      out,
      arg1 as MemoryAllocation, // cause of error above, we can assume that its a mem
      arg0 as MemoryAllocation,
      cin as U1RegisterAllocation,
    );
  }
  throw new Error("arguments are not rrf / rmf / mmf / rrr / rmr / mmr / rrm / rmm / mmm. Abort");
}

export function r__rmf_rmf(out: string, arg0: ValueAllocation, arg1: ValueAllocation): asm[] {
  const flag0 = isFlag(arg0.store);
  const mem0 = isMem(arg0.store);
  const reg0 = !flag0 && !mem0;

  const flag1 = isFlag(arg1.store);
  const mem1 = isMem(arg1.store);
  const reg1 = !flag1 && !mem1;

  /**
   *
   * ff
   * mm
   * rr
   *
   * mf
   *
   * rm
   *
   * rf
   *
   */
  if (flag0 && flag1) {
    // ff
    return r__f_f(out, arg0 as U1FlagAllocation, arg1 as U1FlagAllocation);
  }
  if (mem0 && mem1) {
    //mm
    return r__m_m(out, arg0 as MemoryAllocation, arg1 as MemoryAllocation);
  }
  if (reg0 && reg1) {
    //rr
    return r__r_r(out, arg0 as RegisterAllocation, arg1 as RegisterAllocation);
  }

  if (mem0 && flag1) {
    // mf
    return r__m_f(out, arg0 as MemoryAllocation, arg1 as U1FlagAllocation);
  }
  if (flag0 && mem1) {
    // fm-mf NOTE the argument swap
    return r__m_f(out, arg1 as MemoryAllocation, arg0 as U1FlagAllocation);
  }

  if (reg0 && mem1) {
    // rm
    return r__r_m(out, arg0 as RegisterAllocation, arg1 as MemoryAllocation);
  }
  if (mem0 && reg1) {
    // mr NOTE the argument swap
    return r__r_m(out, arg1 as RegisterAllocation, arg0 as MemoryAllocation);
  }

  if (reg0 && flag1) {
    // rf
    return r__r_f(out, arg0 as RegisterAllocation, arg1 as U1FlagAllocation);
  }
  if (flag0 && reg1) {
    // fr NOTE the argument swap
    return r__r_f(out, arg1 as RegisterAllocation, arg0 as U1FlagAllocation);
  }

  throw new Error("arguments are not  rr / rm / rf / mm / mf / ff. Abort");
}
