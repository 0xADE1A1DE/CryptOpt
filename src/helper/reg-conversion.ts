import { ByteRegister, DwordRegister, Register } from "@/enums";

export function getByteRegFromQwReg(reg: Register): ByteRegister {
  const mapping: { [reg in Register]: ByteRegister } = {
    [Register.rax]: ByteRegister.al,
    [Register.rbx]: ByteRegister.bl,
    [Register.rcx]: ByteRegister.cl,
    [Register.rdx]: ByteRegister.dl,
    [Register.rdi]: ByteRegister.dil,
    [Register.rsi]: ByteRegister.sil,
    [Register.rsp]: ByteRegister.spl,
    [Register.rbp]: ByteRegister.bpl,
    [Register.r8]: ByteRegister.r8b,
    [Register.r9]: ByteRegister.r9b,
    [Register.r10]: ByteRegister.r10b,
    [Register.r11]: ByteRegister.r11b,
    [Register.r12]: ByteRegister.r12b,
    [Register.r13]: ByteRegister.r13b,
    [Register.r14]: ByteRegister.r14b,
    [Register.r15]: ByteRegister.r15b,
  };
  return mapping[reg];
}

export function getQwRegFromByteReg(reg: ByteRegister): Register {
  const mapping: { [reg in ByteRegister]: Register } = {
    [ByteRegister.al]: Register.rax,
    [ByteRegister.ah]: Register.rax,
    [ByteRegister.bl]: Register.rbx,
    [ByteRegister.bh]: Register.rbx,
    [ByteRegister.cl]: Register.rcx,
    [ByteRegister.ch]: Register.rcx,
    [ByteRegister.dl]: Register.rdx,
    [ByteRegister.dh]: Register.rdx,
    [ByteRegister.dil]: Register.rdi,
    [ByteRegister.sil]: Register.rsi,
    [ByteRegister.spl]: Register.rsp,
    [ByteRegister.sp]: Register.rsp,
    [ByteRegister.bpl]: Register.rbp,
    [ByteRegister.bp]: Register.rbp,
    [ByteRegister.r8b]: Register.r8,
    [ByteRegister.r9b]: Register.r9,
    [ByteRegister.r10b]: Register.r10,
    [ByteRegister.r11b]: Register.r11,
    [ByteRegister.r12b]: Register.r12,
    [ByteRegister.r13b]: Register.r13,
    [ByteRegister.r14b]: Register.r14,
    [ByteRegister.r15b]: Register.r15,
  };
  return mapping[reg];
}
export function getDwordRegFromQwReg(reg: Register): DwordRegister {
  const mapping: { [reg in Register]: DwordRegister } = {
    [Register.rax]: DwordRegister.eax,
    [Register.rbx]: DwordRegister.ebx,
    [Register.rcx]: DwordRegister.ecx,
    [Register.rdx]: DwordRegister.edx,
    [Register.rdi]: DwordRegister.edi,
    [Register.rsi]: DwordRegister.esi,
    [Register.rsp]: DwordRegister.esp,
    [Register.rbp]: DwordRegister.ebp,
    [Register.r8]: DwordRegister.r8d,
    [Register.r9]: DwordRegister.r9d,
    [Register.r10]: DwordRegister.r10d,
    [Register.r11]: DwordRegister.r11d,
    [Register.r12]: DwordRegister.r12d,
    [Register.r13]: DwordRegister.r13d,
    [Register.r14]: DwordRegister.r14d,
    [Register.r15]: DwordRegister.r15d,
  };
  return mapping[reg];
}
