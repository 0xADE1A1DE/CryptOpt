SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 640
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], r14
mulx r14, r10, [ rsi + 0x0 ]
xor rdx, rdx
adox r8, r15
adox r12, r9
mov rdx, [ rsi + 0x18 ]
mulx r15, r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], r8
mulx r8, r12, [ rsi + 0x10 ]
adcx r11, rbp
adox r9, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, rbp, [ rsi + 0x10 ]
adcx r12, rcx
setc dl
clc
adcx rbp, r14
mov cl, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r9
mulx r9, r14, rdx
adcx r14, r13
adcx rax, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, [ rsi + 0x20 ]
adox r13, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r13
mulx r13, r15, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], rax
mov [ rsp - 0x8 ], r14
mulx r14, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x0 ], rbp
mov [ rsp + 0x8 ], r10
mulx r10, rbp, [ rsi + 0x0 ]
setc dl
clc
adcx r15, r10
mov r10b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r15
mov [ rsp + 0x18 ], rbp
mulx rbp, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x20 ], r14
mov [ rsp + 0x28 ], r8
mulx r8, r14, [ rsi + 0x20 ]
adcx r15, r13
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x30 ], r15
mulx r15, r13, rbx
adox rax, r9
adcx r14, rbp
mov r9, r13
seto bpl
mov rdx, -0x2 
inc rdx
adox r9, rbx
mov r9, 0x7bc65c783158aea3 
mov rdx, rbx
mov [ rsp + 0x38 ], r14
mulx r14, rbx, r9
mov r9, r13
mov [ rsp + 0x40 ], rax
setc al
clc
adcx r9, r15
adcx r13, r15
adox r9, r11
mov r11, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x48 ], bpl
mov byte [ rsp + 0x50 ], cl
mulx rcx, rbp, r11
adcx rbp, r15
adox r13, r12
adcx rbx, rcx
mov r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x58 ], rbx
mulx rbx, r11, rdx
adcx rdi, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x60 ], rdi
mulx rdi, r14, [ rsi + 0x0 ]
seto dl
mov [ rsp + 0x68 ], rbp
mov rbp, -0x2 
inc rbp
adox r11, rdi
mov dil, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], r8
mulx r8, rbp, [ rsi + 0x8 ]
adox rbp, rbx
adox r15, r8
mov rdx, 0x2341f27177344 
mulx r8, rbx, r12
adcx rbx, [ rsp - 0x38 ]
mov r12, 0x0 
adcx r8, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], r8
mulx r8, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], rbx
mov [ rsp + 0x88 ], r15
mulx r15, rbx, [ rsi + 0x8 ]
adox r12, rcx
adox rbx, r8
clc
adcx r14, r9
mov rdx, [ rsi + 0x30 ]
mulx rcx, r9, [ rsi + 0x8 ]
adox r9, r15
adcx r11, r13
mov rdx, [ rsi + 0x30 ]
mulx r8, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x90 ], r9
mulx r9, r15, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r15
mov [ rsp + 0xa0 ], rcx
mulx rcx, r15, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], rbx
mov [ rsp + 0xb0 ], r12
mulx r12, rbx, [ rsi + 0x30 ]
mov rdx, -0x2 
inc rdx
adox r15, r9
adox rbx, rcx
adox r13, r12
mov rdx, [ rsi + 0x20 ]
mulx rcx, r9, [ rsi + 0x30 ]
adox r9, r8
mov rdx, [ rsi + 0x28 ]
mulx r12, r8, [ rsi + 0x30 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xb8 ], r9
mov [ rsp + 0xc0 ], r13
mulx r13, r9, r14
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], rbx
mov [ rsp + 0xd0 ], r15
mulx r15, rbx, rdx
mov rdx, r9
mov [ rsp + 0xd8 ], rbp
setc bpl
clc
adcx rdx, r13
mov byte [ rsp + 0xe0 ], bpl
mov rbp, r9
adcx rbp, r13
adox r8, rcx
mov rcx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r8
mov [ rsp + 0xf0 ], rbp
mulx rbp, r8, [ rsi + 0x28 ]
adox rbx, r12
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xf8 ], rbx
mulx rbx, r12, rdx
mov rdx, 0x0 
adox r15, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x100 ], r15
mov byte [ rsp + 0x108 ], dil
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, -0x2 
inc rdx
adox r9, r14
setc r9b
clc
movzx r10, r10b
adcx r10, rdx
adcx r15, [ rsp - 0x40 ]
adcx r8, rdi
adox rcx, r11
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rsi + 0x28 ]
seto dl
mov rdi, 0x0 
dec rdi
movzx rax, al
adox rax, rdi
adox r12, [ rsp + 0x70 ]
adox r10, rbx
mov al, dl
mov rdx, [ rsi + 0x30 ]
mulx rdi, rbx, [ rsi + 0x10 ]
adcx rbx, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x110 ], r10
mulx r10, rbp, [ rsi + 0x30 ]
adox rbp, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x118 ], rbp
mulx rbp, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x120 ], r12
mov [ rsp + 0x128 ], rbx
mulx rbx, r12, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rdi, rdx
adox r10, rdx
add byte [ rsp + 0x50 ], 0x7F
adox r12, [ rsp + 0x28 ]
adox r11, rbx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x130 ], r10
mulx r10, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x138 ], rdi
mov [ rsp + 0x140 ], r8
mulx r8, rdi, [ rsi + 0x28 ]
adox rdi, rbp
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x148 ], r15
mulx r15, rbp, [ rsi + 0x0 ]
adox rbp, r8
movzx rdx, byte [ rsp + 0x48 ]
mov r8, -0x1 
adcx rdx, r8
adcx rbx, [ rsp + 0x20 ]
mov rdx, 0x0 
adox r15, rdx
adc r10, 0x0
add byte [ rsp + 0x108 ], 0x7F
adox r12, [ rsp + 0x68 ]
adox r11, [ rsp + 0x58 ]
movzx rdx, byte [ rsp + 0xe0 ]
adcx rdx, r8
adcx r12, [ rsp + 0xd8 ]
adox rdi, [ rsp + 0x60 ]
adcx r11, [ rsp + 0x88 ]
adcx rdi, [ rsp + 0xb0 ]
adox rbp, [ rsp + 0x80 ]
adox r15, [ rsp + 0x78 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x150 ], r10
mulx r10, r8, r14
adcx rbp, [ rsp + 0xa8 ]
adcx r15, [ rsp + 0x90 ]
setc dl
movzx rdx, dl
adox rdx, [ rsp + 0xa0 ]
clc
mov [ rsp + 0x158 ], rbx
mov rbx, -0x1 
movzx r9, r9b
adcx r9, rbx
adcx r13, r8
mov r9, 0x7bc65c783158aea3 
xchg rdx, r9
mulx rbx, r8, r14
adcx r8, r10
seto r10b
mov rdx, 0x0 
dec rdx
movzx rax, al
adox rax, rdx
adox r12, [ rsp + 0xf0 ]
adox r13, r11
adox r8, rdi
mov rdx, [ rsi + 0x28 ]
mulx r11, rax, [ rsi + 0x0 ]
setc dl
clc
adcx rcx, [ rsp + 0x8 ]
adcx r12, [ rsp + 0x0 ]
adcx r13, [ rsp - 0x8 ]
adcx r8, [ rsp - 0x10 ]
mov dil, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x160 ], rax
mov byte [ rsp + 0x168 ], r10b
mulx r10, rax, [ rsi + 0x28 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x170 ], r9
mov [ rsp + 0x178 ], r15
mulx r15, r9, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x180 ], rbp
mov [ rsp + 0x188 ], rbx
mulx rbx, rbp, [ rsi + 0x8 ]
setc dl
clc
adcx rbp, r11
adcx rax, rbx
mov r11b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x190 ], rax
mulx rax, rbx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x198 ], rbp
mov byte [ rsp + 0x1a0 ], r11b
mulx r11, rbp, [ rsi + 0x28 ]
adcx rbp, r10
adcx rbx, r11
mov rdx, 0xffffffffffffffff 
mulx r11, r10, rcx
mov rdx, r10
mov [ rsp + 0x1a8 ], rbx
seto bl
mov [ rsp + 0x1b0 ], rbp
mov rbp, -0x2 
inc rbp
adox rdx, rcx
mov rdx, [ rsi + 0x28 ]
mov byte [ rsp + 0x1b8 ], bl
mulx rbx, rbp, rdx
adcx rbp, rax
mov rdx, r10
setc al
clc
adcx rdx, r11
adcx r10, r11
mov [ rsp + 0x1c0 ], rbp
mov rbp, 0xfdc1767ae2ffffff 
xchg rdx, rcx
mov [ rsp + 0x1c8 ], rbx
mov byte [ rsp + 0x1d0 ], al
mulx rax, rbx, rbp
adcx rbx, r11
adcx r9, rax
adox rcx, r12
adox r10, r13
mov r12, 0x6cfc5fd681c52056 
mulx r11, r13, r12
adcx r13, r15
adox rbx, r8
mov r8, 0x2341f27177344 
mulx rax, r15, r8
adcx r15, r11
mov rdx, r12
mulx r11, r12, r14
mov rdx, r14
mulx rbp, r14, r8
seto dl
mov r8, 0x0 
dec r8
movzx rdi, dil
adox rdi, r8
adox r12, [ rsp + 0x188 ]
adox r14, r11
mov rdi, 0x0 
adox rbp, rdi
adc rax, 0x0
add byte [ rsp + 0x1b8 ], 0xFF
adcx r12, [ rsp + 0x180 ]
adcx r14, [ rsp + 0x178 ]
adcx rbp, [ rsp + 0x170 ]
movzx r11, byte [ rsp + 0x168 ]
adc r11, 0x0
add byte [ rsp + 0x1a0 ], 0x7F
adox r12, [ rsp + 0x148 ]
adox r14, [ rsp + 0x140 ]
adox rbp, [ rsp + 0x128 ]
adcx rcx, [ rsp - 0x48 ]
adox r11, [ rsp + 0x138 ]
adcx r10, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x30 ]
seto dil
inc r8
mov r8, -0x1 
movzx rdx, dl
adox rdx, r8
adox r12, r9
adcx r12, [ rsp - 0x20 ]
adox r13, r14
adox r15, rbp
adox rax, r11
adcx r13, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, r9, [ rsi + 0x30 ]
adcx r15, [ rsp + 0x40 ]
setc dl
movzx rbp, byte [ rsp + 0x1d0 ]
clc
adcx rbp, r8
adcx r9, [ rsp + 0x1c8 ]
movzx rbp, dil
mov r11, 0x0 
adox rbp, r11
mov rdi, 0xffffffffffffffff 
xchg rdx, rcx
mulx r8, r11, rdi
adc r14, 0x0
mov rdi, r11
mov [ rsp + 0x1d8 ], r14
xor r14, r14
adox rdi, rdx
mov rdi, r11
adcx rdi, r8
adcx r11, r8
adox rdi, r10
mov r10, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1e0 ], r9
mulx r9, r14, r10
adox r11, rbx
adcx r14, r8
adox r14, r12
mov rbx, 0x7bc65c783158aea3 
mulx r8, r12, rbx
adcx r12, r9
adox r12, r13
mov r13, 0x6cfc5fd681c52056 
mulx r10, r9, r13
adcx r9, r8
mov r8, 0x2341f27177344 
mulx rbx, r13, r8
adcx r13, r10
setc dl
clc
adcx rdi, [ rsp + 0x18 ]
adcx r11, [ rsp + 0x10 ]
movzx r10, dl
lea r10, [ r10 + rbx ]
mov rbx, 0xffffffffffffffff 
mov rdx, rdi
mulx r8, rdi, rbx
adox r9, r15
setc r15b
clc
mov rbx, -0x1 
movzx rcx, cl
adcx rcx, rbx
adcx rax, [ rsp + 0x158 ]
adox r13, rax
adcx rbp, [ rsp + 0x150 ]
adox r10, rbp
seto cl
adc cl, 0x0
movzx rcx, cl
mov rax, rdi
adox rax, r8
mov rbp, rdi
adcx rbp, rdx
adcx rax, r11
setc bpl
clc
movzx r15, r15b
adcx r15, rbx
adcx r14, [ rsp + 0x30 ]
adcx r12, [ rsp + 0x38 ]
adox rdi, r8
adcx r9, [ rsp + 0x120 ]
adcx r13, [ rsp + 0x110 ]
adcx r10, [ rsp + 0x118 ]
movzx rcx, cl
movzx r15, cl
adcx r15, [ rsp + 0x130 ]
mov r11, 0xfdc1767ae2ffffff 
mulx rbx, rcx, r11
adox rcx, r8
setc r8b
clc
mov r11, -0x1 
movzx rbp, bpl
adcx rbp, r11
adcx r14, rdi
adcx rcx, r12
mov rbp, 0x7bc65c783158aea3 
mulx rdi, r12, rbp
adox r12, rbx
adcx r12, r9
mov r9, 0x6cfc5fd681c52056 
mulx r11, rbx, r9
adox rbx, rdi
adcx rbx, r13
mov r13, 0x2341f27177344 
mulx r9, rdi, r13
adox rdi, r11
adcx rdi, r10
mov rdx, 0x0 
adox r9, rdx
adcx r9, r15
movzx r10, r8b
adc r10, 0x0
xor r8, r8
adox rax, [ rsp + 0x160 ]
adox r14, [ rsp + 0x198 ]
adox rcx, [ rsp + 0x190 ]
mov rdx, 0xffffffffffffffff 
mulx r11, r15, rax
mov r8, 0xfdc1767ae2ffffff 
mov rdx, rax
mulx rbp, rax, r8
adox r12, [ rsp + 0x1b0 ]
mov r13, r15
adcx r13, r11
adox rbx, [ rsp + 0x1a8 ]
adox rdi, [ rsp + 0x1c0 ]
adox r9, [ rsp + 0x1e0 ]
mov r8, r15
adcx r8, r11
adcx rax, r11
adox r10, [ rsp + 0x1d8 ]
seto r11b
mov [ rsp + 0x1e8 ], r10
mov r10, -0x2 
inc r10
adox r15, rdx
adox r13, r14
adox r8, rcx
adox rax, r12
mov r15, 0x7bc65c783158aea3 
mulx rcx, r14, r15
adcx r14, rbp
adox r14, rbx
mov rbp, 0x6cfc5fd681c52056 
mulx rbx, r12, rbp
adcx r12, rcx
adox r12, rdi
mov rdi, 0x2341f27177344 
mulx r10, rcx, rdi
adcx rcx, rbx
adox rcx, r9
setc dl
clc
adcx r13, [ rsp + 0x98 ]
adcx r8, [ rsp + 0xd0 ]
adcx rax, [ rsp + 0xc8 ]
adcx r14, [ rsp + 0xc0 ]
movzx r9, dl
lea r9, [ r9 + r10 ]
adox r9, [ rsp + 0x1e8 ]
adcx r12, [ rsp + 0xb8 ]
movzx rbx, r11b
mov r10, 0x0 
adox rbx, r10
adcx rcx, [ rsp + 0xe8 ]
adcx r9, [ rsp + 0xf8 ]
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx r10, r11, r13
mov rbp, r11
mov r15, -0x2 
inc r15
adox rbp, r10
mov r15, r11
adox r15, r10
adcx rbx, [ rsp + 0x100 ]
setc dl
clc
adcx r11, r13
adcx rbp, r8
adcx r15, rax
mov r11, 0xfdc1767ae2ffffff 
xchg rdx, r13
mulx rax, r8, r11
adox r8, r10
adcx r8, r14
mov r14, 0x7bc65c783158aea3 
mulx r11, r10, r14
adox r10, rax
adcx r10, r12
mov r12, 0x6cfc5fd681c52056 
mulx r14, rax, r12
adox rax, r11
mulx r12, r11, rdi
adox r11, r14
adcx rax, rcx
adcx r11, r9
mov rdx, 0x0 
adox r12, rdx
adcx r12, rbx
movzx rcx, r13b
adc rcx, 0x0
mov r9, 0xffffffffffffffff 
mov r13, rbp
sub r13, r9
mov rbx, r15
sbb rbx, r9
mov r14, r8
sbb r14, r9
mov rdx, 0xfdc1767ae2ffffff 
mov r9, r10
sbb r9, rdx
mov rdx, 0x7bc65c783158aea3 
mov rdi, rax
sbb rdi, rdx
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x1f0 ], r9
mov r9, r11
sbb r9, rdx
mov rdx, 0x2341f27177344 
mov [ rsp + 0x1f8 ], rdi
mov rdi, r12
sbb rdi, rdx
mov rdx, 0x0 
sbb rcx, rdx
cmovc r13, rbp
cmovc rdi, r12
cmovc r14, r8
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x0 ], r13
mov [ rcx + 0x30 ], rdi
cmovc rbx, r15
mov [ rcx + 0x8 ], rbx
mov [ rcx + 0x10 ], r14
cmovc r9, r11
mov rbp, [ rsp + 0x1f8 ]
cmovc rbp, rax
mov [ rcx + 0x20 ], rbp
mov r15, [ rsp + 0x1f0 ]
cmovc r15, r10
mov [ rcx + 0x18 ], r15
mov [ rcx + 0x28 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 640
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7402
; seed 2190736727334469 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8313361 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 182738 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02198124200308395
; number reverted permutation / tried permutation: 80366 / 95209 =84.410%
; number reverted decision / tried decision: 69594 / 94790 =73.419%
; validated in 417.255s
