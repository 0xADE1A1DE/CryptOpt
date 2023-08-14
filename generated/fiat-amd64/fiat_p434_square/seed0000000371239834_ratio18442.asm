SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 664
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, [ rsi + 0x10 ]
add rax, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rax
mov [ rsp - 0x30 ], r15
mulx r15, rax, [ rsi + 0x8 ]
adcx r13, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r15
mulx r15, r10, [ rsi + 0x18 ]
adcx r10, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], rax
mulx rax, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x18 ], r14
mov [ rsp - 0x10 ], r10
mulx r10, r14, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r14, rax
adox r11, r10
adox rbx, rcx
mov rdx, [ rsi + 0x20 ]
mulx rax, rcx, [ rsi + 0x30 ]
adox rcx, rbp
mov rdx, [ rsi + 0x20 ]
mulx r10, rbp, [ rsi + 0x0 ]
adcx rbp, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], rbx
mov [ rsp + 0x8 ], r11
mulx r11, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r14
mov [ rsp + 0x18 ], r11
mulx r11, r14, [ rsi + 0x0 ]
adcx r15, r10
adcx r8, rcx
mov rdx, 0x0 
adcx r9, rdx
mov rdx, [ rsi + 0x30 ]
mulx rcx, r10, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x20 ], r14
mov [ rsp + 0x28 ], rbx
mulx rbx, r14, [ rsi + 0x28 ]
adox r14, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], r14
mulx r14, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x38 ], r9
mov [ rsp + 0x40 ], r8
mulx r8, r9, rdx
adox r10, rbx
clc
adcx rax, r11
adcx r9, r14
mov rdx, [ rsi + 0x10 ]
mulx rbx, r11, [ rsi + 0x18 ]
adcx r11, r8
adcx rdi, rbx
mov rdx, [ rsi + 0x28 ]
mulx r8, r14, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x48 ], r10
mulx r10, rbx, r12
adcx r14, [ rsp - 0x30 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x50 ], r14
mov [ rsp + 0x58 ], rdi
mulx rdi, r14, r12
mov rdx, rbx
mov [ rsp + 0x60 ], r11
seto r11b
mov [ rsp + 0x68 ], r9
mov r9, -0x2 
inc r9
adox rdx, r12
mov rdx, rbx
seto r9b
mov [ rsp + 0x70 ], rax
mov rax, -0x2 
inc rax
adox rdx, r10
adox rbx, r10
adox r14, r10
movzx r10, r11b
lea r10, [ r10 + rcx ]
mov rcx, 0x6cfc5fd681c52056 
xchg rdx, rcx
mulx rax, r11, r12
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x78 ], r10
mov [ rsp + 0x80 ], r15
mulx r15, r10, r12
adox r10, rdi
adox r11, r15
mov rdx, [ rsi + 0x30 ]
mulx r15, rdi, [ rsi + 0x10 ]
adcx rdi, r8
mov rdx, 0x2341f27177344 
mov [ rsp + 0x88 ], rdi
mulx rdi, r8, r12
adox r8, rax
mov r12, 0x0 
adcx r15, r12
clc
mov rax, -0x1 
movzx r9, r9b
adcx r9, rax
adcx rcx, [ rsp - 0x38 ]
adcx rbx, r13
adcx r14, [ rsp - 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r13, [ rsi + 0x18 ]
adox rdi, r12
mov rdx, [ rsi + 0x0 ]
mulx rax, r12, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox r13, rax
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], r13
mulx r13, rax, [ rsi + 0x10 ]
adcx r10, rbp
adcx r11, [ rsp + 0x80 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], r15
mov [ rsp + 0xa8 ], r11
mulx r11, r15, rdx
adox rax, r9
adox r15, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r15
mov [ rsp + 0xb8 ], rax
mulx rax, r15, [ rsi + 0x28 ]
adox r9, r11
adox r15, r13
adox rax, [ rsp - 0x40 ]
adcx r8, [ rsp + 0x40 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, r11, rdx
seto dl
mov [ rsp + 0xc0 ], rax
mov rax, -0x2 
inc rax
adox r11, r12
adcx rdi, [ rsp + 0x38 ]
setc r12b
clc
adcx rbp, rcx
movzx rcx, dl
mov rax, [ rsp - 0x48 ]
lea rcx, [ rcx + rax ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xc8 ], rcx
mulx rcx, rax, [ rsi + 0x10 ]
adox rax, r13
adox rcx, [ rsp - 0x20 ]
adcx r11, rbx
mov rdx, [ rsi + 0x8 ]
mulx r13, rbx, [ rsi + 0x20 ]
adox rbx, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xd0 ], r15
mov [ rsp + 0xd8 ], r9
mulx r9, r15, [ rsi + 0x28 ]
adcx rax, r14
adox r15, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe0 ], rax
mov [ rsp + 0xe8 ], r11
mulx r11, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf0 ], rax
mov byte [ rsp + 0xf8 ], r12b
mulx r12, rax, [ rsi + 0x20 ]
adcx rcx, r10
adcx rbx, [ rsp + 0xa8 ]
adox r14, r9
mov rdx, [ rsi + 0x28 ]
mulx r9, r10, [ rsi + 0x10 ]
mov rdx, 0x0 
adox r13, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], r9
mov [ rsp + 0x108 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox rax, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x110 ], rax
mulx rax, r11, [ rsi + 0x10 ]
adox r11, r12
adox r9, rax
mov rdx, 0xffffffffffffffff 
mulx rax, r12, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x118 ], r9
mov [ rsp + 0x120 ], r11
mulx r11, r9, rdx
adcx r15, r8
mov rdx, r12
seto r8b
mov [ rsp + 0x128 ], r15
mov r15, -0x2 
inc r15
adox rdx, rbp
adcx r14, rdi
movzx rdx, byte [ rsp + 0xf8 ]
adcx rdx, r13
setc dil
clc
movzx r8, r8b
adcx r8, r15
adcx rbx, r9
adcx r11, [ rsp + 0x28 ]
mov r13, rdx
mov rdx, [ rsi + 0x30 ]
mulx r9, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x130 ], r11
mulx r11, r15, [ rsi + 0x28 ]
adcx r8, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x138 ], r8
mov [ rsp + 0x140 ], r9
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x148 ], r8
mov [ rsp + 0x150 ], rbx
mulx rbx, r8, rbp
mov rdx, r12
mov byte [ rsp + 0x158 ], dil
setc dil
clc
adcx rdx, rax
adcx r12, rax
mov byte [ rsp + 0x160 ], dil
setc dil
clc
adcx r15, r9
seto r9b
mov [ rsp + 0x168 ], r15
mov r15, 0x0 
dec r15
movzx rdi, dil
adox rdi, r15
adox rax, r8
adcx r10, r11
setc r11b
clc
movzx r9, r9b
adcx r9, r15
adcx rdx, [ rsp + 0xe8 ]
adcx r12, [ rsp + 0xe0 ]
mov r9, 0x7bc65c783158aea3 
xchg rdx, r9
mulx rdi, r8, rbp
adox r8, rbx
adcx rax, rcx
setc cl
clc
adcx r9, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x70 ]
mov rbx, 0x2341f27177344 
mov rdx, rbx
mulx r15, rbx, rbp
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x170 ], r10
mov byte [ rsp + 0x178 ], r11b
mulx r11, r10, rbp
adox r10, rdi
mov rbp, 0x7bc65c783158aea3 
mov rdx, r9
mulx rdi, r9, rbp
adox rbx, r11
mov r11, 0x0 
adox r15, r11
dec r11
movzx rcx, cl
adox rcx, r11
adox r8, [ rsp + 0x108 ]
adox r10, [ rsp + 0x128 ]
adox rbx, r14
adox r15, r13
mov r14, 0xffffffffffffffff 
mulx rcx, r13, r14
adcx rax, [ rsp + 0x68 ]
adcx r8, [ rsp + 0x60 ]
adcx r10, [ rsp + 0x58 ]
movzx r11, byte [ rsp + 0x158 ]
mov rbp, 0x0 
adox r11, rbp
adcx rbx, [ rsp + 0x50 ]
mov r14, r13
mov [ rsp + 0x180 ], rbx
mov rbx, -0x3 
inc rbx
adox r14, rcx
mov rbp, r13
adox rbp, rcx
adcx r15, [ rsp + 0x88 ]
adcx r11, [ rsp + 0xa0 ]
mov rbx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x188 ], r11
mov [ rsp + 0x190 ], r15
mulx r15, r11, rbx
setc bl
clc
adcx r13, rdx
adcx r14, r12
adcx rbp, rax
adox r11, rcx
mov r13, 0x2341f27177344 
mulx rcx, r12, r13
adcx r11, r8
adox r9, r15
mov rax, 0x6cfc5fd681c52056 
mulx r15, r8, rax
adox r8, rdi
adox r12, r15
adcx r9, r10
mov rdx, 0x0 
adox rcx, rdx
adcx r8, [ rsp + 0x180 ]
adcx r12, [ rsp + 0x190 ]
mov rdi, -0x3 
inc rdi
adox r14, [ rsp + 0x98 ]
adox rbp, [ rsp + 0x90 ]
adox r11, [ rsp + 0xb8 ]
mov r10, 0xffffffffffffffff 
mov rdx, r14
mulx r15, r14, r10
mulx r13, rdi, rax
adox r9, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0x188 ]
adox r8, [ rsp + 0xd8 ]
adox r12, [ rsp + 0xd0 ]
movzx rax, bl
mov r10, 0x0 
adcx rax, r10
adox rcx, [ rsp + 0xc0 ]
mov rbx, r14
clc
adcx rbx, rdx
adox rax, [ rsp + 0xc8 ]
mov rbx, r14
mov [ rsp + 0x198 ], rax
seto al
mov [ rsp + 0x1a0 ], rcx
mov rcx, -0x3 
inc rcx
adox rbx, r15
mov r10, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1a8 ], al
mulx rax, rcx, r10
adcx rbx, rbp
adox r14, r15
adox rcx, r15
seto bpl
mov r15, -0x2 
inc r15
adox rbx, [ rsp + 0xf0 ]
adcx r14, r11
adox r14, [ rsp + 0x110 ]
mov r11, 0x7bc65c783158aea3 
xchg rdx, r11
mulx r10, r15, rbx
adcx rcx, r9
mov [ rsp + 0x1b0 ], r14
mulx r14, r9, r11
seto dl
mov [ rsp + 0x1b8 ], r10
mov r10, -0x1 
inc r10
mov r10, -0x1 
movzx rbp, bpl
adox rbp, r10
adox rax, r9
adcx rax, r8
adox rdi, r14
adcx rdi, r12
mov r8, 0xfdc1767ae2ffffff 
xchg rdx, rbx
mulx rbp, r12, r8
setc r9b
clc
movzx rbx, bl
adcx rbx, r10
adcx rcx, [ rsp + 0x120 ]
adcx rax, [ rsp + 0x118 ]
mov rbx, 0x6cfc5fd681c52056 
mulx r10, r14, rbx
adcx rdi, [ rsp + 0x150 ]
mov rbx, 0x2341f27177344 
xchg rdx, rbx
mov [ rsp + 0x1c0 ], rdi
mulx rdi, r8, r11
adox r8, r13
seto r11b
mov r13, 0x0 
dec r13
movzx r9, r9b
adox r9, r13
adox r8, [ rsp + 0x1a0 ]
movzx r9, r11b
lea r9, [ r9 + rdi ]
adox r9, [ rsp + 0x198 ]
movzx rdi, byte [ rsp + 0x1a8 ]
mov r11, 0x0 
adox rdi, r11
movzx r11, byte [ rsp + 0x160 ]
mov r13, [ rsp + 0x140 ]
lea r11, [ r11 + r13 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x1c8 ], rax
mulx rax, r13, [ rsi + 0x28 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x1d0 ], rax
mov [ rsp + 0x1d8 ], r13
mulx r13, rax, rbx
mov rdx, rax
mov [ rsp + 0x1e0 ], r10
mov r10, -0x2 
inc r10
adox rdx, r13
mov r10, rax
adox r10, r13
adcx r8, [ rsp + 0x130 ]
adox r12, r13
adox r15, rbp
adox r14, [ rsp + 0x1b8 ]
adcx r9, [ rsp + 0x138 ]
seto bpl
mov r13, -0x2 
inc r13
adox rax, rbx
adcx r11, rdi
adox rdx, [ rsp + 0x1b0 ]
adox r10, rcx
mov rax, 0x2341f27177344 
xchg rdx, rax
mulx rdi, rcx, rbx
setc bl
clc
movzx rbp, bpl
adcx rbp, r13
adcx rcx, [ rsp + 0x1e0 ]
adox r12, [ rsp + 0x1c8 ]
mov rbp, 0x0 
adcx rdi, rbp
adox r15, [ rsp + 0x1c0 ]
adox r14, r8
adox rcx, r9
adox rdi, r11
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mulx rbp, r11, rdx
movzx rdx, bl
mov r13, 0x0 
adox rdx, r13
add byte [ rsp + 0x178 ], 0xFF
adcx r8, [ rsp + 0x100 ]
adcx r9, [ rsp + 0x1d8 ]
adox rax, [ rsp + 0x148 ]
mov rbx, 0xfdc1767ae2ffffff 
xchg rdx, rbx
mov [ rsp + 0x1e8 ], rbx
mulx rbx, r13, rax
adox r10, [ rsp + 0x168 ]
adox r12, [ rsp + 0x170 ]
adox r8, r15
adox r9, r14
adcx r11, [ rsp + 0x1d0 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, r15, [ rsi + 0x30 ]
adcx r15, rbp
adox r11, rcx
mov rdx, 0xffffffffffffffff 
mulx rbp, rcx, rax
adox r15, rdi
mov rdi, rcx
seto dl
mov [ rsp + 0x1f0 ], r15
mov r15, -0x2 
inc r15
adox rdi, rbp
mov r15, 0x0 
adcx r14, r15
mov r15, rcx
adox r15, rbp
clc
adcx rcx, rax
adcx rdi, r10
adcx r15, r12
adox r13, rbp
adcx r13, r8
mov rcx, 0x2341f27177344 
xchg rdx, rax
mulx r12, r10, rcx
mov r8, 0x7bc65c783158aea3 
mulx rcx, rbp, r8
adox rbp, rbx
adcx rbp, r9
mov rbx, 0x6cfc5fd681c52056 
mulx r8, r9, rbx
adox r9, rcx
adcx r9, r11
adox r10, r8
seto dl
mov r11, 0x0 
dec r11
movzx rax, al
adox rax, r11
adox r14, [ rsp + 0x1e8 ]
adcx r10, [ rsp + 0x1f0 ]
movzx rax, dl
lea rax, [ rax + r12 ]
adcx rax, r14
seto r12b
inc r11
adox rdi, [ rsp - 0x18 ]
adox r15, [ rsp + 0x10 ]
adox r13, [ rsp + 0x8 ]
adox rbp, [ rsp + 0x0 ]
mov rcx, 0xffffffffffffffff 
mov rdx, rdi
mulx r8, rdi, rcx
adox r9, [ rsp - 0x8 ]
mov r14, rdi
seto bl
mov rcx, -0x3 
inc rcx
adox r14, r8
mov r11, rdi
adox r11, r8
mov rcx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1f8 ], rax
mov [ rsp + 0x200 ], r10
mulx r10, rax, rcx
adox rax, r8
setc r8b
clc
adcx rdi, rdx
adcx r14, r15
adcx r11, r13
mov rdi, 0x7bc65c783158aea3 
mulx r13, r15, rdi
adcx rax, rbp
adox r15, r10
adcx r15, r9
mov rbp, 0x6cfc5fd681c52056 
mulx r10, r9, rbp
adox r9, r13
mov r13, 0x2341f27177344 
mulx rbp, rdi, r13
movzx rdx, r8b
movzx r12, r12b
lea rdx, [ rdx + r12 ]
adox rdi, r10
mov r12, 0x0 
adox rbp, r12
mov r8, [ rsp + 0x30 ]
dec r12
movzx rbx, bl
adox rbx, r12
adox r8, [ rsp + 0x200 ]
adcx r9, r8
mov rbx, [ rsp + 0x48 ]
adox rbx, [ rsp + 0x1f8 ]
adcx rdi, rbx
adox rdx, [ rsp + 0x78 ]
adcx rbp, rdx
seto r10b
setc r8b
mov rbx, 0xffffffffffffffff 
mov rdx, r14
sub rdx, rbx
mov r12, r11
sbb r12, rbx
mov r13, rax
sbb r13, rbx
mov rbx, r15
sbb rbx, rcx
mov rcx, 0x7bc65c783158aea3 
mov [ rsp + 0x208 ], r12
mov r12, r9
sbb r12, rcx
mov rcx, 0x6cfc5fd681c52056 
mov [ rsp + 0x210 ], rdx
mov rdx, rdi
sbb rdx, rcx
movzx rcx, r8b
movzx r10, r10b
lea rcx, [ rcx + r10 ]
mov r10, 0x2341f27177344 
mov r8, rbp
sbb r8, r10
mov r10, 0x0 
sbb rcx, r10
cmovc r13, rax
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r13
cmovc rdx, rdi
cmovc rbx, r15
mov [ rcx + 0x28 ], rdx
cmovc r8, rbp
cmovc r12, r9
mov [ rcx + 0x30 ], r8
mov [ rcx + 0x20 ], r12
mov rax, [ rsp + 0x210 ]
cmovc rax, r14
mov r14, [ rsp + 0x208 ]
cmovc r14, r11
mov [ rcx + 0x0 ], rax
mov [ rcx + 0x8 ], r14
mov [ rcx + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 664
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.8442
; seed 3289366907566213 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7535600 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=21, initial num_batches=31): 155562 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.020643611656669676
; number reverted permutation / tried permutation: 68767 / 94951 =72.424%
; number reverted decision / tried decision: 64007 / 95048 =67.342%
; validated in 379.935s
