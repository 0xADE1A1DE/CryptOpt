import { Register, XmmRegister } from "@/enums";
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

export const ALL_XMM_REGISTERS = [
  XmmRegister.xmm0,
  XmmRegister.xmm1,
  XmmRegister.xmm2,
  XmmRegister.xmm3,
  XmmRegister.xmm4,
  XmmRegister.xmm5,
  XmmRegister.xmm6,
  XmmRegister.xmm7,
  XmmRegister.xmm8,
  XmmRegister.xmm9,
  XmmRegister.xmm10,
  XmmRegister.xmm11,
  XmmRegister.xmm12,
  XmmRegister.xmm13,
  XmmRegister.xmm14,
  XmmRegister.xmm15,
];
