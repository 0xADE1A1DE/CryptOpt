SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 704
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r13
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x48 ], rcx
mov [ rsp - 0x40 ], r10
mulx r10, rcx, [ rsi + 0x10 ]
mov rdx, r15
mov [ rsp - 0x38 ], r10
xor r10, r10
adox rdx, rdi
mov r10, r15
adox r10, rdi
mov [ rsp - 0x30 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], rbp
mulx rbp, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r10
mov [ rsp - 0x10 ], rbp
mulx rbp, r10, [ rax + 0x0 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], r12
mulx r12, r10, r13
adcx r9, r8
adox r10, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x8 ], r9
mov [ rsp + 0x10 ], r10
mulx r10, r9, [ rsi + 0x18 ]
adcx r8, rbx
adcx r9, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbx, [ rax + 0x20 ]
adcx rbx, r10
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x18 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
adcx r10, rdi
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x20 ], r10
mulx r10, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x28 ], r9
mov [ rsp + 0x30 ], r8
mulx r8, r9, [ rax + 0x8 ]
adcx rdi, rbx
setc dl
clc
adcx r9, r11
adcx rcx, r8
movzx r11, dl
lea r11, [ r11 + r10 ]
mov rbx, 0x7bc65c783158aea3 
mov rdx, r13
mulx r10, r13, rbx
adox r13, r12
mov r12, 0x6cfc5fd681c52056 
mulx rbx, r8, r12
mov r12, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x38 ], r11
mov [ rsp + 0x40 ], rdi
mulx rdi, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x48 ], rcx
mov [ rsp + 0x50 ], r9
mulx r9, rcx, [ rax + 0x8 ]
mov rdx, 0x2341f27177344 
mov [ rsp + 0x58 ], r13
mov [ rsp + 0x60 ], rdi
mulx rdi, r13, r12
setc dl
clc
adcx rcx, r14
adcx r11, r9
mov r14b, dl
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x68 ], r11
mulx r11, r9, [ rsi + 0x30 ]
adox r8, r10
adox r13, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov byte [ rsp + 0x70 ], r14b
mov [ rsp + 0x78 ], r13
mulx r13, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x80 ], r8
mov [ rsp + 0x88 ], rcx
mulx rcx, r8, [ rsi + 0x30 ]
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x90 ], r8
mov [ rsp + 0x98 ], rdi
mulx rdi, r8, [ rax + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r10, rbp
adox r8, rbx
mov rdx, [ rax + 0x18 ]
mulx rbx, rbp, [ rsi + 0x30 ]
setc dl
clc
adcx r14, rcx
adcx r9, r13
mov r13b, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa0 ], r9
mulx r9, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], r14
mov [ rsp + 0xb0 ], r8
mulx r8, r14, [ rax + 0x8 ]
adcx rbp, r11
adox rcx, rdi
mov rdx, [ rax + 0x28 ]
mulx rdi, r11, [ rsi + 0x30 ]
adox r9, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xb8 ], rbp
mov [ rsp + 0xc0 ], r9
mulx r9, rbp, [ rax + 0x20 ]
adcx rbp, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xc8 ], rbp
mulx rbp, rbx, [ rax + 0x0 ]
adcx r11, r9
seto dl
mov r9, -0x2 
inc r9
adox r14, rbp
mov bpl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd0 ], r11
mulx r11, r9, [ rax + 0x10 ]
adox r9, r8
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd8 ], r9
mulx r9, r8, [ rax + 0x18 ]
adox r8, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe0 ], r8
mulx r8, r11, [ rax + 0x20 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xe8 ], r14
mov [ rsp + 0xf0 ], rbx
mulx rbx, r14, [ rax + 0x30 ]
adcx r14, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf8 ], r14
mulx r14, rdi, [ rax + 0x20 ]
mov rdx, 0x0 
adcx rbx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], rbx
mov byte [ rsp + 0x108 ], bpl
mulx rbp, rbx, [ rax + 0x30 ]
adox r11, r9
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x110 ], r11
mulx r11, r9, [ rsi + 0x20 ]
adox r9, r8
adox rbx, r11
mov rdx, [ rax + 0x18 ]
mulx r11, r8, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x118 ], rbp
mov [ rsp + 0x120 ], rbx
mulx rbx, rbp, [ rax + 0x30 ]
add r13b, 0x7F
adox r8, [ rsp + 0x60 ]
adox rdi, r11
adcx r15, r12
mov rdx, [ rsp + 0x0 ]
adcx rdx, [ rsp + 0x88 ]
mov r15, [ rsp + 0x68 ]
adcx r15, [ rsp - 0x28 ]
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r13, [ rax + 0x28 ]
adox r13, r14
adox rbp, r11
mov rdx, 0x0 
adox rbx, rdx
mov r14, -0x3 
inc r14
adox r12, [ rsp - 0x8 ]
adcx r8, [ rsp + 0x10 ]
adox r10, r15
adox r8, [ rsp + 0xb0 ]
adcx rdi, [ rsp + 0x58 ]
adcx r13, [ rsp + 0x80 ]
adox rcx, rdi
mov rdx, [ rsi + 0x8 ]
mulx r11, r15, [ rax + 0x28 ]
adcx rbp, [ rsp + 0x78 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, rdi, [ rax + 0x8 ]
adcx rbx, [ rsp + 0x98 ]
adox r13, [ rsp + 0xc0 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x128 ], r9
mov [ rsp + 0x130 ], r13
mulx r13, r9, [ rsi + 0x8 ]
setc dl
mov [ rsp + 0x138 ], rcx
movzx rcx, byte [ rsp + 0x108 ]
clc
mov [ rsp + 0x140 ], r8
mov r8, -0x1 
adcx rcx, r8
adcx r15, [ rsp - 0x30 ]
adcx r9, r11
adox r15, rbp
setc cl
clc
adcx rdi, [ rsp - 0x10 ]
mov r11b, dl
mov rdx, [ rax + 0x10 ]
mulx r8, rbp, [ rsi + 0x28 ]
adcx rbp, r14
adox r9, rbx
movzx rdx, cl
lea rdx, [ rdx + r13 ]
movzx r14, r11b
adox r14, rdx
mov rdx, [ rax + 0x18 ]
mulx rbx, r11, [ rsi + 0x28 ]
adcx r11, r8
mov rdx, [ rax + 0x28 ]
mulx rcx, r13, [ rsi + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x148 ], r11
mulx r11, r8, [ rsi + 0x28 ]
adcx r8, rbx
adcx r13, r11
mov rdx, [ rax + 0x18 ]
mulx r11, rbx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x150 ], r13
mov [ rsp + 0x158 ], r8
mulx r8, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x160 ], rbp
mov [ rsp + 0x168 ], rdi
mulx rdi, rbp, [ rax + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x170 ], r14
mov [ rsp + 0x178 ], r9
mulx r9, r14, [ rax + 0x20 ]
adcx rbp, rcx
setc dl
movzx rcx, byte [ rsp + 0x70 ]
clc
mov [ rsp + 0x180 ], rbp
mov rbp, -0x1 
adcx rcx, rbp
adcx rbx, [ rsp - 0x38 ]
adcx r14, r11
mov cl, dl
mov rdx, [ rax + 0x28 ]
mulx rbp, r11, [ rsi + 0x10 ]
adcx r11, r9
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x188 ], r11
mulx r11, r9, r12
mov rdx, r9
mov [ rsp + 0x190 ], r14
seto r14b
mov [ rsp + 0x198 ], rbx
mov rbx, -0x2 
inc rbx
adox rdx, r12
adcx r13, rbp
mov rdx, 0x0 
adcx r8, rdx
mov rbp, r9
clc
adcx rbp, r11
adcx r9, r11
movzx rdx, cl
lea rdx, [ rdx + rdi ]
mov rdi, 0xfdc1767ae2ffffff 
xchg rdx, r12
mulx rbx, rcx, rdi
adcx rcx, r11
adox rbp, r10
adox r9, [ rsp + 0x140 ]
adox rcx, [ rsp + 0x138 ]
mov r10, 0x7bc65c783158aea3 
mulx rdi, r11, r10
adcx r11, rbx
adox r11, [ rsp + 0x130 ]
mov rbx, 0x6cfc5fd681c52056 
mov [ rsp + 0x1a0 ], r12
mulx r12, r10, rbx
adcx r10, rdi
adox r10, r15
mov r15, 0x2341f27177344 
mulx rbx, rdi, r15
adcx rdi, r12
mov rdx, 0x0 
adcx rbx, rdx
clc
adcx rbp, [ rsp - 0x40 ]
adcx r9, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x48 ]
adcx r11, [ rsp + 0x198 ]
adox rdi, [ rsp + 0x178 ]
adox rbx, [ rsp + 0x170 ]
adcx r10, [ rsp + 0x190 ]
adcx rdi, [ rsp + 0x188 ]
movzx r12, r14b
adox r12, rdx
mov r14, 0xffffffffffffffff 
mov rdx, rbp
mulx r15, rbp, r14
adcx r13, rbx
mov rbx, rbp
mov r14, -0x2 
inc r14
adox rbx, rdx
adcx r8, r12
mov rbx, rbp
setc r12b
clc
adcx rbx, r15
adox rbx, r9
adcx rbp, r15
mov r9, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1a8 ], r12b
mulx r12, r14, r9
adcx r14, r15
adox rbp, rcx
mov rcx, 0x7bc65c783158aea3 
mulx r9, r15, rcx
adox r14, r11
adcx r15, r12
adox r15, r10
mov r11, 0x6cfc5fd681c52056 
mulx r12, r10, r11
adcx r10, r9
mov r9, 0x2341f27177344 
mulx rcx, r11, r9
adcx r11, r12
mov rdx, 0x0 
adcx rcx, rdx
adox r10, rdi
adox r11, r13
adox rcx, r8
clc
adcx rbx, [ rsp - 0x48 ]
adcx rbp, [ rsp + 0x8 ]
adcx r14, [ rsp + 0x30 ]
adcx r15, [ rsp + 0x28 ]
movzx rdi, byte [ rsp + 0x1a8 ]
adox rdi, rdx
adcx r10, [ rsp + 0x18 ]
mov r13, 0xffffffffffffffff 
mov rdx, rbx
mulx r8, rbx, r13
adcx r11, [ rsp + 0x20 ]
mov r12, rbx
mov r13, -0x2 
inc r13
adox r12, r8
adcx rcx, [ rsp + 0x40 ]
adcx rdi, [ rsp + 0x38 ]
mov r13, rbx
adox r13, r8
setc r9b
clc
adcx rbx, rdx
mov rbx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1b0 ], r9b
mov [ rsp + 0x1b8 ], rdi
mulx rdi, r9, rbx
adox r9, r8
adcx r12, rbp
adcx r13, r14
adcx r9, r15
setc bpl
clc
adcx r12, [ rsp + 0xf0 ]
mov r14, 0x6cfc5fd681c52056 
xchg rdx, r14
mulx r8, r15, r12
mov rdx, rbx
mov [ rsp + 0x1c0 ], r8
mulx r8, rbx, r12
adcx r13, [ rsp + 0xe8 ]
adcx r9, [ rsp + 0xd8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x1c8 ], r9
mov [ rsp + 0x1d0 ], r13
mulx r13, r9, r12
mov rdx, r9
mov [ rsp + 0x1d8 ], rcx
setc cl
clc
adcx rdx, r13
mov [ rsp + 0x1e0 ], rdx
mov rdx, r9
adcx rdx, r13
mov [ rsp + 0x1e8 ], rdx
mov rdx, 0x7bc65c783158aea3 
mov byte [ rsp + 0x1f0 ], cl
mov [ rsp + 0x1f8 ], r11
mulx r11, rcx, r14
adox rcx, rdi
adcx rbx, r13
mulx r13, rdi, r12
adcx rdi, r8
adcx r15, r13
mov r8, 0x6cfc5fd681c52056 
mov rdx, r14
mulx r13, r14, r8
adox r14, r11
mov r11, 0x2341f27177344 
mov [ rsp + 0x200 ], r15
mulx r15, r8, r11
adox r8, r13
mov rdx, 0x0 
adox r15, rdx
dec rdx
movzx rbp, bpl
adox rbp, rdx
adox r10, rcx
mov rdx, r12
mulx rbp, r12, r11
adox r14, [ rsp + 0x1f8 ]
adox r8, [ rsp + 0x1d8 ]
adox r15, [ rsp + 0x1b8 ]
adcx r12, [ rsp + 0x1c0 ]
mov rcx, 0x0 
adcx rbp, rcx
movzx r13, byte [ rsp + 0x1b0 ]
adox r13, rcx
add byte [ rsp + 0x1f0 ], 0x7F
adox r10, [ rsp + 0xe0 ]
adox r14, [ rsp + 0x110 ]
adox r8, [ rsp + 0x128 ]
adcx r9, rdx
mov r9, [ rsp + 0x1e0 ]
adcx r9, [ rsp + 0x1d0 ]
mov rdx, [ rsp + 0x1c8 ]
adcx rdx, [ rsp + 0x1e8 ]
adcx rbx, r10
adcx rdi, r14
adox r15, [ rsp + 0x120 ]
adox r13, [ rsp + 0x118 ]
adcx r8, [ rsp + 0x200 ]
adcx r12, r15
adcx rbp, r13
seto r10b
adc r10b, 0x0
movzx r10, r10b
adox r9, [ rsp - 0x18 ]
mov r14, 0xffffffffffffffff 
xchg rdx, r9
mulx r13, r15, r14
adox r9, [ rsp + 0x168 ]
adox rbx, [ rsp + 0x160 ]
adox rdi, [ rsp + 0x148 ]
adox r8, [ rsp + 0x158 ]
adox r12, [ rsp + 0x150 ]
adox rbp, [ rsp + 0x180 ]
mov r11, r15
adcx r11, r13
mov rcx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x208 ], rbp
mulx rbp, r14, rcx
mov rcx, r15
adcx rcx, r13
adcx r14, r13
movzx r10, r10b
movzx r13, r10b
adox r13, [ rsp + 0x1a0 ]
seto r10b
mov [ rsp + 0x210 ], r13
mov r13, -0x2 
inc r13
adox r15, rdx
adox r11, r9
adox rcx, rbx
mov r15, 0x7bc65c783158aea3 
mulx rbx, r9, r15
adcx r9, rbp
adox r14, rdi
adox r9, r8
mov rdi, 0x2341f27177344 
mulx rbp, r8, rdi
mov r13, 0x6cfc5fd681c52056 
mulx r15, rdi, r13
adcx rdi, rbx
adox rdi, r12
adcx r8, r15
setc dl
clc
adcx r11, [ rsp + 0x90 ]
adcx rcx, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xa0 ]
adcx r9, [ rsp + 0xb8 ]
movzx r12, dl
lea r12, [ r12 + rbp ]
adox r8, [ rsp + 0x208 ]
adox r12, [ rsp + 0x210 ]
movzx rbx, r10b
mov rbp, 0x0 
adox rbx, rbp
adcx rdi, [ rsp + 0xc8 ]
adcx r8, [ rsp + 0xd0 ]
mov rdx, r11
mulx r10, r11, r13
mov r15, 0xffffffffffffffff 
mulx r13, rbp, r15
adcx r12, [ rsp + 0xf8 ]
adcx rbx, [ rsp + 0x100 ]
mov r15, rbp
mov [ rsp + 0x218 ], rbx
mov rbx, -0x2 
inc rbx
adox r15, r13
mov rbx, rbp
mov [ rsp + 0x220 ], r12
setc r12b
clc
adcx rbx, rdx
adcx r15, rcx
adox rbp, r13
adcx rbp, r14
mov rbx, 0xfdc1767ae2ffffff 
mulx r14, rcx, rbx
adox rcx, r13
adcx rcx, r9
mov r9, 0x7bc65c783158aea3 
mulx rbx, r13, r9
adox r13, r14
adcx r13, rdi
adox r11, rbx
adcx r11, r8
mov rdi, 0x2341f27177344 
mulx r14, r8, rdi
adox r8, r10
mov rdx, 0x0 
adox r14, rdx
adcx r8, [ rsp + 0x220 ]
adcx r14, [ rsp + 0x218 ]
movzx r10, r12b
adc r10, 0x0
mov r12, 0xffffffffffffffff 
mov rbx, r15
sub rbx, r12
mov rdx, rbp
sbb rdx, r12
mov rdi, rcx
sbb rdi, r12
mov r9, 0xfdc1767ae2ffffff 
mov r12, r13
sbb r12, r9
mov r9, 0x7bc65c783158aea3 
mov [ rsp + 0x228 ], rdx
mov rdx, r11
sbb rdx, r9
mov r9, 0x6cfc5fd681c52056 
mov [ rsp + 0x230 ], rbx
mov rbx, r8
sbb rbx, r9
mov r9, 0x2341f27177344 
mov [ rsp + 0x238 ], rbx
mov rbx, r14
sbb rbx, r9
mov r9, 0x0 
sbb r10, r9
cmovc r12, r13
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x18 ], r12
cmovc rdx, r11
cmovc rbx, r14
mov [ r10 + 0x20 ], rdx
cmovc rdi, rcx
mov [ r10 + 0x10 ], rdi
mov rcx, [ rsp + 0x230 ]
cmovc rcx, r15
mov [ r10 + 0x0 ], rcx
mov r15, [ rsp + 0x238 ]
cmovc r15, r8
mov r13, [ rsp + 0x228 ]
cmovc r13, rbp
mov [ r10 + 0x30 ], rbx
mov [ r10 + 0x28 ], r15
mov [ r10 + 0x8 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 704
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.7727
; seed 3933631013439318 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 12662447 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 241223 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.019050267298256016
; number reverted permutation / tried permutation: 82432 / 94722 =87.025%
; number reverted decision / tried decision: 75386 / 95277 =79.123%
; validated in 557.173s
