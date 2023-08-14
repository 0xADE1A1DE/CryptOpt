SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 704
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x48 ], r13
mov [ rsp - 0x40 ], r10
mulx r10, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], rbx
mulx rbx, r13, [ rax + 0x8 ]
test al, al
adox r13, r10
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], r13
mulx r13, r10, [ rsi + 0x28 ]
adox r10, rbx
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x20 ], r10
mulx r10, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r10
mov [ rsp - 0x10 ], rbx
mulx rbx, r10, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x8 ], rdi
mov [ rsp + 0x0 ], r15
mulx r15, rdi, [ rsi + 0x20 ]
adcx rdi, r14
adox rbp, r13
adcx r9, r15
mov rdx, [ rsi + 0x8 ]
mulx r13, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x8 ], rbp
mulx rbp, r15, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x10 ], r9
mov [ rsp + 0x18 ], rdi
mulx rdi, r9, [ rsi + 0x8 ]
setc dl
clc
adcx r14, rdi
mov dil, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r14
mov [ rsp + 0x28 ], r9
mulx r9, r14, [ rax + 0x18 ]
adcx r15, r13
adcx r14, rbp
mov rdx, [ rax + 0x30 ]
mulx rbp, r13, [ rsi + 0x8 ]
adcx r10, r9
adcx rcx, rbx
mov rdx, [ rax + 0x10 ]
mulx r9, rbx, [ rsi + 0x30 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x30 ], rcx
mov [ rsp + 0x38 ], r10
mulx r10, rcx, [ rsi + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x40 ], r14
mov [ rsp + 0x48 ], r15
mulx r15, r14, [ rsi + 0x30 ]
adcx r13, r8
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x50 ], r14
mulx r14, r8, [ rax + 0x8 ]
setc dl
clc
adcx r8, r15
adcx rbx, r14
mov r15b, dl
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x58 ], rbx
mulx rbx, r14, [ rsi + 0x28 ]
adox rcx, r12
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x60 ], r8
mulx r8, r12, [ rsi + 0x28 ]
adox r12, r10
adox r14, r8
mov rdx, [ rax + 0x10 ]
mulx r8, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], r14
mov [ rsp + 0x70 ], r12
mulx r12, r14, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], rcx
mov [ rsp + 0x80 ], rbx
mulx rbx, rcx, [ rax + 0x18 ]
seto dl
mov [ rsp + 0x88 ], r13
mov r13, -0x2 
inc r13
adox r14, r11
adox r10, r12
adox rcx, r8
mov r11b, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, [ rax + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov byte [ rsp + 0x90 ], r11b
mulx r11, r13, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x98 ], rcx
mov [ rsp + 0xa0 ], r10
mulx r10, rcx, [ rax + 0x20 ]
adox r8, rbx
adcx r13, r9
mov rdx, [ rsi + 0x10 ]
mulx rbx, r9, [ rax + 0x8 ]
adcx rcx, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], rcx
mulx rcx, r11, [ rax + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], r13
mov [ rsp + 0xb8 ], r8
mulx r8, r13, [ rax + 0x20 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc0 ], r14
mov [ rsp + 0xc8 ], rbp
mulx rbp, r14, [ rax + 0x30 ]
adcx r10, [ rsp + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xd0 ], r10
mov byte [ rsp + 0xd8 ], r15b
mulx r15, r10, [ rsi + 0x10 ]
adcx r14, [ rsp - 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xe0 ], r14
mov byte [ rsp + 0xe8 ], dil
mulx rdi, r14, [ rsi + 0x10 ]
setc dl
clc
adcx r9, rdi
adcx r11, rbx
mov bl, dl
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xf0 ], r11
mulx r11, rdi, [ rsi + 0x18 ]
adcx r10, rcx
movzx rdx, bl
lea rdx, [ rdx + rbp ]
adcx r13, r15
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, rbp, [ rax + 0x28 ]
adox rbp, r12
mov rdx, [ rax + 0x28 ]
mulx rbx, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xf8 ], rcx
mov [ rsp + 0x100 ], rbp
mulx rbp, rcx, [ rsi + 0x0 ]
adcx r12, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x108 ], r12
mulx r12, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x110 ], r13
mov [ rsp + 0x118 ], r10
mulx r10, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x120 ], r10
mov [ rsp + 0x128 ], r9
mulx r9, r10, [ rax + 0x8 ]
adox rdi, r15
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x130 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r11, rdx
adcx r13, rbx
mov rbx, -0x3 
inc rbx
adox r10, rbp
adox r8, r9
mov rdx, [ rax + 0x18 ]
mulx r9, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x138 ], r11
mulx r11, rbx, [ rax + 0x20 ]
adox rbp, r12
adox rbx, r9
mov rdx, [ rax + 0x20 ]
mulx r9, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x140 ], r13
mov [ rsp + 0x148 ], r14
mulx r14, r13, [ rax + 0x28 ]
setc dl
mov [ rsp + 0x150 ], rbx
movzx rbx, byte [ rsp + 0xe8 ]
clc
mov [ rsp + 0x158 ], rbp
mov rbp, -0x1 
adcx rbx, rbp
adcx r15, [ rsp - 0x30 ]
mov bl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x160 ], r15
mulx r15, rbp, [ rax + 0x28 ]
adcx r12, rdi
adcx rbp, r9
mov rdx, [ rsi + 0x20 ]
mulx r9, rdi, [ rax + 0x30 ]
adox r13, r11
adcx rdi, r15
adox r14, [ rsp - 0x10 ]
mov rdx, 0xffffffffffffffff 
mulx r15, r11, rcx
mov rdx, r11
mov [ rsp + 0x168 ], rdi
seto dil
mov [ rsp + 0x170 ], rbp
mov rbp, -0x2 
inc rbp
adox rdx, rcx
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x178 ], r12
mulx r12, rbp, rcx
movzx rdx, dil
mov byte [ rsp + 0x180 ], bl
mov rbx, [ rsp - 0x18 ]
lea rdx, [ rdx + rbx ]
mov rbx, 0x0 
adcx r9, rbx
mov rdi, 0x7bc65c783158aea3 
xchg rdx, rcx
mov [ rsp + 0x188 ], r9
mulx r9, rbx, rdi
mov rdi, r11
clc
adcx rdi, r15
adcx r11, r15
adcx rbp, r15
adcx rbx, r12
mov r15, 0x6cfc5fd681c52056 
mov [ rsp + 0x190 ], rcx
mulx rcx, r12, r15
adox rdi, r10
adcx r12, r9
adox r11, r8
mov r10, 0x2341f27177344 
mulx r9, r8, r10
adcx r8, rcx
adox rbp, [ rsp + 0x158 ]
mov rdx, 0x0 
adcx r9, rdx
clc
adcx rdi, [ rsp + 0x28 ]
movzx rcx, byte [ rsp + 0xd8 ]
mov rdx, [ rsp + 0xc8 ]
lea rcx, [ rcx + rdx ]
mov rdx, r10
mulx r15, r10, rdi
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x198 ], r15
mov [ rsp + 0x1a0 ], r10
mulx r10, r15, rdi
adcx r11, [ rsp + 0x20 ]
adcx rbp, [ rsp + 0x48 ]
adox rbx, [ rsp + 0x150 ]
adox r12, r13
adcx rbx, [ rsp + 0x40 ]
adox r8, r14
adcx r12, [ rsp + 0x38 ]
adcx r8, [ rsp + 0x30 ]
adox r9, [ rsp + 0x190 ]
mov r13, r15
seto r14b
mov rdx, -0x2 
inc rdx
adox r13, r10
adcx r9, [ rsp + 0x88 ]
movzx rdx, r14b
adcx rdx, rcx
mov rcx, 0xfdc1767ae2ffffff 
xchg rdx, rcx
mov [ rsp + 0x1a8 ], rcx
mulx rcx, r14, rdi
mov rdx, r15
adox rdx, r10
adox r14, r10
setc r10b
clc
adcx r15, rdi
adcx r13, r11
adcx rdx, rbp
adcx r14, rbx
mov r15, 0x7bc65c783158aea3 
xchg rdx, r15
mulx rbp, r11, rdi
mov rbx, 0x6cfc5fd681c52056 
mov rdx, rbx
mov byte [ rsp + 0x1b0 ], r10b
mulx r10, rbx, rdi
adox r11, rcx
adcx r11, r12
adox rbx, rbp
adox r10, [ rsp + 0x1a0 ]
mov rdi, [ rsp + 0x198 ]
mov r12, 0x0 
adox rdi, r12
mov rcx, -0x3 
inc rcx
adox r13, [ rsp + 0x148 ]
adox r15, [ rsp + 0x128 ]
mov rbp, 0xfdc1767ae2ffffff 
mov rdx, r13
mulx r12, r13, rbp
adox r14, [ rsp + 0xf0 ]
adcx rbx, r8
adox r11, [ rsp + 0x118 ]
adcx r10, r9
adcx rdi, [ rsp + 0x1a8 ]
adox rbx, [ rsp + 0x110 ]
adox r10, [ rsp + 0x108 ]
movzx r8, byte [ rsp + 0x1b0 ]
mov r9, 0x0 
adcx r8, r9
adox rdi, [ rsp + 0x140 ]
movzx r9, byte [ rsp + 0x180 ]
mov rcx, [ rsp + 0x120 ]
lea r9, [ r9 + rcx ]
mov rcx, 0xffffffffffffffff 
mov [ rsp + 0x1b8 ], rdi
mulx rdi, rbp, rcx
mov rcx, rbp
clc
adcx rcx, rdi
mov [ rsp + 0x1c0 ], r10
mov r10, rbp
adcx r10, rdi
adcx r13, rdi
adox r9, r8
seto r8b
mov rdi, -0x2 
inc rdi
adox rbp, rdx
adox rcx, r15
adox r10, r14
adox r13, r11
mov rbp, 0x7bc65c783158aea3 
mulx r14, r15, rbp
mov r11, 0x6cfc5fd681c52056 
mulx rbp, rdi, r11
adcx r15, r12
adcx rdi, r14
adox r15, rbx
adox rdi, [ rsp + 0x1c0 ]
mov r12, 0x2341f27177344 
mulx r14, rbx, r12
adcx rbx, rbp
setc dl
clc
adcx rcx, [ rsp - 0x40 ]
movzx rbp, dl
lea rbp, [ rbp + r14 ]
adcx r10, [ rsp + 0xc0 ]
adcx r13, [ rsp + 0xa0 ]
adcx r15, [ rsp + 0x98 ]
adcx rdi, [ rsp + 0xb8 ]
adox rbx, [ rsp + 0x1b8 ]
adox rbp, r9
mov r9, 0xffffffffffffffff 
mov rdx, r9
mulx r14, r9, rcx
movzx r12, r8b
mov r11, 0x0 
adox r12, r11
mov r8, r9
mov rdx, -0x3 
inc rdx
adox r8, r14
adcx rbx, [ rsp + 0x100 ]
adcx rbp, [ rsp + 0x130 ]
adcx r12, [ rsp + 0x138 ]
mov rdx, r9
mov [ rsp + 0x1c8 ], r12
setc r12b
clc
adcx rdx, rcx
adcx r8, r10
mov rdx, 0xfdc1767ae2ffffff 
mulx r11, r10, rcx
adox r9, r14
adcx r9, r13
adox r10, r14
adcx r10, r15
mov r13, 0x7bc65c783158aea3 
mov rdx, rcx
mulx r15, rcx, r13
adox rcx, r11
adcx rcx, rdi
mov rdi, 0x6cfc5fd681c52056 
mulx r11, r14, rdi
adox r14, r15
adcx r14, rbx
mov rbx, 0x2341f27177344 
mulx rdi, r15, rbx
adox r15, r11
adcx r15, rbp
mov rdx, 0x0 
adox rdi, rdx
mov rbp, -0x3 
inc rbp
adox r8, [ rsp - 0x48 ]
adcx rdi, [ rsp + 0x1c8 ]
mov rdx, r8
mulx r11, r8, r13
adox r9, [ rsp + 0x18 ]
adox r10, [ rsp + 0x10 ]
mov rbp, 0xffffffffffffffff 
mulx r13, rbx, rbp
adox rcx, [ rsp + 0x160 ]
movzx rbp, r12b
mov [ rsp + 0x1d0 ], r11
mov r11, 0x0 
adcx rbp, r11
adox r14, [ rsp + 0x178 ]
mov r12, rbx
clc
adcx r12, r13
adox r15, [ rsp + 0x170 ]
adox rdi, [ rsp + 0x168 ]
adox rbp, [ rsp + 0x188 ]
mov [ rsp + 0x1d8 ], rbp
mov rbp, rbx
mov [ rsp + 0x1e0 ], rdi
seto dil
mov [ rsp + 0x1e8 ], r15
mov r15, -0x3 
inc r15
adox rbp, rdx
mov rbp, 0xfdc1767ae2ffffff 
mulx r15, r11, rbp
adcx rbx, r13
adcx r11, r13
adcx r8, r15
adox r12, r9
setc r9b
clc
adcx r12, [ rsp - 0x38 ]
adox rbx, r10
adcx rbx, [ rsp - 0x28 ]
mov r10, 0x6cfc5fd681c52056 
mulx r15, r13, r10
adox r11, rcx
adox r8, r14
setc cl
clc
mov r14, -0x1 
movzx r9, r9b
adcx r9, r14
adcx r13, [ rsp + 0x1d0 ]
mov r9, 0x2341f27177344 
mulx r10, r14, r9
adcx r14, r15
movzx rdx, byte [ rsp + 0x90 ]
mov r15, [ rsp + 0x80 ]
lea rdx, [ rdx + r15 ]
setc r15b
clc
mov r9, -0x1 
movzx rcx, cl
adcx rcx, r9
adcx r11, [ rsp - 0x20 ]
adcx r8, [ rsp + 0x8 ]
adox r13, [ rsp + 0x1e8 ]
movzx rcx, r15b
lea rcx, [ rcx + r10 ]
adcx r13, [ rsp + 0x78 ]
adox r14, [ rsp + 0x1e0 ]
adox rcx, [ rsp + 0x1d8 ]
mov r10, 0xffffffffffffffff 
xchg rdx, r10
mulx r9, r15, r12
movzx rbp, dil
mov rdx, 0x0 
adox rbp, rdx
mov rdi, r15
mov [ rsp + 0x1f0 ], r13
mov r13, -0x3 
inc r13
adox rdi, r9
adcx r14, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0x68 ]
adcx r10, rbp
mov rbp, 0xfdc1767ae2ffffff 
mov rdx, r12
mulx r13, r12, rbp
mov rbp, 0x7bc65c783158aea3 
mov [ rsp + 0x1f8 ], r10
mov [ rsp + 0x200 ], rcx
mulx rcx, r10, rbp
mov rbp, r15
adox rbp, r9
adox r12, r9
setc r9b
clc
adcx r15, rdx
adox r10, r13
adcx rdi, rbx
adcx rbp, r11
mov r15, 0x2341f27177344 
mulx r11, rbx, r15
mov r13, 0x6cfc5fd681c52056 
mov byte [ rsp + 0x208 ], r9b
mulx r9, r15, r13
adox r15, rcx
adcx r12, r8
adox rbx, r9
adcx r10, [ rsp + 0x1f0 ]
adcx r15, r14
adcx rbx, [ rsp + 0x200 ]
seto dl
mov r8, -0x2 
inc r8
adox rdi, [ rsp + 0x50 ]
adox rbp, [ rsp + 0x60 ]
adox r12, [ rsp + 0x58 ]
mov r14, 0xffffffffffffffff 
xchg rdx, rdi
mulx r9, rcx, r14
mov r8, 0x7bc65c783158aea3 
mulx r14, r13, r8
adox r10, [ rsp + 0xb0 ]
movzx r8, dil
lea r8, [ r8 + r11 ]
adcx r8, [ rsp + 0x1f8 ]
adox r15, [ rsp + 0xa8 ]
adox rbx, [ rsp + 0xd0 ]
movzx r11, byte [ rsp + 0x208 ]
mov rdi, 0x0 
adcx r11, rdi
mov [ rsp + 0x210 ], rbx
mov rbx, rcx
clc
adcx rbx, r9
mov rdi, rcx
adcx rdi, r9
adox r8, [ rsp + 0xe0 ]
adox r11, [ rsp + 0xf8 ]
mov [ rsp + 0x218 ], r11
seto r11b
mov [ rsp + 0x220 ], r8
mov r8, -0x2 
inc r8
adox rcx, rdx
adox rbx, rbp
mov rcx, 0xfdc1767ae2ffffff 
mulx r8, rbp, rcx
adcx rbp, r9
adox rdi, r12
adox rbp, r10
adcx r13, r8
adox r13, r15
mov r12, 0x6cfc5fd681c52056 
mulx r10, r9, r12
mov r15, 0x2341f27177344 
mulx r12, r8, r15
adcx r9, r14
adcx r8, r10
mov rdx, 0x0 
adcx r12, rdx
adox r9, [ rsp + 0x210 ]
adox r8, [ rsp + 0x220 ]
adox r12, [ rsp + 0x218 ]
movzx r14, r11b
adox r14, rdx
mov r11, 0xffffffffffffffff 
mov r10, rbx
sub r10, r11
mov rdx, rdi
sbb rdx, r11
mov r15, rbp
sbb r15, r11
mov r11, r13
sbb r11, rcx
mov rcx, 0x7bc65c783158aea3 
mov [ rsp + 0x228 ], r15
mov r15, r9
sbb r15, rcx
mov rcx, 0x6cfc5fd681c52056 
mov [ rsp + 0x230 ], rdx
mov rdx, r8
sbb rdx, rcx
mov rcx, 0x2341f27177344 
mov [ rsp + 0x238 ], rdx
mov rdx, r12
sbb rdx, rcx
mov rcx, 0x0 
sbb r14, rcx
cmovc r11, r13
cmovc r15, r9
cmovc r10, rbx
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], r10
mov rbx, [ rsp + 0x230 ]
cmovc rbx, rdi
mov rdi, [ rsp + 0x238 ]
cmovc rdi, r8
mov [ r14 + 0x28 ], rdi
mov r13, [ rsp + 0x228 ]
cmovc r13, rbp
cmovc rdx, r12
mov [ r14 + 0x10 ], r13
mov [ r14 + 0x18 ], r11
mov [ r14 + 0x8 ], rbx
mov [ r14 + 0x30 ], rdx
mov [ r14 + 0x20 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 704
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.9146
; seed 0173090828695237 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7339348 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=20, initial num_batches=31): 153935 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.020973933924375843
; number reverted permutation / tried permutation: 68758 / 94928 =72.432%
; number reverted decision / tried decision: 63121 / 95071 =66.394%
; validated in 412.036s
