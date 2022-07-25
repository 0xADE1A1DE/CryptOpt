import { C_DI_MULTIPLICATION_IMM, Flags, Register } from "@/enums";
import type { CryptOpt } from "@/types";

export const COMPILERS = ["gcc", "clang"];

export const ARG_PREFIX = "arg"; // prefix as in arg1[3]
export const OUT_PREFIX = "out"; // prefix as in out2[2]
export const ARG_REGEX = RegExp(`^(?<base>(${ARG_PREFIX}|${OUT_PREFIX})\\d+)\\[(?<offset>\\d+)\\]$`);
export const ARG_PREFIX_REGEX = RegExp(`^(${ARG_PREFIX}|${OUT_PREFIX})\\d+$`);
export const MEM_REGEX = RegExp(`\\[ (?<base>\\S{2,3}) \\+ (?<offset>0x[0-f]+) \\]`, "i");
export const XD_REGEX = /^x(\d+)(_\d)?$/;
export const IMM_VAL_PREFIX = "imm_val";
export const IMM_REGEX = /^-?(0x[0-F]+|[0-9]+)$/i;
export const TEMP_VARNAME = "x0";
export const CALLER_SAVE_PREFIX = "calSv-";

// let op be \in CHAINABLE_OPS, then A op (B op (C op D)) will be squashed to A op B op C op D
export const CHAINABLE_OPS: CryptOpt.Operation_T[] = ["-", "&", "|"];
export const LSB_MAPPING: { [constant: string]: string } = {
  "0x1": "0x1",
  "0x3": "0x2",
  "0x7": "0x3",
  "0xf": "0x4",
  "0x1f": "0x5",
  "0x3f": "0x6",
  "0x7f": "0x7",
  "0xff": "0x8",
  "0x1ff": "0x9",
  "0x3ff": "0xa",
  "0x7ff": "0xb",
  "0xfff": "0xc",
  "0x1fff": "0xd",
  "0x3fff": "0xe",
  "0x7fff": "0xf",
  "0xffff": "0x10",
  "0x1ffff": "0x11",
  "0x3ffff": "0x12",
  "0x7ffff": "0x13",
  "0xfffff": "0x14",
  "0x1fffff": "0x15",
  "0x3fffff": "0x16",
  "0x7fffff": "0x17",
  "0xffffff": "0x18",
  "0x1ffffff": "0x19",
  "0x3ffffff": "0x1a",
  "0x7ffffff": "0x1b",
  "0xfffffff": "0x1c",
  "0x1fffffff": "0x1d",
  "0x3fffffff": "0x1e",
  "0x7fffffff": "0x1f",
  "0xffffffff": "0x20",
  "0x1ffffffff": "0x21",
  "0x3ffffffff": "0x22",
  "0x7ffffffff": "0x23",
  "0xfffffffff": "0x24",
  "0x1fffffffff": "0x25",
  "0x3fffffffff": "0x26",
  "0x7fffffffff": "0x27",
  "0xffffffffff": "0x28",
  "0x1ffffffffff": "0x29",
  "0x3ffffffffff": "0x2a",
  "0x7ffffffffff": "0x2b", // poly1305
  "0xfffffffffff": "0x2c", // poly1305
  "0x1fffffffffff": "0x2d",
  "0x3fffffffffff": "0x2e",
  "0x7fffffffffff": "0x2f",
  "0xffffffffffff": "0x30",
  "0x1ffffffffffff": "0x31",
  "0x3ffffffffffff": "0x32",
  "0x7ffffffffffff": "0x33", // curve25519 // in the constant are the least 51 bits set. So we need 51 in a register which is 0x33
  "0xfffffffffffff": "0x34",
  "0x1fffffffffffff": "0x35",
  "0x3fffffffffffff": "0x36",
  "0x7fffffffffffff": "0x37",
  "0xffffffffffffff": "0x38", // p448 solinas
  "0x1ffffffffffffff": "0x39", // p521
  "0x3ffffffffffffff": "0x3a", // p521
  "0x7ffffffffffffff": "0x3b",
  "0xfffffffffffffff": "0x3c",
  "0x1fffffffffffffff": "0x3d",
  "0x3fffffffffffffff": "0x3e",
  "0x7fffffffffffffff": "0x3f",
  "0xffffffffffffffff": "0x40",
};
// pretty much the last key in LSB_MAPPING. used to check if string-imm-vals are >64bit i.e. 2 limbs
export const IMM_64_BIT_IMM = `0x${Array(8 * 2)
  .fill("f")
  .join("")}` as `0x${string}`;

export const IMM_31_BIT_IMM = `0x7${Array(4 * 2 - 1)
  .fill("f")
  .join("")}` as `0x${string}`;

export const IMM_32_BIT_IMM = `0x${Array(4 * 2)
  .fill("f")
  .join("")}` as `0x${string}`;

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

// Those constants are the ones where we dont care about in the Dependency graph;
export const DONT_CARE_IMM_VALS = [
  "0x0",
  "-0x1",
  "-0x2" /* note, cannot use toImm here, cause we cant require "./helpers, cause it itself requires this constants filter"*/,
].concat(Object.values(LSB_MAPPING));

export const TEMP_VAR_START_NUM = 10000;
export const TEMP_VAR_END_NUM = 99999;
export const PRINT_EVERY = 10; // this is to have the correct scaling in the graph
export const LOG_EVERY = 20; // log line (to screen and file) every 20 percent, if this var it set to 20, I guess must be a multple of PRINTevery
// the higher that number, the mire logs.

// that Array contains the order of the arguments, which are passed to the method
export const CALLING_CONVENTION_REGISTER_ORDER = [
  Register.rdi, // First argument goes here
  Register.rsi, // second here
  Register.rdx, // well, you guessed it, third is in here
  Register.rcx, // four
  Register.r8, // five
  Register.r9, // sixth there.
  // next are on the stack but we are not bothering with that now.
];

//whereas this ones are the values of those need to be preserved
export const CALLER_SAVE_REGISTERS = [
  Register.rbx,
  Register.rbp,
  Register.r12,
  Register.r13,
  Register.r14,
  Register.r15,
];

export const ADX = {
  [Flags.CF]: "adcx",
  [Flags.OF]: "adox",
};

export const SETX = {
  [Flags.CF]: "setc",
  [Flags.OF]: "seto",
};

// maps from the llvm icmp-modifer to the x86-64 setCC mnemonic
// https://llvm.moe/ocaml/Llvm.Icmp.html
export const llvm2CC: { [llvm in "eq" | "ne" | `${"u" | "s"}${"g" | "l"}${"t" | "e"}`]: `set${string}` } = {
  eq: "sete", //   Equal
  ne: "setne", //  Not equal
  ugt: "seta", //  Unsigned greater than
  uge: "setae", // Unsigned greater or equal
  ult: "setb", //  Unsigned less than
  ule: "setbe", // Unsigned less or equal
  sgt: "setg", //  Signed greater than
  sge: "setge", // Signed greater or equal
  slt: "setl", //  Signed less than
  sle: "setle", // Signed less or equal
};

// Colors
export const rd = "\x1b[31m";
export const gn = "\x1b[32m";
export const yl = "\x1b[33m";
export const bl = "\x1b[34m";
export const pu = "\x1b[35m";
export const cy = "\x1b[36m";
export const re = "\x1b[0m";

// two tail.
// c.f http://www.sthda.com/english/wiki/t-distribution-table
// f/α ,0.9 ,0.5 ,0.3 ,0.2 ,0.1 ,0.05 ,0.02 ,0.01 ,0.001
export enum CONF_IDX {
  conf_09,
  conf_05,
  conf_03,
  conf_02,
  conf_01,
  conf_005,
  conf_002,
  conf_001,
  conf_0001,
}

export const ttable: [
  //                   alpha - confidence level
  CONF_IDX.conf_09, // 0.9   - 10%
  CONF_IDX.conf_05, // 0.5   - 50%
  CONF_IDX.conf_03, // 0.3   - 70%
  CONF_IDX.conf_02, // 0.2   - 80%
  CONF_IDX.conf_01, // 0.1   - 90%
  CONF_IDX.conf_005, //0.05  - 95%
  CONF_IDX.conf_002, //0.02  - 98%
  CONF_IDX.conf_001, //0.01  - 99%
  CONF_IDX.conf_0001, //0.001- 99.9%
][] = [
  [-1, -1, -1, -1, -1, -1, -1, -1, -1], // to align the others to the deg_freedom
  // confidence level
  // 10%,50%,70%,80% ,  90% ,  95%  ,   98% ,99%, 99.9%]
  [0.158, 1, 2, 3.078, 6.314, 12.706, 31.821, 64, 637],
  [0.142, 0.816, 1.386, 1.886, 2.92, 4.303, 6.965, 10, 31.598],
  [0.137, 0.765, 1.25, 1.638, 2.353, 3.182, 4.541, 5.841, 12.929],
  [0.134, 0.741, 1.19, 1.533, 2.132, 2.776, 3.747, 4.604, 8.61],
  [0.132, 0.727, 1.156, 1.476, 2.015, 2.571, 3.365, 4.032, 6.869],
  [0.131, 0.718, 1.134, 1.44, 1.943, 2.447, 3.143, 3.707, 5.959],
  [0.13, 0.711, 1.119, 1.415, 1.895, 2.365, 2.998, 3.499, 5.408],
  [0.13, 0.706, 1.108, 1.397, 1.86, 2.306, 2.896, 3.355, 5.041],
  [0.129, 0.703, 1.1, 1.383, 1.833, 2.263, 2.821, 3.25, 4.781],
  [0.129, 0.7, 1.093, 1.372, 1.812, 2.228, 2.764, 3.169, 4.587],
  [0.129, 0.697, 1.088, 1.363, 1.796, 2.201, 2.718, 3.106, 4.437],
  [0.128, 0.695, 1.083, 1.356, 1.782, 2.179, 2.681, 3.055, 4.318],
  [0.128, 0.694, 1.079, 1.35, 1.771, 2.16, 2.65, 3.012, 4.221],
  [0.128, 0.692, 1.076, 1.345, 1.761, 2.145, 2.624, 2.977, 4.14],
  [0.128, 0.691, 1.074, 1.341, 1.753, 2.131, 2.602, 2.947, 4.073],
  [0.128, 0.69, 1.071, 1.337, 1.746, 2.12, 2.583, 2.921, 4.015],
  [0.128, 0.689, 1.069, 1.333, 1.74, 2.11, 2.567, 2.898, 3.965],
  [0.127, 0.688, 1.067, 1.33, 1.734, 2.101, 2.552, 2.878, 3.922],
  [0.127, 688, 1.066, 1.328, 1.729, 2.093, 2.539, 2.861, 3.883],
  [0.127, 0.687, 1.064, 1.325, 1.725, 2.086, 2.528, 2.845, 3.85],
  [0.127, 0.686, 1.063, 1.323, 1.721, 2.08, 2.518, 2.831, 3.819],
  [0.127, 0.686, 1.061, 1.321, 1.717, 2.074, 2.508, 2.819, 3.792],
  [0.127, 0.685, 1.06, 1.319, 1.714, 2.069, 2.5, 2.807, 3.767],
  [0.127, 0.685, 1.059, 1.318, 1.711, 2.064, 2.492, 2.797, 3.745],
  [0.127, 0.684, 1.058, 1.316, 1.708, 2.06, 2.485, 2.787, 3.725],
  [0.127, 0.684, 1.058, 1.315, 1.706, 2.056, 2.479, 2.779, 3.707],
  [0.137, 0.684, 1.057, 1.314, 1.703, 2.052, 2.473, 2.771, 3.69],
  [0.127, 0.683, 1.056, 1.313, 1.701, 2.048, 2.467, 2.763, 3.674],
  [0.127, 0.683, 1.055, 1.311, 1.699, 2.045, 2.462, 2.756, 3.649],
  [0.127, 0.683, 1.055, 1.31, 1.697, 2.042, 2.457, 2.75, 3.656],
];

// use it like this
// const collection1=[1,2,3,1,1,1,1,2,2,2,1];
// const collection2=[1,2,3,1,1,1,1,2,2,2,1];
//
// const tvalue = Stats.tTestTwoSample(collection1,collection2);
// const critical_value = ttable[collection1.length][CONF_IDX.conf_005];
// if(tvalue < critical_value)
// console.log("distribution are not significantly different. for confidence 95%")
//
