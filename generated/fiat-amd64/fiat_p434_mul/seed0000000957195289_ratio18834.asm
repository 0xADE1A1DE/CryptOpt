SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 544
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
add r15, r12
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], rcx
mulx rcx, r12, [ rax + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r12, r8
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r12
mulx r12, r8, [ rsi + 0x8 ]
adox r10, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r10
mulx r10, rcx, [ rsi + 0x20 ]
adox rcx, r11
adcx r13, rdi
adcx r8, r14
adox r9, r10
mov rdx, [ rax + 0x20 ]
mulx r14, r11, [ rsi + 0x8 ]
adcx r11, r12
mov rdx, [ rax + 0x28 ]
mulx r12, rdi, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x30 ], r9
mulx r9, r10, [ rsi + 0x30 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], rcx
mulx rcx, r10, [ rsi + 0x30 ]
adcx rdi, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x18 ], rdi
mulx rdi, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x10 ], r14
mov [ rsp - 0x8 ], r11
mulx r11, r14, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], r13
mulx r13, r8, [ rsi + 0x18 ]
setc dl
clc
adcx r10, r9
adcx r14, rcx
seto r9b
mov rcx, -0x2 
inc rcx
adox r8, rdi
mov dil, dl
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x10 ], r14
mulx r14, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x18 ], r10
mov [ rsp + 0x20 ], r8
mulx r8, r10, [ rsi + 0x18 ]
adcx rcx, r11
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x28 ], rcx
mulx rcx, r11, [ rax + 0x20 ]
adcx r11, r14
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x30 ], r11
mulx r11, r14, [ rsi + 0x18 ]
adox r10, r13
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x38 ], r10
mulx r10, r13, [ rsi + 0x28 ]
adox r14, r8
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x40 ], r14
mulx r14, r8, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x48 ], r15
mov [ rsp + 0x50 ], rbp
mulx rbp, r15, [ rax + 0x0 ]
adcx r8, rcx
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x58 ], r8
mulx r8, rcx, [ rsi + 0x30 ]
adcx rcx, r14
seto dl
mov r14, -0x2 
inc r14
adox r13, rbp
mov bpl, dl
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x60 ], rcx
mulx rcx, r14, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], r13
mov [ rsp + 0x70 ], r15
mulx r15, r13, [ rax + 0x10 ]
adox r13, r10
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x78 ], r13
mulx r13, r10, [ rsi + 0x28 ]
adox r14, r15
mov rdx, 0x0 
adcx r8, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], r8
mulx r8, r15, [ rax + 0x20 ]
adox r15, rcx
adox r10, r8
mov rdx, [ rax + 0x30 ]
mulx r8, rcx, [ rsi + 0x28 ]
adox rcx, r13
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x88 ], r8
mulx r8, r13, [ rax + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], rcx
mov [ rsp + 0x98 ], r10
mulx r10, rcx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa0 ], r15
mov [ rsp + 0xa8 ], r14
mulx r14, r15, [ rax + 0x30 ]
add dil, 0xFF
adcx r12, r15
adc r14, 0x0
mov rdx, [ rsi + 0x18 ]
mulx r15, rdi, [ rax + 0x30 ]
add bpl, 0xFF
adcx r11, rcx
adcx r13, r10
adcx rdi, r8
mov rdx, [ rsi + 0x20 ]
mulx r8, rbp, [ rax + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, rcx, [ rax + 0x20 ]
adc r15, 0x0
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb0 ], r15
mov [ rsp + 0xb8 ], rdi
mulx rdi, r15, [ rax + 0x28 ]
add r9b, 0xFF
adcx rbx, r15
mov rdx, [ rax + 0x8 ]
mulx r15, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xc0 ], rbx
mov [ rsp + 0xc8 ], r13
mulx r13, rbx, [ rax + 0x10 ]
adcx rbp, rdi
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd0 ], rbp
mulx rbp, rdi, [ rax + 0x0 ]
adox r9, rbp
adox rbx, r15
mov rdx, [ rax + 0x18 ]
mulx rbp, r15, [ rsi + 0x10 ]
adox r15, r13
adox rcx, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xd8 ], r11
mov [ rsp + 0xe0 ], rcx
mulx rcx, r11, [ rsi + 0x10 ]
adox r11, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r11
mulx r11, r10, [ rax + 0x30 ]
adox r10, rcx
mov rdx, 0x0 
adox r11, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], r11
mulx r11, rcx, [ rax + 0x8 ]
adc r8, 0x0
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xf8 ], r8
mov [ rsp + 0x100 ], r10
mulx r10, r8, r13
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x108 ], r15
mov [ rsp + 0x110 ], rbx
mulx rbx, r15, [ rsi + 0x0 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x118 ], r9
mov [ rsp + 0x120 ], rdi
mulx rdi, r9, r13
mov rdx, r8
mov [ rsp + 0x128 ], r14
xor r14, r14
adox rdx, r10
mov r14, r8
adox r14, r10
adcx rcx, rbp
adox r9, r10
adcx r15, r11
setc bpl
clc
adcx r8, r13
adcx rdx, rcx
adcx r14, r15
mov r8, 0x6cfc5fd681c52056 
xchg rdx, r13
mulx r10, r11, r8
mov rcx, 0x7bc65c783158aea3 
mulx r8, r15, rcx
adox r15, rdi
adox r11, r8
mov rdi, 0x2341f27177344 
mulx rcx, r8, rdi
adox r8, r10
mov rdx, [ rax + 0x18 ]
mulx rdi, r10, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rcx, rdx
dec rdx
movzx rbp, bpl
adox rbp, rdx
adox rbx, r10
adcx r9, rbx
mov rdx, [ rsi + 0x0 ]
mulx r10, rbp, [ rax + 0x20 ]
adox rbp, rdi
adcx r15, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbx, rdi, [ rax + 0x28 ]
adox rdi, r10
mov rdx, [ rax + 0x30 ]
mulx rbp, r10, [ rsi + 0x0 ]
adox r10, rbx
mov rdx, 0x0 
adox rbp, rdx
mov rbx, -0x3 
inc rbx
adox r13, [ rsp + 0x50 ]
adox r14, [ rsp + 0x48 ]
adox r9, [ rsp + 0x8 ]
adcx r11, rdi
adox r15, [ rsp + 0x0 ]
adox r11, [ rsp - 0x8 ]
adcx r8, r10
adcx rcx, rbp
adox r8, [ rsp - 0x18 ]
adox r12, rcx
mov rdi, 0xffffffffffffffff 
mov rdx, rdi
mulx r10, rdi, r13
mov rbp, rdi
seto cl
inc rbx
adox rbp, r10
movzx rcx, cl
movzx rbx, cl
adcx rbx, [ rsp + 0x128 ]
mov rcx, rdi
setc dl
clc
adcx rcx, r13
adcx rbp, r14
adox rdi, r10
adcx rdi, r9
mov rcx, 0xfdc1767ae2ffffff 
xchg rdx, rcx
mulx r9, r14, r13
adox r14, r10
adcx r14, r15
mov r15, 0x7bc65c783158aea3 
mov rdx, r15
mulx r10, r15, r13
adox r15, r9
adcx r15, r11
mov r11, 0x6cfc5fd681c52056 
mov rdx, r13
mulx r9, r13, r11
adox r13, r10
adcx r13, r8
mov r8, 0x2341f27177344 
mulx r11, r10, r8
adox r10, r9
mov rdx, 0x0 
adox r11, rdx
mov r9, -0x3 
inc r9
adox rbp, [ rsp + 0x120 ]
adcx r10, r12
adox rdi, [ rsp + 0x118 ]
adox r14, [ rsp + 0x110 ]
adox r15, [ rsp + 0x108 ]
adox r13, [ rsp + 0xe0 ]
adcx r11, rbx
adox r10, [ rsp + 0xe8 ]
adox r11, [ rsp + 0x100 ]
movzx r12, cl
adcx r12, rdx
mov rcx, 0xffffffffffffffff 
mov rdx, rbp
mulx rbx, rbp, rcx
mov r9, rbp
clc
adcx r9, rdx
adox r12, [ rsp + 0xf0 ]
mov r9, rbp
seto r8b
mov rcx, -0x2 
inc rcx
adox r9, rbx
adcx r9, rdi
adox rbp, rbx
mov rdi, 0x7bc65c783158aea3 
mov byte [ rsp + 0x130 ], r8b
mulx r8, rcx, rdi
adcx rbp, r14
mov r14, 0xfdc1767ae2ffffff 
mov [ rsp + 0x138 ], r12
mulx r12, rdi, r14
adox rdi, rbx
adox rcx, r12
adcx rdi, r15
mov r15, 0x6cfc5fd681c52056 
mulx r12, rbx, r15
adox rbx, r8
adcx rcx, r13
adcx rbx, r10
mov r13, 0x2341f27177344 
mulx r8, r10, r13
adox r10, r12
adcx r10, r11
mov rdx, 0x0 
adox r8, rdx
mov r11, -0x3 
inc r11
adox r9, [ rsp - 0x10 ]
adox rbp, [ rsp + 0x20 ]
adox rdi, [ rsp + 0x38 ]
adox rcx, [ rsp + 0x40 ]
adox rbx, [ rsp + 0xd8 ]
adcx r8, [ rsp + 0x138 ]
adox r10, [ rsp + 0xc8 ]
movzx r12, byte [ rsp + 0x130 ]
adcx r12, rdx
mov rdx, 0xffffffffffffffff 
mulx r13, r11, r9
mov r15, r11
clc
adcx r15, r13
adox r8, [ rsp + 0xb8 ]
adox r12, [ rsp + 0xb0 ]
mov rdx, r14
mov [ rsp + 0x140 ], r12
mulx r12, r14, r9
mov rdx, r11
mov [ rsp + 0x148 ], r8
seto r8b
mov [ rsp + 0x150 ], r10
mov r10, -0x2 
inc r10
adox rdx, r9
adox r15, rbp
adcx r11, r13
adox r11, rdi
adcx r14, r13
adox r14, rcx
mov rdx, 0x7bc65c783158aea3 
mulx rdi, rbp, r9
adcx rbp, r12
adox rbp, rbx
seto cl
inc r10
adox r15, [ rsp - 0x48 ]
mov rbx, 0xffffffffffffffff 
mov rdx, r15
mulx r13, r15, rbx
adox r11, [ rsp - 0x40 ]
adox r14, [ rsp - 0x38 ]
mov r12, r15
setc bl
clc
adcx r12, r13
adox rbp, [ rsp - 0x20 ]
mov byte [ rsp + 0x158 ], r8b
mov r8, r15
mov byte [ rsp + 0x160 ], cl
seto cl
mov [ rsp + 0x168 ], rdi
mov rdi, -0x3 
inc rdi
adox r8, rdx
adox r12, r11
adcx r15, r13
mov r8, 0xfdc1767ae2ffffff 
mulx r10, r11, r8
adox r15, r14
mov r14, 0x7bc65c783158aea3 
mulx r8, rdi, r14
adcx r11, r13
mov r13, 0x6cfc5fd681c52056 
mov byte [ rsp + 0x170 ], cl
mulx rcx, r14, r13
adox r11, rbp
adcx rdi, r10
adcx r14, r8
mov rbp, 0x2341f27177344 
mulx r8, r10, rbp
adcx r10, rcx
setc dl
clc
adcx r12, [ rsp + 0x70 ]
adcx r15, [ rsp + 0x68 ]
movzx rcx, dl
lea rcx, [ rcx + r8 ]
mov rdx, r9
mulx r8, r9, r13
adcx r11, [ rsp + 0x78 ]
mov [ rsp + 0x178 ], r11
mulx r11, r13, rbp
setc dl
clc
mov rbp, -0x1 
movzx rbx, bl
adcx rbx, rbp
adcx r9, [ rsp + 0x168 ]
adcx r13, r8
mov rbx, 0x0 
adcx r11, rbx
movzx r8, byte [ rsp + 0x160 ]
clc
adcx r8, rbp
adcx r9, [ rsp + 0x150 ]
adcx r13, [ rsp + 0x148 ]
adcx r11, [ rsp + 0x140 ]
movzx r8, byte [ rsp + 0x158 ]
adcx r8, rbx
movzx rbx, byte [ rsp + 0x170 ]
clc
adcx rbx, rbp
adcx r9, [ rsp - 0x30 ]
adcx r13, [ rsp + 0xc0 ]
adcx r11, [ rsp + 0xd0 ]
adox rdi, r9
adox r14, r13
adcx r8, [ rsp + 0xf8 ]
adox r10, r11
adox rcx, r8
seto bl
adc bl, 0x0
movzx rbx, bl
add dl, 0xFF
adcx rdi, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xa0 ]
adcx r10, [ rsp + 0x98 ]
adcx rcx, [ rsp + 0x90 ]
mov rdx, 0xffffffffffffffff 
mulx r13, r9, r12
mov r11, r9
adox r11, r12
movzx rbx, bl
movzx r11, bl
adcx r11, [ rsp + 0x88 ]
mov r8, 0xfdc1767ae2ffffff 
mov rdx, r12
mulx rbx, r12, r8
mov rbp, r9
setc r8b
clc
adcx rbp, r13
adox rbp, r15
adcx r9, r13
adcx r12, r13
adox r9, [ rsp + 0x178 ]
adox r12, rdi
mov r15, 0x7bc65c783158aea3 
mulx r13, rdi, r15
adcx rdi, rbx
adox rdi, r14
mov r14, 0x6cfc5fd681c52056 
mulx r15, rbx, r14
adcx rbx, r13
adox rbx, r10
mov r10, 0x2341f27177344 
mulx r14, r13, r10
adcx r13, r15
setc dl
clc
adcx rbp, [ rsp - 0x28 ]
adcx r9, [ rsp + 0x18 ]
adox r13, rcx
adcx r12, [ rsp + 0x10 ]
mov rcx, 0xffffffffffffffff 
xchg rdx, rbp
mulx r10, r15, rcx
adcx rdi, [ rsp + 0x28 ]
movzx rcx, bpl
lea rcx, [ rcx + r14 ]
adox rcx, r11
adcx rbx, [ rsp + 0x30 ]
movzx r11, r8b
mov r14, 0x0 
adox r11, r14
adcx r13, [ rsp + 0x58 ]
adcx rcx, [ rsp + 0x60 ]
mov r8, r15
mov rbp, -0x3 
inc rbp
adox r8, rdx
adcx r11, [ rsp + 0x80 ]
mov r8, r15
setc bpl
clc
adcx r8, r10
adcx r15, r10
adox r8, r9
adox r15, r12
mov r9, 0xfdc1767ae2ffffff 
mulx r14, r12, r9
adcx r12, r10
adox r12, rdi
mov r10, 0x7bc65c783158aea3 
mulx r9, rdi, r10
adcx rdi, r14
adox rdi, rbx
mov rbx, 0x6cfc5fd681c52056 
mulx r10, r14, rbx
adcx r14, r9
adox r14, r13
mov r13, 0x2341f27177344 
mulx rbx, r9, r13
adcx r9, r10
mov rdx, 0x0 
adcx rbx, rdx
adox r9, rcx
adox rbx, r11
seto cl
mov r11, 0xffffffffffffffff 
mov r10, r8
sub r10, r11
mov rdx, r15
sbb rdx, r11
mov r13, r12
sbb r13, r11
mov r11, 0xfdc1767ae2ffffff 
mov [ rsp + 0x180 ], r10
mov r10, rdi
sbb r10, r11
mov r11, 0x7bc65c783158aea3 
mov [ rsp + 0x188 ], r13
mov r13, r14
sbb r13, r11
mov r11, 0x6cfc5fd681c52056 
mov [ rsp + 0x190 ], r13
mov r13, r9
sbb r13, r11
mov r11, 0x2341f27177344 
mov [ rsp + 0x198 ], r13
mov r13, rbx
sbb r13, r11
movzx r11, cl
movzx rbp, bpl
lea r11, [ r11 + rbp ]
mov rbp, 0x0 
sbb r11, rbp
cmovc r13, rbx
cmovc rdx, r15
cmovc r10, rdi
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x8 ], rdx
mov r15, [ rsp + 0x188 ]
cmovc r15, r12
mov [ r11 + 0x30 ], r13
mov r12, [ rsp + 0x198 ]
cmovc r12, r9
mov [ r11 + 0x28 ], r12
mov rdi, [ rsp + 0x190 ]
cmovc rdi, r14
mov [ r11 + 0x20 ], rdi
mov r14, [ rsp + 0x180 ]
cmovc r14, r8
mov [ r11 + 0x10 ], r15
mov [ r11 + 0x18 ], r10
mov [ r11 + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 544
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8834
; seed 1183732778937571 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7666947 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 170251 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.022205840212538314
; number reverted permutation / tried permutation: 78521 / 94953 =82.695%
; number reverted decision / tried decision: 67561 / 95046 =71.082%
; validated in 484.136s
