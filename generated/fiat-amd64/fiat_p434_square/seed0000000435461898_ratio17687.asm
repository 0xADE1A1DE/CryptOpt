SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 608
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], r13
mulx r13, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox r14, rbp
adcx rdi, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, rdx
adcx rbp, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rbp
mov [ rsp - 0x20 ], rdi
mulx rdi, rbp, [ rsi + 0x28 ]
adox r13, r15
adox r8, r14
adox rbp, r9
adox r11, rdi
mov rdx, [ rsi + 0x28 ]
mulx r15, r9, [ rsi + 0x30 ]
adox r9, rcx
mov rdx, [ rsi + 0x20 ]
mulx r14, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x18 ], r9
mulx r9, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], r11
mov [ rsp - 0x8 ], rbp
mulx rbp, r11, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], r15
mov [ rsp + 0x8 ], r8
mulx r8, r15, [ rsi + 0x20 ]
mov rdx, -0x2 
inc rdx
adox rcx, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r13
mulx r13, r9, rdx
adox r11, r14
adox r15, rbp
mov rdx, [ rsi + 0x20 ]
mulx rbp, r14, [ rsi + 0x10 ]
adcx rax, rbx
adox r9, r8
adcx r14, r10
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x18 ], r9
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x20 ], r15
mov [ rsp + 0x28 ], r11
mulx r11, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], rcx
mov [ rsp + 0x38 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
setc dl
clc
adcx r12, r9
adcx rcx, [ rsp - 0x38 ]
setc r9b
clc
mov [ rsp + 0x40 ], rcx
mov rcx, -0x1 
movzx rdx, dl
adcx rdx, rcx
adcx rbp, r10
adcx r15, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x48 ], r12
mulx r12, rcx, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r8
mov [ rsp + 0x58 ], r15
mulx r15, r8, [ rsi + 0x20 ]
mov rdx, 0x0 
adcx r11, rdx
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x60 ], r11
mov [ rsp + 0x68 ], rbp
mulx rbp, r11, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x70 ], r14
mov [ rsp + 0x78 ], rax
mulx rax, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], rbx
mov [ rsp + 0x88 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
adox r8, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x90 ], r8
mulx r8, r13, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], rbx
mov byte [ rsp + 0xa0 ], r9b
mulx r9, rbx, [ rsi + 0x18 ]
adox r14, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa8 ], r14
mulx r14, r15, [ rsi + 0x10 ]
mov rdx, 0x0 
adox rax, rdx
test al, al
adox r13, rdi
mov rdi, rcx
adcx rdi, r12
adox r15, r8
adox rbx, r14
mov r8, rcx
adcx r8, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb0 ], rax
mulx rax, r14, [ rsi + 0x20 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], r15
mulx r15, rbx, r10
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0xc8 ], r13
mov [ rsp + 0xd0 ], r8
mulx r8, r13, r10
adcx r11, r12
adcx rbx, rbp
adox r14, r9
adcx r13, r15
mov rdx, [ rsi + 0x18 ]
mulx rbp, r12, [ rsi + 0x20 ]
mov rdx, 0x2341f27177344 
mulx r15, r9, r10
adcx r9, r8
mov r8, 0x0 
adcx r15, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd8 ], r14
mulx r14, r8, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xe0 ], r15
mov [ rsp + 0xe8 ], r9
mulx r9, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf0 ], r15
mov [ rsp + 0xf8 ], r13
mulx r13, r15, [ rsi + 0x28 ]
movzx rdx, byte [ rsp + 0xa0 ]
clc
mov [ rsp + 0x100 ], rbx
mov rbx, -0x1 
adcx rdx, rbx
adcx r8, [ rsp + 0x88 ]
adox r15, rax
adcx r12, r14
mov rdx, [ rsi + 0x30 ]
mulx r14, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x108 ], r12
mulx r12, rbx, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x110 ], r8
mov [ rsp + 0x118 ], r14
mulx r14, r8, [ rsi + 0x18 ]
adcx r8, rbp
adcx rbx, r14
mov rdx, [ rsi + 0x0 ]
mulx r14, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x120 ], rbx
mov [ rsp + 0x128 ], r8
mulx r8, rbx, [ rsi + 0x8 ]
adox rbx, r13
mov rdx, 0x0 
adcx r12, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x130 ], r12
mulx r12, r13, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r8, rdx
test al, al
adox rbp, [ rsp + 0x80 ]
adcx r13, r9
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x138 ], r13
mulx r13, r9, [ rsi + 0x10 ]
adcx r9, r12
adcx rax, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x140 ], rax
mov [ rsp + 0x148 ], r9
mulx r9, rax, [ rsi + 0x10 ]
adox rax, r14
setc dl
clc
adcx rcx, r10
adcx rdi, rbp
mov cl, dl
mov rdx, [ rsi + 0x18 ]
mulx r14, r10, [ rsi + 0x0 ]
adcx rax, [ rsp + 0xd0 ]
adox r10, r9
adox r12, r14
mov rdx, [ rsi + 0x28 ]
mulx r9, rbp, [ rsi + 0x0 ]
adox rbp, r13
mov rdx, [ rsi + 0x30 ]
mulx r14, r13, [ rsi + 0x0 ]
adox r13, r9
mov rdx, 0x0 
adox r14, rdx
adcx r11, r10
adcx r12, [ rsp + 0x100 ]
adcx rbp, [ rsp + 0xf8 ]
mov r10, -0x3 
inc r10
adox rdi, [ rsp + 0x98 ]
adox rax, [ rsp + 0xc8 ]
adox r11, [ rsp + 0xc0 ]
adcx r13, [ rsp + 0xe8 ]
adcx r14, [ rsp + 0xe0 ]
adox r12, [ rsp + 0xb8 ]
adox rbp, [ rsp + 0xd8 ]
adox r15, r13
adox rbx, r14
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ rsi + 0x30 ]
setc dl
clc
mov r14, -0x1 
movzx rcx, cl
adcx rcx, r14
adcx r9, [ rsp + 0x118 ]
movzx rcx, dl
adox rcx, r8
mov rdx, [ rsi + 0x30 ]
mulx r14, r8, [ rsi + 0x28 ]
adcx r8, r13
mov rdx, [ rsi + 0x30 ]
mulx r10, r13, rdx
adcx r13, r14
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x150 ], r13
mulx r13, r14, rdi
mov rdx, r14
mov [ rsp + 0x158 ], r8
seto r8b
mov [ rsp + 0x160 ], r9
mov r9, -0x2 
inc r9
adox rdx, rdi
mov rdx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x168 ], r8b
mulx r8, r9, rdi
mov rdx, r14
mov [ rsp + 0x170 ], rcx
setc cl
clc
adcx rdx, r13
adcx r14, r13
adcx r9, r13
adox rdx, rax
adox r14, r11
adox r9, r12
mov rax, 0x7bc65c783158aea3 
xchg rdx, rdi
mulx r12, r11, rax
adcx r11, r8
adox r11, rbp
mov rbp, 0x6cfc5fd681c52056 
mulx r8, r13, rbp
adcx r13, r12
adox r13, r15
mov r15, 0x2341f27177344 
mulx rbp, r12, r15
adcx r12, r8
adox r12, rbx
movzx rdx, cl
lea rdx, [ rdx + r10 ]
mov rbx, 0x0 
adcx rbp, rbx
clc
adcx rdi, [ rsp - 0x40 ]
adcx r14, [ rsp - 0x20 ]
adcx r9, [ rsp - 0x28 ]
adcx r11, [ rsp + 0x78 ]
adcx r13, [ rsp + 0x70 ]
xchg rdx, rdi
mulx rcx, r10, rax
adox rbp, [ rsp + 0x170 ]
adcx r12, [ rsp + 0x68 ]
adcx rbp, [ rsp + 0x58 ]
movzx r8, byte [ rsp + 0x168 ]
adox r8, rbx
mov rbx, 0xffffffffffffffff 
mulx rax, r15, rbx
adcx r8, [ rsp + 0x60 ]
mov rbx, r15
mov [ rsp + 0x178 ], rdi
mov rdi, -0x2 
inc rdi
adox rbx, rdx
mov rbx, r15
setc dil
clc
adcx rbx, rax
adcx r15, rax
adox rbx, r14
adox r15, r9
mov r14, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x180 ], dil
mulx rdi, r9, r14
adcx r9, rax
adcx r10, rdi
adox r9, r11
adox r10, r13
mov r11, 0x6cfc5fd681c52056 
mulx rax, r13, r11
adcx r13, rcx
adox r13, r12
setc cl
clc
adcx rbx, [ rsp + 0x50 ]
adcx r15, [ rsp + 0x48 ]
adcx r9, [ rsp + 0x40 ]
adcx r10, [ rsp + 0x110 ]
adcx r13, [ rsp + 0x108 ]
mov r12, 0x2341f27177344 
mulx r11, rdi, r12
setc dl
clc
mov r12, -0x1 
movzx rcx, cl
adcx rcx, r12
adcx rax, rdi
mov rcx, 0x0 
adcx r11, rcx
mov rdi, 0xffffffffffffffff 
xchg rdx, rdi
mulx r12, rcx, rbx
adox rax, rbp
adox r11, r8
mov rdx, rbx
mulx rbp, rbx, r14
mov r8, rcx
clc
adcx r8, r12
mov r14, rcx
adcx r14, r12
adcx rbx, r12
seto r12b
mov [ rsp + 0x188 ], r11
mov r11, -0x2 
inc r11
adox rcx, rdx
adox r8, r15
adox r14, r9
adox rbx, r10
mov rcx, 0x7bc65c783158aea3 
mulx r9, r15, rcx
adcx r15, rbp
mov r10, 0x6cfc5fd681c52056 
mulx r11, rbp, r10
adcx rbp, r9
mov r9, 0x2341f27177344 
mulx rcx, r10, r9
adcx r10, r11
mov rdx, 0x0 
adcx rcx, rdx
adox r15, r13
clc
mov r13, -0x1 
movzx rdi, dil
adcx rdi, r13
adcx rax, [ rsp + 0x128 ]
adox rbp, rax
mov rdi, [ rsp + 0x188 ]
adcx rdi, [ rsp + 0x120 ]
adox r10, rdi
movzx r11, r12b
movzx rax, byte [ rsp + 0x180 ]
lea r11, [ r11 + rax ]
adcx r11, [ rsp + 0x130 ]
setc al
clc
adcx r8, [ rsp + 0x38 ]
adcx r14, [ rsp + 0x30 ]
adcx rbx, [ rsp + 0x28 ]
adcx r15, [ rsp + 0x20 ]
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx rdi, r12, r8
adcx rbp, [ rsp + 0x18 ]
adcx r10, [ rsp + 0x90 ]
adox rcx, r11
adcx rcx, [ rsp + 0xa8 ]
mov r11, r12
seto r13b
mov r9, -0x2 
inc r9
adox r11, rdi
movzx r9, r13b
movzx rax, al
lea r9, [ r9 + rax ]
mov rax, 0xfdc1767ae2ffffff 
mov rdx, r8
mulx r13, r8, rax
adcx r9, [ rsp + 0xb0 ]
mov rax, r12
mov [ rsp + 0x190 ], r9
setc r9b
clc
adcx rax, rdx
adcx r11, r14
adox r12, rdi
mov rax, 0x7bc65c783158aea3 
mov byte [ rsp + 0x198 ], r9b
mulx r9, r14, rax
adcx r12, rbx
adox r8, rdi
mov rbx, 0x6cfc5fd681c52056 
mulx rax, rdi, rbx
adox r14, r13
adcx r8, r15
adcx r14, rbp
adox rdi, r9
mov r15, 0x2341f27177344 
mulx r13, rbp, r15
adox rbp, rax
mov rdx, 0x0 
adox r13, rdx
adcx rdi, r10
adcx rbp, rcx
adcx r13, [ rsp + 0x190 ]
mov r10, -0x3 
inc r10
adox r11, [ rsp - 0x48 ]
adox r12, [ rsp - 0x30 ]
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r9, rcx, r11
adox r8, [ rsp + 0x10 ]
mov rax, 0x7bc65c783158aea3 
mov rdx, r11
mulx r10, r11, rax
adox r14, [ rsp + 0x8 ]
adox rdi, [ rsp - 0x8 ]
adox rbp, [ rsp - 0x10 ]
adox r13, [ rsp - 0x18 ]
movzx r15, byte [ rsp + 0x198 ]
mov rbx, 0x0 
adcx r15, rbx
mov rax, rcx
clc
adcx rax, r9
mov rbx, rcx
adcx rbx, r9
adox r15, [ rsp + 0x0 ]
mov [ rsp + 0x1a0 ], r15
seto r15b
mov [ rsp + 0x1a8 ], r13
mov r13, -0x2 
inc r13
adox rcx, rdx
adox rax, r12
adox rbx, r8
mov rcx, 0xfdc1767ae2ffffff 
mulx r8, r12, rcx
adcx r12, r9
adcx r11, r8
setc r9b
clc
adcx rax, [ rsp + 0xf0 ]
adox r12, r14
adcx rbx, [ rsp + 0x138 ]
adcx r12, [ rsp + 0x148 ]
xchg rdx, rax
mulx r8, r14, rcx
adox r11, rdi
adcx r11, [ rsp + 0x140 ]
mov rdi, 0xffffffffffffffff 
mulx rcx, r13, rdi
mov rdi, r13
mov byte [ rsp + 0x1b0 ], r15b
seto r15b
mov [ rsp + 0x1b8 ], rbp
mov rbp, -0x2 
inc rbp
adox rdi, rdx
mov rdi, r13
setc bpl
clc
adcx rdi, rcx
adox rdi, rbx
adcx r13, rcx
adox r13, r12
adcx r14, rcx
mov rbx, 0x7bc65c783158aea3 
mulx rcx, r12, rbx
adcx r12, r8
adox r14, r11
mov r8, 0x6cfc5fd681c52056 
mulx rbx, r11, r8
xchg rdx, rax
mov [ rsp + 0x1c0 ], r12
mov byte [ rsp + 0x1c8 ], bpl
mulx rbp, r12, r8
adcx r11, rcx
seto cl
mov r8, 0x0 
dec r8
movzx r9, r9b
adox r9, r8
adox r10, r12
mov r9, 0x2341f27177344 
mulx r8, r12, r9
adox r12, rbp
mov rdx, 0x0 
adox r8, rdx
dec rdx
movzx r15, r15b
adox r15, rdx
adox r10, [ rsp + 0x1b8 ]
adox r12, [ rsp + 0x1a8 ]
adox r8, [ rsp + 0x1a0 ]
movzx r15, byte [ rsp + 0x1b0 ]
mov rbp, 0x0 
adox r15, rbp
mov rdx, rax
mulx rbp, rax, r9
adcx rax, rbx
adc rbp, 0x0
mov rdx, 0xffffffffffffffff 
mov rbx, rdi
sub rbx, rdx
mov r9, r13
sbb r9, rdx
mov [ rsp + 0x1d0 ], rbx
mov rbx, r14
sbb rbx, rdx
movzx rdx, byte [ rsp + 0x1c8 ]
mov [ rsp + 0x1d8 ], rbx
mov rbx, 0x0 
dec rbx
adox rdx, rbx
adox r10, [ rsp + 0x160 ]
adox r12, [ rsp + 0x158 ]
setc dl
clc
movzx rcx, cl
adcx rcx, rbx
adcx r10, [ rsp + 0x1c0 ]
adcx r11, r12
adox r8, [ rsp + 0x150 ]
adcx rax, r8
adox r15, [ rsp + 0x178 ]
adcx rbp, r15
seto cl
adc cl, 0x0
movzx rcx, cl
add bl, dl
mov rbx, 0xfdc1767ae2ffffff 
mov r12, r10
sbb r12, rbx
mov rdx, 0x7bc65c783158aea3 
mov r8, r11
sbb r8, rdx
mov r15, 0x6cfc5fd681c52056 
mov rdx, rax
sbb rdx, r15
mov r15, 0x2341f27177344 
mov rbx, rbp
sbb rbx, r15
movzx rcx, cl
mov r15, 0x0 
sbb rcx, r15
cmovc r8, r11
cmovc rbx, rbp
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x30 ], rbx
cmovc r9, r13
cmovc r12, r10
mov [ rcx + 0x20 ], r8
cmovc rdx, rax
mov [ rcx + 0x18 ], r12
mov [ rcx + 0x28 ], rdx
mov r13, [ rsp + 0x1d8 ]
cmovc r13, r14
mov r14, [ rsp + 0x1d0 ]
cmovc r14, rdi
mov [ rcx + 0x10 ], r13
mov [ rcx + 0x8 ], r9
mov [ rcx + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 608
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.7687
; seed 2817419177393533 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 11802229 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 246925 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0209218953470569
; number reverted permutation / tried permutation: 81854 / 94943 =86.214%
; number reverted decision / tried decision: 73992 / 95056 =77.840%
; validated in 408.304s
