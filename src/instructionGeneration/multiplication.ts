import {
  AllocationFlags,
  C_DI_MULTIPLICATION_IMM,
  DECISION_IDENTIFIER,
  Flags,
  FlagState,
  Register,
} from "@/enums";
import { limbify, matchIMM, TEMP_VARNAME } from "@/helper";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import { mul_imm_imul, mul_imm_lea, mul_imm_shl, mul_imm_shlx } from "./multiplicationHelpers";

export function mul(c: CryptOpt.StringOperation): asm[] {
  // assumes, that the operands are max 64bit
  if (c.datatype !== "u64") {
    return mulx(c);
  }

  // TODO: add to decisions how to handle imms and which instr. to emit.

  if (!matchIMM(c.arguments[1])) {
    throw new Error(`Cannot multiply to u64 if arg1 is no imm ${c.arguments.join(",")}`);
  }

  let choice = C_DI_MULTIPLICATION_IMM.C_IMUL;
  if (DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM in c.decisions) {
    choice = Paul.chooseMulImm();
  }
  switch (choice) {
    case C_DI_MULTIPLICATION_IMM.C_SHL:
      return mul_imm_shl(c);
    case C_DI_MULTIPLICATION_IMM.C_SHLX:
      return mul_imm_shlx(c);
    case C_DI_MULTIPLICATION_IMM.C_LEA:
      return mul_imm_lea(c);
    case C_DI_MULTIPLICATION_IMM.C_IMUL:
    default:
      return mul_imm_imul(c);
  }
}
export function mulx(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);

  if (c.datatype === "u128") {
    return mulx_lo_lo_128(ra, c);
  } else if (c.arguments.length === 2 && c.datatype == "u64") {
    return mulx64(ra, c);
  }

  throw new Error("unsupported datatype.  Must be either u128 or u64");

  // else BE SURE TO HAVE THE FLAGS SAVED, mul will overwrite them.
  // [
  //   `mov ${resHiR}, ${Register.rdx}; Backup rdx, cause it may be read again`,
  //   `mov ${resLoR}, ${Register.rax}; backup whatever is in rax`,
  //   `mov ${Register.rax}, ${Register.rdx}; Prepare multiplication, since Rax is implicit instead of Rdx `,
  //   `mul ${argR};  ${u64hiVarname} (RDX), ${u64loVarname} (RAX)<- ${c.arguments[0]} * ${c.arguments[1]}`,
  //   `xchg ${resHiR}, ${Register.rdx}; whatever was in rdx before, can now be read again.`,
  //   `xchg ${resLoR}, ${Register.rax}; restore rax, and save lo in resLo`,
  // ];
}

function mulx64(ra: RegisterAllocator, c: CryptOpt.StringOperation): asm[] {
  if (c.name.length === 1) {
    console.log("will truncate result to 64bit");
    // TODO: what about arg[1] in oReg?
    // extra case for arg[0]^2
    //
    const isSqr = c.arguments[0] == c.arguments[1];
    const allocation = ra.allocate({
      oReg: c.name, // c.name is [lo]
      in: isSqr ? [c.arguments[0]] : c.arguments,
      allocationFlags:
        AllocationFlags.IN_0_AS_OUT_REGISTER |
        AllocationFlags.DISALLOW_IMM |
        AllocationFlags.SAVE_FLAG_OF |
        AllocationFlags.SAVE_FLAG_CF,
    });
    ra.declareFlagState(Flags.CF, FlagState.KILLED);
    ra.declareFlagState(Flags.OF, FlagState.KILLED);
    const [resLoR] = allocation.oReg;
    const [, arg1R] = allocation.in;
    return [
      ...ra.pres,
      isSqr
        ? `imul ${resLoR}, ${resLoR}; lo${c.name[0]} = ${c.arguments[0]}^2`
        : `imul ${resLoR}, ${arg1R}; lo${c.name[0]} = ${c.arguments[0]}*${c.arguments[1]}`,
    ];
  }
  if (c.arguments[0] === c.arguments[1]) {
    const allocation = ra.allocate({
      oReg: c.name, // c.name has [lo,hi]
      in: [c.arguments[0]],
      allocationFlags: AllocationFlags.ONE_IN_MUST_BE_IN_RDX | AllocationFlags.DISALLOW_IMM,
    });
    const [resLoR, resHiR] = allocation.oReg;

    // if can use mulx
    return [
      ...ra.pres,
      `mulx ${resHiR}, ${resLoR}, ${Register.rdx}; hi${c.name[1]}, lo${c.name[0]}<- ${c.arguments[0]}^2`,
    ];
  }

  // mulx stores the low half in the second destination operand (second operand)
  const allocation = ra.allocate({
    oReg: c.name, // c.name has [lo,hi]
    in: c.arguments,
    allocationFlags: AllocationFlags.ONE_IN_MUST_BE_IN_RDX | AllocationFlags.DISALLOW_IMM,
  });

  const [resLoR, resHiR] = allocation.oReg;
  const [arg0R, arg1R] = allocation.in;
  const argR = arg0R !== Register.rdx ? arg0R : arg1R;

  // if can use mulx
  return [
    ...ra.pres,
    `mulx ${resHiR}, ${resLoR}, ${argR}; hi${c.name[1]}, lo${c.name[0]}<- ${c.arguments[0]} * ${c.arguments[1]}`,
  ];
}
function mulx_lo_lo_128(ra: RegisterAllocator, c: CryptOpt.StringOperation): asm[] {
  // if we have only one symbol, we want to limbify them
  const [u64loVarname, u64hiVarname] = c.name.length == 1 ? limbify(c.name) : c.name;
  const allocs = ra.getCurrentAllocations();

  if (c.arguments.length !== 2) {
    throw new Error("currently only 2 args supported for mulx_lo_lo_128 or 3args if last one is imm");
  }

  const argCopy = [...c.arguments];
  // const arg0EqArg1 = argCopy[0] == argCopy[1];

  const [a_limbs, b_limbs] = argCopy.map((a) => {
    const is_a_128 = a in allocs && allocs[a].datatype === "u128";
    if (!is_a_128) {
      // x10 => [x10]
      return [a];
    }
    // just a regular u128
    const hi = limbify(a)[1];
    if (!hi) {
      throw new Error("a u128 must have an 'hi' lib here");
    }
    if (hi in allocs) {
      // x10 => [x10_0,x10_1]
      return limbify(a);
    }
    // from a zext
    if (limbify(a)[0] in allocs) {
      // x10 => [x10_0]
      return [limbify(a)[0]];
    }
    throw new Error("unsupported");
  });

  // u128 * u128
  if (a_limbs.length === 2 && b_limbs.length == 2) {
    throw new Error("currently unsupported u128*u128");
  }

  const isU64_U64 = a_limbs.length === 1 && b_limbs.length == 1;

  //u64^2: square
  if (isU64_U64 && a_limbs[0] == b_limbs[0]) {
    if (!u64hiVarname) {
      throw new Error("Must have an hiVarname if we square a u64");
    }
    const allocation = ra.allocate({
      oReg: [u64loVarname, u64hiVarname],
      in: a_limbs,
      allocationFlags: AllocationFlags.ONE_IN_MUST_BE_IN_RDX,
    });
    ra.declare128(c.name[0]);
    const [resLoR, resHiR] = allocation.oReg;

    return [
      ...ra.pres,
      `mulx ${resHiR}, ${resLoR}, ${Register.rdx}; ${u64hiVarname}, ${u64loVarname}<- ${c.arguments[0]}^2`,
    ];
  }

  // u64*u64
  if (isU64_U64) {
    if (!u64hiVarname) {
      throw new Error("Must have an hiVarname if we mul u64*u64");
    }
    const allocation = ra.allocate({
      oReg: [u64loVarname, u64hiVarname],
      in: [...a_limbs, ...b_limbs],
      allocationFlags:
        AllocationFlags.DONT_USE_IN_REGS_AS_OUT |
        AllocationFlags.ONE_IN_MUST_BE_IN_RDX |
        AllocationFlags.DISALLOW_IMM,
    });
    ra.declare128(c.name[0]);
    const [resLoR, resHiR] = allocation.oReg;
    const [arg0R, arg1R] = allocation.in;

    const argR = arg0R !== Register.rdx ? arg0R : arg1R;

    return [
      ...ra.pres,
      `mulx ${resHiR}, ${resLoR}, ${argR}; ${u64hiVarname}, ${u64loVarname}<- ${c.arguments[0]} * ${c.arguments[1]} (_0*_0)`,
    ];
  }
  // u128 * u64 (which may be an imm)

  const [u64_limb] = a_limbs.length > b_limbs.length ? b_limbs : a_limbs;
  const [u128_lo, u128_hi] = a_limbs.length > b_limbs.length ? a_limbs : b_limbs;

  if (!u64hiVarname) {
    throw new Error("Must have an hiVarname if mul u128*u64");
  }
  const allocation = ra.allocate({
    oReg: [TEMP_VARNAME, u64loVarname, u64hiVarname],
    in: [u64_limb, u128_lo, u128_hi],
    allocationFlags:
      AllocationFlags.DONT_USE_IN_REGS_AS_OUT |
      AllocationFlags.DISALLOW_MEM |
      AllocationFlags.DISALLOW_IMM |
      AllocationFlags.ONE_IN_MUST_BE_IN_RDX,
  });
  ra.declare128(c.name[0]);

  const u64_store = allocation.in[0];
  let [, blo_store, bhi_store] = allocation.in;

  if (typeof blo_store === "undefined" || typeof bhi_store === "undefined") {
    throw new Error(u128_hi + " or " + u128_lo + "  not all allocated, which they sure should. TSNH.");
  }

  const [tmp_var, resLoR, resHiR] = allocation.oReg;

  if (u64_store === Register.rdx) {
    // if u64limb is in rdx we dont need to do anything
    return [
      ...ra.pres,
      `;a_0 * (b_0||b_1)  ${u64hiVarname}, ${u64loVarname}<- ${c.arguments[0]} * ${c.arguments[1]} (u64*u128)`,
      `mulx ${resHiR}, ${tmp_var}, ${bhi_store}; __,tmp <- (a_0 in rdx) * b_hi`, // hi is killed
      `mulx ${resHiR}, ${resLoR}, ${blo_store}; hi,lo <- (a_0 in rdx) * b_lo`, // lo is set
      `lea ${resHiR}, [${resHiR}+${tmp_var}]; hi += tmp`,
    ];
  } else {
    // if b_lo was in Rdx, we want to xchg that with the u64_store. Then, value of b_lo is in whereever u64_store is.
    [bhi_store, blo_store] = blo_store === Register.rdx ? [bhi_store, u64_store] : [u64_store, blo_store];
    return [
      ...ra.pres,
      `xchg ${Register.rdx}, ${u64_store}; rdx now has ${u64_limb}`,
      `;a_0 * (b_0||b_1)  ${u64hiVarname}, ${u64loVarname}<- ${c.arguments[0]} * ${c.arguments[1]} (u64*u128)`,
      `mulx ${resHiR}, ${tmp_var}, ${bhi_store}; __,tmp <- (a_0 in rdx) * b_hi`, // hi is killed
      `mulx ${resHiR}, ${resLoR}, ${blo_store}; hi,lo <- (a_0 in rdx) * b_lo`, // lo is set
      `lea ${resHiR}, [${resHiR}+${tmp_var}]; hi += tmp`,
      `xchg ${Register.rdx}, ${u64_store}; rdx back to what it was before`,
    ];
  }
}

//TODO:
//consider using imul to get the lo limbs (save flags beforehand)
