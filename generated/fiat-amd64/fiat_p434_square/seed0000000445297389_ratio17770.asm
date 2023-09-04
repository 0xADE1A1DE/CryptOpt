SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 576
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x20 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rax
mulx rax, rdi, r12
xor rdx, rdx
adox r14, r10
adox rbx, r15
adox r8, rbp
adox r11, r9
mov rdx, [ rsi + 0x28 ]
mulx r9, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mulx r15, rbp, [ rsi + 0x8 ]
adox r10, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x40 ], r10
mulx r10, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x38 ], rcx
mov [ rsp - 0x30 ], r11
mulx r11, rcx, [ rsi + 0x20 ]
adox rcx, r9
adcx rbp, r10
mov rdx, [ rsi + 0x28 ]
mulx r10, r9, [ rsi + 0x10 ]
adcx r9, r15
mov rdx, rdi
setc r15b
clc
adcx rdx, rax
mov [ rsp - 0x28 ], r9
mov r9, rdi
adcx r9, rax
mov [ rsp - 0x20 ], rbp
mov rbp, 0x0 
adox r11, rbp
mov rbp, 0xfdc1767ae2ffffff 
xchg rdx, rbp
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], rcx
mulx rcx, r11, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x8 ], r8
mov [ rsp + 0x0 ], rbx
mulx rbx, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x8 ], r14
mov [ rsp + 0x10 ], rcx
mulx rcx, r14, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r8, r13
adox r14, rbx
adcx r11, rax
setc r13b
clc
adcx rdi, r12
mov rdx, [ rsi + 0x0 ]
mulx rax, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov byte [ rsp + 0x18 ], r13b
mulx r13, rbx, [ rsi + 0x0 ]
adox rdi, rcx
adox rbx, rax
adcx rbp, r8
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rsi + 0x0 ]
adcx r9, r14
mov rdx, [ rsi + 0x0 ]
mulx rax, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], r9
mov [ rsp + 0x28 ], rbp
mulx rbp, r9, [ rsi + 0x18 ]
adcx r11, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x30 ], r9
mulx r9, rdi, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r11
mov [ rsp + 0x40 ], rbx
mulx rbx, r11, [ rsi + 0x8 ]
adox rcx, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x48 ], rcx
mulx rcx, r13, [ rsi + 0x8 ]
setc dl
clc
adcx r11, rbp
mov bpl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r11
mov [ rsp + 0x58 ], r13
mulx r13, r11, rdx
adox r14, r8
seto dl
mov r8, -0x2 
inc r8
adox rdi, rcx
movzx rcx, dl
lea rcx, [ rcx + rax ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], rcx
mov [ rsp + 0x68 ], r14
mulx r14, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], rdi
mov byte [ rsp + 0x78 ], bpl
mulx rbp, rdi, [ rsi + 0x18 ]
adcx rdi, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x80 ], rdi
mulx rdi, rbx, [ rsi + 0x18 ]
adox rax, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x88 ], rax
mulx rax, r9, [ rsi + 0x28 ]
setc dl
clc
mov [ rsp + 0x90 ], rbp
mov rbp, -0x1 
movzx r15, r15b
adcx r15, rbp
adcx r10, rcx
mov r15b, dl
mov rdx, [ rsi + 0x8 ]
mulx rbp, rcx, [ rsi + 0x20 ]
adox rbx, r8
adcx r9, r14
adcx r11, rax
adox rcx, rdi
mov rdx, [ rsi + 0x10 ]
mulx r14, r8, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mulx rax, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x98 ], rdi
mov [ rsp + 0xa0 ], r11
mulx r11, rdi, [ rsi + 0x30 ]
adcx rdi, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa8 ], rdi
mulx rdi, r13, [ rsi + 0x30 ]
setc dl
clc
adcx r13, rax
mov al, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb0 ], r13
mov [ rsp + 0xb8 ], r9
mulx r9, r13, [ rsi + 0x28 ]
adox r13, rbp
mov rdx, 0x2341f27177344 
mov [ rsp + 0xc0 ], r10
mulx r10, rbp, r12
adcx r8, rdi
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], r8
mulx r8, rdi, [ rsi + 0x8 ]
adox rdi, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd0 ], rdi
mulx rdi, r9, [ rsi + 0x30 ]
movzx rdx, al
lea rdx, [ rdx + r11 ]
mov r11, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xd8 ], r13
mulx r13, rax, [ rsi + 0x18 ]
adcx rax, r14
mov rdx, 0x0 
adox r8, rdx
adcx r9, r13
mov rdx, [ rsi + 0x28 ]
mulx r13, r14, [ rsi + 0x30 ]
adcx r14, rdi
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xe0 ], r14
mulx r14, rdi, rdx
adcx rdi, r13
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0xe8 ], rdi
mulx rdi, r13, r12
adc r14, 0x0
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0xf0 ], r14
mov [ rsp + 0xf8 ], r9
mulx r9, r14, r12
add byte [ rsp + 0x18 ], 0x7F
adox r13, [ rsp + 0x10 ]
adox r14, rdi
adox rbp, r9
mov rdx, [ rsi + 0x18 ]
mulx rdi, r12, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x100 ], rax
mulx rax, r9, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r10, rdx
add r15b, 0xFF
adcx r12, [ rsp + 0x90 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x108 ], r11
mulx r11, r15, [ rsi + 0x20 ]
adcx r15, rdi
adcx r9, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x110 ], r9
mov [ rsp + 0x118 ], r15
mulx r15, r9, [ rsi + 0x18 ]
adcx r9, rax
adc r15, 0x0
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x120 ], r15
mulx r15, rax, [ rsi + 0x8 ]
add byte [ rsp + 0x78 ], 0x7F
adox r13, [ rsp + 0x40 ]
adox r14, [ rsp + 0x48 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x128 ], r9
mov [ rsp + 0x130 ], r12
mulx r12, r9, rdx
adcx rax, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x138 ], rax
mulx rax, r11, [ rsi + 0x18 ]
adcx r9, r15
adcx r11, r12
mov rdx, [ rsi + 0x20 ]
mulx r12, r15, [ rsi + 0x10 ]
adcx r15, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x140 ], r15
mulx r15, rax, [ rsi + 0x28 ]
adcx rax, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x148 ], rax
mulx rax, r12, [ rsi + 0x30 ]
adcx r12, r15
mov rdx, [ rsp + 0x28 ]
setc r15b
clc
adcx rdx, [ rsp + 0x58 ]
mov [ rsp + 0x150 ], r12
movzx r12, r15b
lea r12, [ r12 + rax ]
mov rax, [ rsp + 0x20 ]
adcx rax, [ rsp + 0x70 ]
mov r15, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x88 ]
adcx rbx, r13
adcx rcx, r14
adox rbp, [ rsp + 0x68 ]
adox r10, [ rsp + 0x60 ]
adcx rbp, [ rsp + 0xd8 ]
adcx r10, [ rsp + 0xd0 ]
mov r13, 0xffffffffffffffff 
mov [ rsp + 0x158 ], r12
mulx r12, r14, r13
mov r13, r14
mov [ rsp + 0x160 ], r10
seto r10b
mov [ rsp + 0x168 ], rbp
mov rbp, -0x2 
inc rbp
adox r13, r12
movzx rbp, r10b
adcx rbp, r8
mov r8, r14
setc r10b
clc
adcx r8, rdx
adcx r13, rax
adox r14, r12
adcx r14, r15
mov r8, 0xfdc1767ae2ffffff 
mulx r15, rax, r8
adox rax, r12
adcx rax, rbx
mov rbx, 0x7bc65c783158aea3 
mulx r8, r12, rbx
adox r12, r15
adcx r12, rcx
setc cl
clc
adcx rdi, r13
adcx r14, [ rsp + 0x138 ]
xchg rdx, rdi
mulx r15, r13, rbx
adcx r9, rax
mov rax, 0xffffffffffffffff 
mov byte [ rsp + 0x170 ], r10b
mulx r10, rbx, rax
mov rax, rbx
mov [ rsp + 0x178 ], rbp
seto bpl
mov byte [ rsp + 0x180 ], cl
mov rcx, -0x2 
inc rcx
adox rax, rdx
adcx r11, r12
mov rax, rbx
setc r12b
clc
adcx rax, r10
adcx rbx, r10
adox rax, r14
mov r14, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x188 ], r12b
mulx r12, rcx, r14
adcx rcx, r10
adox rbx, r9
mov r9, 0x6cfc5fd681c52056 
xchg rdx, rdi
mulx r14, r10, r9
adox rcx, r11
adcx r13, r12
seto r11b
mov r12, 0x0 
dec r12
movzx rbp, bpl
adox rbp, r12
adox r8, r10
mov rbp, 0x2341f27177344 
mulx r12, r10, rbp
mov rdx, rdi
mulx rbp, rdi, r9
adox r10, r14
adcx rdi, r15
mov r15, 0x0 
adox r12, r15
mov r14, 0x2341f27177344 
mulx r9, r15, r14
adcx r15, rbp
adc r9, 0x0
add byte [ rsp + 0x180 ], 0x7F
adox r8, [ rsp + 0x168 ]
adox r10, [ rsp + 0x160 ]
adox r12, [ rsp + 0x178 ]
adcx rax, [ rsp + 0x30 ]
adcx rbx, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x80 ]
setc dl
movzx rbp, byte [ rsp + 0x188 ]
clc
mov r14, -0x1 
adcx rbp, r14
adcx r8, [ rsp + 0x140 ]
seto bpl
inc r14
mov r14, -0x1 
movzx r11, r11b
adox r11, r14
adox r8, r13
adcx r10, [ rsp + 0x148 ]
adox rdi, r10
setc r11b
clc
movzx rdx, dl
adcx rdx, r14
adcx r8, [ rsp + 0x130 ]
adcx rdi, [ rsp + 0x118 ]
movzx r13, bpl
movzx rdx, byte [ rsp + 0x170 ]
lea r13, [ r13 + rdx ]
setc dl
clc
movzx r11, r11b
adcx r11, r14
adcx r12, [ rsp + 0x150 ]
adox r15, r12
mov rbp, 0xffffffffffffffff 
xchg rdx, rax
mulx r10, r11, rbp
adcx r13, [ rsp + 0x158 ]
adox r9, r13
mov r12, r11
seto r13b
inc r14
adox r12, rdx
mov r12, r11
setc bpl
clc
adcx r12, r10
adcx r11, r10
adox r12, rbx
adox r11, rcx
movzx rbx, r13b
movzx rbp, bpl
lea rbx, [ rbx + rbp ]
mov rcx, 0xfdc1767ae2ffffff 
mulx r13, rbp, rcx
adcx rbp, r10
seto r10b
mov rcx, -0x3 
inc rcx
adox r12, [ rsp - 0x48 ]
seto r14b
mov rcx, 0x0 
dec rcx
movzx r10, r10b
adox r10, rcx
adox r8, rbp
mov r10, 0x7bc65c783158aea3 
xchg rdx, r10
mulx rcx, rbp, r12
mov [ rsp + 0x190 ], rcx
mov [ rsp + 0x198 ], rbp
mulx rbp, rcx, r10
adcx rcx, r13
adox rcx, rdi
mov rdi, 0x6cfc5fd681c52056 
mov rdx, rdi
mulx r13, rdi, r10
adcx rdi, rbp
mov rbp, 0x2341f27177344 
mov rdx, rbp
mov [ rsp + 0x1a0 ], rcx
mulx rcx, rbp, r10
adcx rbp, r13
setc r10b
clc
mov r13, -0x1 
movzx rax, al
adcx rax, r13
adcx r15, [ rsp + 0x110 ]
adox rdi, r15
adcx r9, [ rsp + 0x128 ]
adox rbp, r9
adcx rbx, [ rsp + 0x120 ]
movzx rax, r10b
lea rax, [ rax + rcx ]
adox rax, rbx
seto cl
adc cl, 0x0
movzx rcx, cl
add r14b, 0xFF
adcx r11, [ rsp + 0x8 ]
mov r14, 0xfdc1767ae2ffffff 
mov rdx, r14
mulx r10, r14, r12
mov r15, 0xffffffffffffffff 
mov rdx, r12
mulx r9, r12, r15
mov rbx, r12
adox rbx, r9
mov r13, r12
adox r13, r9
adcx r8, [ rsp + 0x0 ]
mov r15, [ rsp + 0x1a0 ]
adcx r15, [ rsp - 0x8 ]
adcx rdi, [ rsp - 0x30 ]
adox r14, r9
adcx rbp, [ rsp - 0x40 ]
adcx rax, [ rsp - 0x10 ]
adox r10, [ rsp + 0x198 ]
movzx rcx, cl
movzx r9, cl
adcx r9, [ rsp - 0x18 ]
setc cl
clc
adcx r12, rdx
adcx rbx, r11
adcx r13, r8
adcx r14, r15
adcx r10, rdi
mov r12, 0x6cfc5fd681c52056 
mulx r8, r11, r12
mov r15, 0x2341f27177344 
mulx r12, rdi, r15
adox r11, [ rsp + 0x190 ]
adcx r11, rbp
adox rdi, r8
mov rdx, 0x0 
adox r12, rdx
adcx rdi, rax
adcx r12, r9
movzx rbp, cl
adc rbp, 0x0
xor rax, rax
adox rbx, [ rsp - 0x38 ]
mov rdx, 0xffffffffffffffff 
mulx r9, rcx, rbx
mov r8, rcx
adcx r8, r9
adox r13, [ rsp - 0x20 ]
adox r14, [ rsp - 0x28 ]
adox r10, [ rsp + 0xc0 ]
mov rax, rcx
adcx rax, r9
adox r11, [ rsp + 0xb8 ]
adox rdi, [ rsp + 0xa0 ]
adox r12, [ rsp + 0xa8 ]
adox rbp, [ rsp + 0x108 ]
seto dl
mov r15, -0x2 
inc r15
adox rcx, rbx
adox r8, r13
adox rax, r14
mov rcx, 0x7bc65c783158aea3 
xchg rdx, rbx
mulx r14, r13, rcx
mov r15, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1a8 ], bl
mulx rbx, rcx, r15
adcx rcx, r9
adox rcx, r10
adcx r13, rbx
mov r9, 0x6cfc5fd681c52056 
mulx rbx, r10, r9
adcx r10, r14
mov r14, 0x2341f27177344 
mulx r9, r15, r14
adcx r15, rbx
adox r13, r11
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r8, [ rsp + 0x98 ]
adcx rax, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0xc8 ]
adox r10, rdi
adox r15, r12
adcx r13, [ rsp + 0x100 ]
adcx r10, [ rsp + 0xf8 ]
adox r9, rbp
movzx r11, byte [ rsp + 0x1a8 ]
adox r11, rdx
adcx r15, [ rsp + 0xe0 ]
adcx r9, [ rsp + 0xe8 ]
mov rdi, 0xffffffffffffffff 
mov rdx, r8
mulx r12, r8, rdi
mov rbp, r8
mov rbx, -0x2 
inc rbx
adox rbp, r12
mov rbx, r8
adox rbx, r12
adcx r11, [ rsp + 0xf0 ]
setc dil
clc
adcx r8, rdx
adcx rbp, rax
adcx rbx, rcx
mov r8, 0xfdc1767ae2ffffff 
mulx rcx, rax, r8
adox rax, r12
adcx rax, r13
mov r13, 0x7bc65c783158aea3 
mulx r8, r12, r13
adox r12, rcx
adcx r12, r10
mov r10, 0x6cfc5fd681c52056 
mulx r13, rcx, r10
adox rcx, r8
adcx rcx, r15
mulx r8, r15, r14
adox r15, r13
mov rdx, 0x0 
adox r8, rdx
adcx r15, r9
adcx r8, r11
setc r9b
mov r11, 0xffffffffffffffff 
mov r13, rbp
sub r13, r11
mov rdx, rbx
sbb rdx, r11
mov r10, rax
sbb r10, r11
mov r11, 0xfdc1767ae2ffffff 
mov r14, r12
sbb r14, r11
mov r11, 0x7bc65c783158aea3 
mov [ rsp + 0x1b0 ], r14
mov r14, rcx
sbb r14, r11
mov r11, 0x6cfc5fd681c52056 
mov [ rsp + 0x1b8 ], r14
mov r14, r15
sbb r14, r11
movzx r11, r9b
movzx rdi, dil
lea r11, [ r11 + rdi ]
mov rdi, 0x2341f27177344 
mov r9, r8
sbb r9, rdi
mov rdi, 0x0 
sbb r11, rdi
cmovc r10, rax
cmovc rdx, rbx
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x10 ], r10
mov rbx, [ rsp + 0x1b0 ]
cmovc rbx, r12
mov rax, [ rsp + 0x1b8 ]
cmovc rax, rcx
mov [ r11 + 0x18 ], rbx
mov [ r11 + 0x20 ], rax
cmovc r9, r8
mov [ r11 + 0x8 ], rdx
cmovc r14, r15
cmovc r13, rbp
mov [ r11 + 0x30 ], r9
mov [ r11 + 0x0 ], r13
mov [ r11 + 0x28 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 576
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.7770
; seed 3526398076434057 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 10911924 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 238073 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02181769227864857
; number reverted permutation / tried permutation: 80892 / 95069 =85.088%
; number reverted decision / tried decision: 69729 / 94930 =73.453%
; validated in 428.822s
