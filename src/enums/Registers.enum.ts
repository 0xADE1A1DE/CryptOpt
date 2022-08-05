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

export enum ByteRegister {
  al = "al", // rax
  ah = "ah", // rax
  bl = "bl", // rbx
  bh = "bh", // rbx
  cl = "cl", // rcx
  ch = "ch", // rcx
  dl = "dl", // rdx
  dh = "dh", // rdx
  dil = "dil", // rdi
  sil = "sil", // rsi
  sp = "sp", // rsp
  spl = "spl", // rsp
  bp = "bp", // rbp
  bpl = "bpl", // rbp
  r8b = "r8b",
  r9b = "r9b",
  r10b = "r10b",
  r11b = "r11b",
  r12b = "r12b",
  r13b = "r13b",
  r14b = "r14b",
  r15b = "r15b",
}

export enum DwordRegister {
  eax = "eax",
  ebx = "ebx",
  ecx = "ecx",
  edx = "edx",
  edi = "edi",
  esi = "esi",
  esp = "esp",
  ebp = "ebp",
  r8d = "r8d",
  r9d = "r9d",
  r10d = "r10d",
  r11d = "r11d",
  r12d = "r12d",
  r13d = "r13d",
  r14d = "r14d",
  r15d = "r15d",
}

export enum Register {
  rax = "rax",
  rbx = "rbx",
  rcx = "rcx",
  rdx = "rdx",
  rdi = "rdi",
  rsi = "rsi",
  rsp = "rsp",
  rbp = "rbp",
  r8 = "r8",
  r9 = "r9",
  r10 = "r10",
  r11 = "r11",
  r12 = "r12",
  r13 = "r13",
  r14 = "r14",
  r15 = "r15",
}

export enum XmmRegister {
  xmm0 = "xmm0",
  xmm1 = "xmm1",
  xmm2 = "xmm2",
  xmm3 = "xmm3",
  xmm4 = "xmm4",
  xmm5 = "xmm5",
  xmm6 = "xmm6",
  xmm7 = "xmm7",
  xmm8 = "xmm8",
  xmm9 = "xmm9",
  xmm10 = "xmm10",
  xmm11 = "xmm11",
  xmm12 = "xmm12",
  xmm13 = "xmm13",
  xmm14 = "xmm14",
  xmm15 = "xmm15",
}
