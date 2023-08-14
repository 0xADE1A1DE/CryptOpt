SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 696
mov rax, rdx
mov rdx, [ rsi + 0x30 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], r15
mulx r15, r10, [ rsi + 0x20 ]
test al, al
adox r10, r12
adcx rcx, r11
adcx r13, r8
mov rdx, [ rsi + 0x20 ]
mulx r8, r11, [ rax + 0x10 ]
adox r11, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, r12, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], rcx
mulx rcx, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], r10
mulx r10, r11, [ rsi + 0x0 ]
adcx r9, r14
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x18 ], r9
mulx r9, r14, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], rbp
mov [ rsp - 0x8 ], r13
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], rbx
mov [ rsp + 0x8 ], r10
mulx r10, rbx, [ rax + 0x10 ]
setc dl
clc
adcx r14, r15
adcx r11, r9
setc r15b
clc
adcx rbp, rcx
mov cl, dl
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x10 ], rbp
mulx rbp, r9, [ rax + 0x20 ]
adcx rbx, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x18 ], rbx
mulx rbx, r13, [ rax + 0x18 ]
adcx r13, r10
adcx r9, rbx
mov rdx, [ rax + 0x28 ]
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r9
mov [ rsp + 0x28 ], r13
mulx r13, r9, [ rax + 0x8 ]
adcx r10, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r10
mulx r10, rbp, [ rax + 0x30 ]
adcx rbp, rbx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x38 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x40 ], cl
mov [ rsp + 0x48 ], rbp
mulx rbp, rcx, [ rax + 0x0 ]
setc dl
clc
adcx r9, rbp
adcx rbx, r13
movzx r13, dl
lea r13, [ r13 + r10 ]
mov rdx, [ rax + 0x18 ]
mulx rbp, r10, [ rsi + 0x20 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x50 ], r13
mov [ rsp + 0x58 ], rbx
mulx rbx, r13, r12
adox r10, r8
mov r8, r13
seto dl
mov [ rsp + 0x60 ], r10
mov r10, -0x2 
inc r10
adox r8, rbx
mov r10, r13
mov [ rsp + 0x68 ], r9
setc r9b
clc
adcx r10, r12
adox r13, rbx
mov r10, 0xfdc1767ae2ffffff 
xchg rdx, r12
mov [ rsp + 0x70 ], rbp
mov byte [ rsp + 0x78 ], r12b
mulx r12, rbp, r10
adox rbp, rbx
mov rbx, 0x7bc65c783158aea3 
mov byte [ rsp + 0x80 ], r9b
mulx r9, r10, rbx
adcx r8, r14
adcx r13, r11
mov r14, 0x6cfc5fd681c52056 
mulx rbx, r11, r14
adox r10, r12
adox r11, r9
mov r12, 0x2341f27177344 
mulx r14, r9, r12
adox r9, rbx
mov rdx, [ rsi + 0x28 ]
mulx r12, rbx, [ rax + 0x8 ]
setc dl
clc
adcx rbx, rdi
mov rdi, 0x0 
adox r14, rdi
mov dil, dl
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], rbx
mov [ rsp + 0x90 ], r14
mulx r14, rbx, [ rax + 0x20 ]
mov rdx, -0x2 
inc rdx
adox rcx, r8
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x98 ], rcx
mulx rcx, r8, [ rsi + 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xa0 ], r9
mov [ rsp + 0xa8 ], r11
mulx r11, r9, [ rsi + 0x0 ]
adcx r8, r12
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb0 ], r8
mulx r8, r12, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb8 ], r13
mov [ rsp + 0xc0 ], r11
mulx r11, r13, [ rsi + 0x28 ]
seto dl
mov [ rsp + 0xc8 ], r11
mov r11, 0x0 
dec r11
movzx r15, r15b
adox r15, r11
adox r12, [ rsp + 0x8 ]
adox rbx, r8
adcx r13, rcx
setc r15b
clc
movzx rdi, dil
adcx rdi, r11
adcx r12, rbp
mov bpl, dl
mov rdx, [ rax + 0x0 ]
mulx rcx, rdi, [ rsi + 0x10 ]
adcx r10, rbx
adox r9, r14
mov rdx, [ rsi + 0x10 ]
mulx r8, r14, [ rax + 0x8 ]
seto dl
inc r11
adox r14, rcx
mov bl, dl
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xd0 ], r13
mov [ rsp + 0xd8 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xe0 ], rdi
mov byte [ rsp + 0xe8 ], r15b
mulx r15, rdi, [ rsi + 0x10 ]
adox rcx, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf0 ], rcx
mulx rcx, r8, [ rax + 0x18 ]
adox rdi, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xf8 ], rdi
mulx rdi, r11, [ rax + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x100 ], r9
mov [ rsp + 0x108 ], r10
mulx r10, r9, [ rsi + 0x8 ]
adox r13, r15
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x110 ], r13
mulx r13, r15, [ rsi + 0x10 ]
adox r11, r14
adox r15, rdi
setc dl
movzx r14, byte [ rsp + 0x80 ]
clc
mov rdi, -0x1 
adcx r14, rdi
adcx r8, [ rsp + 0x48 ]
adcx r9, rcx
mov r14b, dl
mov rdx, [ rsi + 0x8 ]
mulx rdi, rcx, [ rax + 0x30 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x118 ], r15
mov [ rsp + 0x120 ], r11
mulx r11, r15, [ rax + 0x28 ]
mov rdx, 0x0 
adox r13, rdx
adcx r15, r10
adcx rcx, r11
adc rdi, 0x0
mov rdx, [ rax + 0x20 ]
mulx r11, r10, [ rsi + 0x20 ]
add byte [ rsp + 0x78 ], 0xFF
adcx r10, [ rsp + 0x70 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x128 ], r10
mov [ rsp + 0x130 ], r13
mulx r13, r10, [ rax + 0x28 ]
adcx r10, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x138 ], r10
mulx r10, r11, [ rax + 0x30 ]
adcx r11, r13
adc r10, 0x0
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x140 ], r10
mulx r10, r13, [ rsi + 0x0 ]
add bl, 0xFF
adcx r13, [ rsp + 0xc0 ]
adc r10, 0x0
mov rdx, [ rsp + 0x68 ]
add bpl, 0xFF
adcx rdx, [ rsp + 0xb8 ]
adcx r12, [ rsp + 0x58 ]
adcx r8, [ rsp + 0x108 ]
mov rbp, [ rsp + 0x100 ]
mov rbx, -0x1 
movzx r14, r14b
adox r14, rbx
adox rbp, [ rsp + 0xa8 ]
adcx r9, rbp
adox r13, [ rsp + 0xa0 ]
adcx r15, r13
adox r10, [ rsp + 0x90 ]
mov r14, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, rbp, [ rax + 0x28 ]
adcx rcx, r10
mov rdx, [ rsi + 0x30 ]
mulx rbx, r10, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x148 ], r11
mov [ rsp + 0x150 ], rcx
mulx rcx, r11, [ rax + 0x20 ]
setc dl
movzx rdx, dl
adox rdx, rdi
movzx rdi, byte [ rsp + 0xe8 ]
clc
mov [ rsp + 0x158 ], rdx
mov rdx, -0x1 
adcx rdi, rdx
adcx r11, [ rsp + 0xc8 ]
adcx rbp, rcx
mov rdx, [ rsi + 0x30 ]
mulx rcx, rdi, [ rax + 0x20 ]
seto dl
mov [ rsp + 0x160 ], rbp
movzx rbp, byte [ rsp + 0x40 ]
mov [ rsp + 0x168 ], r11
mov r11, 0x0 
dec r11
adox rbp, r11
adox rdi, [ rsp + 0x0 ]
adox r10, rcx
mov bpl, dl
mov rdx, [ rsi + 0x30 ]
mulx r11, rcx, [ rax + 0x30 ]
adox rcx, rbx
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x170 ], rcx
mulx rcx, rbx, [ rsi + 0x28 ]
adcx rbx, r13
mov rdx, 0x0 
adox r11, rdx
mov r13, 0xffffffffffffffff 
mov rdx, [ rsp + 0x98 ]
mov [ rsp + 0x178 ], r11
mov [ rsp + 0x180 ], r10
mulx r10, r11, r13
adc rcx, 0x0
mov r13, r11
mov [ rsp + 0x188 ], rdi
xor rdi, rdi
adox r13, rdx
mov r13, r11
adcx r13, r10
adcx r11, r10
adox r13, r14
mov r14, 0x7bc65c783158aea3 
mov [ rsp + 0x190 ], rcx
mulx rcx, rdi, r14
adox r11, r12
mov r12, 0xfdc1767ae2ffffff 
mov [ rsp + 0x198 ], rbx
mulx rbx, r14, r12
adcx r14, r10
adox r14, r8
adcx rdi, rbx
adox rdi, r9
mov r8, 0x2341f27177344 
mulx r10, r9, r8
mov rbx, 0x6cfc5fd681c52056 
mulx r12, r8, rbx
adcx r8, rcx
adox r8, r15
adcx r9, r12
adox r9, [ rsp + 0x150 ]
mov rdx, 0x0 
adcx r10, rdx
clc
adcx r13, [ rsp + 0xe0 ]
adcx r11, [ rsp + 0xd8 ]
adcx r14, [ rsp + 0xf0 ]
adcx rdi, [ rsp + 0xf8 ]
adox r10, [ rsp + 0x158 ]
movzx r15, bpl
adox r15, rdx
adcx r8, [ rsp + 0x110 ]
mov rbp, 0xffffffffffffffff 
mov rdx, r13
mulx rcx, r13, rbp
adcx r9, [ rsp + 0x120 ]
adcx r10, [ rsp + 0x118 ]
mov r12, r13
mov rbx, -0x2 
inc rbx
adox r12, rdx
adcx r15, [ rsp + 0x130 ]
mov r12, r13
setc bl
clc
adcx r12, rcx
adcx r13, rcx
adox r12, r11
adox r13, r14
mov r11, 0xfdc1767ae2ffffff 
mulx rbp, r14, r11
adcx r14, rcx
adox r14, rdi
mov rdi, 0x7bc65c783158aea3 
mulx r11, rcx, rdi
adcx rcx, rbp
adox rcx, r8
mov r8, 0x6cfc5fd681c52056 
mulx rdi, rbp, r8
adcx rbp, r11
adox rbp, r9
mov r9, 0x2341f27177344 
mulx r8, r11, r9
adcx r11, rdi
adox r11, r10
mov rdx, 0x0 
adcx r8, rdx
adox r8, r15
movzx r10, bl
adox r10, rdx
test al, al
adox r12, [ rsp - 0x8 ]
mov rbx, 0xffffffffffffffff 
mov rdx, r12
mulx r15, r12, rbx
mov rdi, r12
adcx rdi, r15
adox r13, [ rsp + 0x10 ]
adox r14, [ rsp + 0x18 ]
adox rcx, [ rsp + 0x28 ]
mov r9, r12
adcx r9, r15
adox rbp, [ rsp + 0x20 ]
adox r11, [ rsp + 0x30 ]
adox r8, [ rsp + 0x38 ]
adox r10, [ rsp + 0x50 ]
seto bl
mov [ rsp + 0x1a0 ], r10
mov r10, -0x2 
inc r10
adox r12, rdx
adox rdi, r13
adox r9, r14
mov r12, 0xfdc1767ae2ffffff 
mulx r14, r13, r12
adcx r13, r15
mov r15, 0x6cfc5fd681c52056 
mulx r12, r10, r15
mov r15, 0x7bc65c783158aea3 
mov byte [ rsp + 0x1a8 ], bl
mov [ rsp + 0x1b0 ], r8
mulx r8, rbx, r15
adcx rbx, r14
adox r13, rcx
adox rbx, rbp
adcx r10, r8
adox r10, r11
mov rcx, 0x2341f27177344 
mulx r11, rbp, rcx
adcx rbp, r12
setc dl
clc
adcx rdi, [ rsp - 0x10 ]
adcx r9, [ rsp - 0x20 ]
adcx r13, [ rsp - 0x28 ]
adcx rbx, [ rsp + 0x60 ]
mov r14, 0xffffffffffffffff 
xchg rdx, rdi
mulx r8, r12, r14
adcx r10, [ rsp + 0x128 ]
mov rcx, r12
setc r15b
clc
adcx rcx, r8
mov r14, r12
adcx r14, r8
mov byte [ rsp + 0x1b8 ], r15b
seto r15b
mov [ rsp + 0x1c0 ], r10
mov r10, -0x2 
inc r10
adox r12, rdx
adox rcx, r9
adox r14, r13
mov r12, 0x7bc65c783158aea3 
mulx r13, r9, r12
mov r10, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1c8 ], r13
mulx r13, r12, r10
adcx r12, r8
adcx r9, r13
movzx r8, dil
lea r8, [ r8 + r11 ]
adox r12, rbx
setc r11b
clc
mov rdi, -0x1 
movzx r15, r15b
adcx r15, rdi
adcx rbp, [ rsp + 0x1b0 ]
adox r9, [ rsp + 0x1c0 ]
seto r15b
inc rdi
adox rcx, [ rsp - 0x40 ]
adox r14, [ rsp + 0x88 ]
adox r12, [ rsp + 0xb0 ]
adox r9, [ rsp + 0xd0 ]
adcx r8, [ rsp + 0x1a0 ]
seto bl
movzx r13, byte [ rsp + 0x1b8 ]
dec rdi
adox r13, rdi
adox rbp, [ rsp + 0x138 ]
adox r8, [ rsp + 0x148 ]
movzx r13, byte [ rsp + 0x1a8 ]
mov rdi, 0x0 
adcx r13, rdi
adox r13, [ rsp + 0x140 ]
mov rdi, 0xffffffffffffffff 
xchg rdx, rcx
mov byte [ rsp + 0x1d0 ], bl
mulx rbx, r10, rdi
mov rdi, r10
clc
adcx rdi, rbx
mov [ rsp + 0x1d8 ], r13
mov r13, r10
adcx r13, rbx
mov [ rsp + 0x1e0 ], r8
seto r8b
mov [ rsp + 0x1e8 ], rbp
mov rbp, -0x2 
inc rbp
adox r10, rdx
adox rdi, r14
adox r13, r12
mov r10, 0xfdc1767ae2ffffff 
mulx r12, r14, r10
adcx r14, rbx
adox r14, r9
seto r9b
inc rbp
adox rdi, [ rsp - 0x48 ]
adox r13, [ rsp - 0x30 ]
mov rbx, 0x7bc65c783158aea3 
mulx r10, rbp, rbx
adcx rbp, r12
mov r12, 0x2341f27177344 
xchg rdx, r12
mov [ rsp + 0x1f0 ], r13
mulx r13, rbx, rcx
adox r14, [ rsp - 0x38 ]
mov [ rsp + 0x1f8 ], r14
mov [ rsp + 0x200 ], rdi
mulx rdi, r14, r12
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x208 ], rbp
mov byte [ rsp + 0x210 ], r9b
mulx r9, rbp, r12
adcx rbp, r10
mulx r10, r12, rcx
seto cl
mov rdx, 0x0 
dec rdx
movzx r11, r11b
adox r11, rdx
adox r12, [ rsp + 0x1c8 ]
adox rbx, r10
mov r11, 0x0 
adox r13, r11
inc rdx
mov r11, -0x1 
movzx r15, r15b
adox r15, r11
adox r12, [ rsp + 0x1e8 ]
adox rbx, [ rsp + 0x1e0 ]
adox r13, [ rsp + 0x1d8 ]
movzx r15, r8b
adox r15, rdx
adcx r14, r9
adc rdi, 0x0
add byte [ rsp + 0x1d0 ], 0xFF
adcx r12, [ rsp + 0x168 ]
adcx rbx, [ rsp + 0x160 ]
adcx r13, [ rsp + 0x198 ]
movzx r8, byte [ rsp + 0x210 ]
adox r8, r11
adox r12, [ rsp + 0x208 ]
adcx r15, [ rsp + 0x190 ]
adox rbp, rbx
adox r14, r13
setc r8b
clc
movzx rcx, cl
adcx rcx, r11
adcx r12, [ rsp - 0x18 ]
adcx rbp, [ rsp + 0x188 ]
adcx r14, [ rsp + 0x180 ]
adox rdi, r15
adcx rdi, [ rsp + 0x170 ]
movzx rcx, r8b
adox rcx, rdx
mov r9, 0xffffffffffffffff 
mov rdx, [ rsp + 0x200 ]
mulx rbx, r10, r9
adcx rcx, [ rsp + 0x178 ]
mov r13, r10
inc r11
adox r13, rbx
mov r8, r10
adox r8, rbx
mov r15, 0xfdc1767ae2ffffff 
mulx r9, r11, r15
adox r11, rbx
setc bl
clc
adcx r10, rdx
adcx r13, [ rsp + 0x1f0 ]
adcx r8, [ rsp + 0x1f8 ]
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0x218 ], r8
mulx r8, r15, r10
adox r15, r9
adcx r11, r12
adcx r15, rbp
mov r12, 0x6cfc5fd681c52056 
mulx r9, rbp, r12
adox rbp, r8
adcx rbp, r14
mov r14, 0x2341f27177344 
mulx r12, r8, r14
adox r8, r9
adcx r8, rdi
mov rdx, 0x0 
adox r12, rdx
adcx r12, rcx
movzx rdi, bl
adc rdi, 0x0
mov rbx, 0xffffffffffffffff 
mov rcx, r13
sub rcx, rbx
mov r9, [ rsp + 0x218 ]
mov rdx, r9
sbb rdx, rbx
mov r14, r11
sbb r14, rbx
mov rbx, 0xfdc1767ae2ffffff 
mov r10, r15
sbb r10, rbx
mov rbx, 0x7bc65c783158aea3 
mov [ rsp + 0x220 ], r14
mov r14, rbp
sbb r14, rbx
mov rbx, 0x6cfc5fd681c52056 
mov [ rsp + 0x228 ], r14
mov r14, r8
sbb r14, rbx
mov rbx, 0x2341f27177344 
mov [ rsp + 0x230 ], rdx
mov rdx, r12
sbb rdx, rbx
mov rbx, 0x0 
sbb rdi, rbx
cmovc r10, r15
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x18 ], r10
cmovc rcx, r13
cmovc rdx, r12
mov [ rdi + 0x0 ], rcx
mov r13, [ rsp + 0x230 ]
cmovc r13, r9
mov [ rdi + 0x8 ], r13
mov r9, [ rsp + 0x220 ]
cmovc r9, r11
mov r11, [ rsp + 0x228 ]
cmovc r11, rbp
mov [ rdi + 0x20 ], r11
cmovc r14, r8
mov [ rdi + 0x30 ], rdx
mov [ rdi + 0x10 ], r9
mov [ rdi + 0x28 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 696
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.7455
; seed 3536607304688664 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 11402660 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 250601 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0219774157959634
; number reverted permutation / tried permutation: 80788 / 95441 =84.647%
; number reverted decision / tried decision: 69203 / 94558 =73.186%
; validated in 513.56s
