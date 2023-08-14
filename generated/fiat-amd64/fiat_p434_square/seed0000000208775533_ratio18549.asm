SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 536
mov rdx, [ rsi + 0x28 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox rdi, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, r13, [ rsi + 0x0 ]
adcx rax, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x28 ], rax
mulx rax, rdi, [ rsi + 0x10 ]
adcx rdi, r10
adcx r8, rax
mov rdx, [ rsi + 0x28 ]
mulx rax, r10, [ rsi + 0x20 ]
adcx r10, r9
adox r11, r14
mov rdx, [ rsi + 0x10 ]
mulx r14, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r10
mov [ rsp - 0x18 ], r8
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x10 ], rdi
mov [ rsp - 0x8 ], r13
mulx r13, rdi, [ rsi + 0x0 ]
seto dl
mov [ rsp + 0x0 ], rdi
mov rdi, -0x2 
inc rdi
adox r10, r13
adox r9, r8
adcx rbx, rax
mov al, dl
mov rdx, [ rsi + 0x18 ]
mulx r13, r8, rdx
adox r8, r14
mov rdx, [ rsi + 0x28 ]
mulx rdi, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x8 ], rbx
mov [ rsp + 0x10 ], r8
mulx r8, rbx, [ rsi + 0x18 ]
adcx r14, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r14
mulx r14, rbp, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x20 ], r9
mov [ rsp + 0x28 ], r10
mulx r10, r9, [ rsi + 0x8 ]
adox rbx, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x30 ], rbx
mulx rbx, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x38 ], r11
mov [ rsp + 0x40 ], r13
mulx r13, r11, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x48 ], r10
mov r10, -0x2 
inc r10
adox rbp, rbx
adox r11, r14
mov r14b, dl
mov rdx, [ rsi + 0x8 ]
mulx r10, rbx, [ rsi + 0x18 ]
adox rbx, r13
mov rdx, 0x0 
adcx rdi, rdx
adox r9, r10
mov rdx, [ rsi + 0x20 ]
mulx r10, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x50 ], rdi
mov [ rsp + 0x58 ], r13
mulx r13, rdi, [ rsi + 0x20 ]
clc
adcx rdi, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], rdi
mulx rdi, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], r9
mov [ rsp + 0x70 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
adcx r10, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], r10
mulx r10, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r11
mov [ rsp + 0x88 ], rbp
mulx rbp, r11, [ rsi + 0x20 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x90 ], rbp
mov [ rsp + 0x98 ], r8
mulx r8, rbp, r12
adcx r11, rdi
setc dil
clc
mov rdx, -0x1 
movzx rax, al
adcx rax, rdx
adcx rcx, r9
adcx r13, rbx
mov rax, r15
seto r9b
inc rdx
adox rax, [ rsp - 0x38 ]
mov rbx, r15
adox rbx, [ rsp - 0x38 ]
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0xa0 ], r11
mov [ rsp + 0xa8 ], r13
mulx r13, r11, r12
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0xb0 ], rcx
mov byte [ rsp + 0xb8 ], dil
mulx rdi, rcx, r12
adox rbp, r15
adox rcx, r8
adox r11, rdi
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov byte [ rsp + 0xc0 ], r9b
mulx r9, rdi, [ rsi + 0x10 ]
adcx rdi, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], rdi
mulx rdi, r10, [ rsi + 0x18 ]
adcx r15, r9
mov rdx, 0x2341f27177344 
mov [ rsp + 0xd0 ], r15
mulx r15, r9, r12
adox r9, r13
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xd8 ], r9
mulx r9, r13, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r15, rdx
dec rdx
movzx r14, r14b
adox r14, rdx
adox r10, [ rsp + 0x98 ]
adox r13, rdi
mov r14, 0x0 
adox r9, r14
adc r8, 0x0
xor rdi, rdi
adox r12, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, r12, [ rsi + 0x8 ]
adcx r12, [ rsp - 0x48 ]
adox rax, r12
mov rdx, [ rsi + 0x0 ]
mulx rdi, r12, [ rsi + 0x10 ]
adcx r12, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe0 ], r9
mulx r9, r14, [ rsi + 0x18 ]
adcx r14, rdi
adox rbx, r12
mov rdx, [ rsi + 0x0 ]
mulx r12, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe8 ], r13
mov [ rsp + 0xf0 ], r10
mulx r10, r13, [ rsi + 0x20 ]
adox rbp, r14
adcx r13, r9
adox rcx, r13
adcx rdi, r10
adox r11, rdi
mov rdx, [ rsi + 0x8 ]
mulx r14, r9, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mulx r13, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf8 ], r8
mulx r8, rdi, [ rsi + 0x28 ]
adcx r10, r12
adox r10, [ rsp + 0xd8 ]
mov rdx, 0x0 
adcx r13, rdx
movzx r12, byte [ rsp + 0xc0 ]
clc
mov rdx, -0x1 
adcx r12, rdx
adcx rdi, [ rsp + 0x48 ]
adcx r9, r8
mov r12, 0x0 
adcx r14, r12
clc
adcx rax, [ rsp + 0x40 ]
adcx rbx, [ rsp + 0x88 ]
mov rdx, [ rsi + 0x30 ]
mulx r12, r8, [ rsi + 0x0 ]
adox r15, r13
adcx rbp, [ rsp + 0x80 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x100 ], r8
mulx r8, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x108 ], rbp
mov [ rsp + 0x110 ], rbx
mulx rbx, rbp, [ rsi + 0x8 ]
adcx rcx, [ rsp + 0x70 ]
seto dl
mov [ rsp + 0x118 ], rcx
mov rcx, -0x2 
inc rcx
adox rbp, r12
adox r13, rbx
mov r12b, dl
mov rdx, [ rsi + 0x20 ]
mulx rcx, rbx, rdx
setc dl
mov [ rsp + 0x120 ], r13
movzx r13, byte [ rsp + 0xb8 ]
clc
mov [ rsp + 0x128 ], rbp
mov rbp, -0x1 
adcx r13, rbp
adcx rbx, [ rsp + 0x90 ]
mov r13b, dl
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x130 ], rbx
mulx rbx, rbp, [ rsi + 0x30 ]
adox rbp, r8
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x138 ], rbp
mulx rbp, r8, [ rsi + 0x20 ]
adcx r8, rcx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x140 ], r8
mulx r8, rcx, [ rsi + 0x20 ]
adox rcx, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x148 ], rcx
mulx rcx, rbx, [ rsi + 0x30 ]
adox rbx, r8
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x150 ], rbx
mulx rbx, r8, [ rsi + 0x20 ]
adcx r8, rbp
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x158 ], r8
mulx r8, rbp, rdx
adox rbp, rcx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x160 ], rbp
mulx rbp, rcx, rax
mov rdx, 0x0 
adcx rbx, rdx
mov [ rsp + 0x168 ], rbx
mov rbx, rcx
clc
adcx rbx, rax
seto bl
dec rdx
movzx r13, r13b
adox r13, rdx
adox r11, [ rsp + 0x68 ]
adox rdi, r10
adox r9, r15
movzx r10, r12b
adox r10, r14
mov r14, rcx
seto r12b
inc rdx
adox r14, rbp
adox rcx, rbp
adcx r14, [ rsp + 0x110 ]
movzx r15, bl
lea r15, [ r15 + r8 ]
mov r13, 0x7bc65c783158aea3 
mov rdx, rax
mulx r8, rax, r13
mov rbx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x170 ], r15
mulx r15, r13, rbx
adox r13, rbp
adcx rcx, [ rsp + 0x108 ]
adcx r13, [ rsp + 0x118 ]
adox rax, r15
adcx rax, r11
mov rbp, 0x6cfc5fd681c52056 
mulx r15, r11, rbp
adox r11, r8
adcx r11, rdi
mov rdi, 0x2341f27177344 
mulx rbp, r8, rdi
adox r8, r15
adcx r8, r9
mov rdx, 0x0 
adox rbp, rdx
adcx rbp, r10
movzx r9, r12b
adc r9, 0x0
add r14, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x30 ]
adcx r13, [ rsp + 0x38 ]
mov r12, 0xffffffffffffffff 
mov rdx, r14
mulx r10, r14, r12
mulx r12, r15, rbx
adcx rax, [ rsp + 0xb0 ]
adcx r11, [ rsp + 0xa8 ]
adcx r8, [ rsp + 0xc8 ]
adcx rbp, [ rsp + 0xd0 ]
mov rdi, r14
mov rbx, -0x2 
inc rbx
adox rdi, rdx
adcx r9, [ rsp + 0xf8 ]
mov rdi, r14
setc bl
clc
adcx rdi, r10
adcx r14, r10
adox rdi, rcx
adox r14, r13
adcx r15, r10
adox r15, rax
mov rcx, 0x7bc65c783158aea3 
mulx r10, r13, rcx
adcx r13, r12
adox r13, r11
mov r12, 0x6cfc5fd681c52056 
mulx r11, rax, r12
adcx rax, r10
adox rax, r8
mov r8, 0x2341f27177344 
mulx rcx, r10, r8
adcx r10, r11
mov rdx, 0x0 
adcx rcx, rdx
adox r10, rbp
adox rcx, r9
clc
adcx rdi, [ rsp + 0x0 ]
adcx r14, [ rsp + 0x28 ]
movzx rbp, bl
adox rbp, rdx
adcx r15, [ rsp + 0x20 ]
adcx r13, [ rsp + 0x10 ]
mov rbx, 0xffffffffffffffff 
mov rdx, rbx
mulx r9, rbx, rdi
adcx rax, [ rsp + 0x30 ]
adcx r10, [ rsp + 0xf0 ]
adcx rcx, [ rsp + 0xe8 ]
adcx rbp, [ rsp + 0xe0 ]
mov r11, rbx
mov rdx, -0x2 
inc rdx
adox r11, r9
mov rdx, rbx
setc r8b
clc
adcx rdx, rdi
adcx r11, r14
adox rbx, r9
adcx rbx, r15
mov rdx, 0xfdc1767ae2ffffff 
mulx r15, r14, rdi
adox r14, r9
adcx r14, r13
mov r13, 0x7bc65c783158aea3 
mov rdx, r13
mulx r9, r13, rdi
adox r13, r15
adcx r13, rax
mov rdx, rdi
mulx rax, rdi, r12
adox rdi, r9
mov r15, 0x2341f27177344 
mulx r12, r9, r15
adox r9, rax
adcx rdi, r10
adcx r9, rcx
mov rdx, 0x0 
adox r12, rdx
adcx r12, rbp
movzx r10, r8b
adc r10, 0x0
xor rcx, rcx
adox r11, [ rsp + 0x58 ]
adox rbx, [ rsp + 0x60 ]
mov rdx, 0xffffffffffffffff 
mulx rbp, r8, r11
mov rax, r8
adcx rax, rbp
adox r14, [ rsp + 0x78 ]
mov rcx, r8
adcx rcx, rbp
adox r13, [ rsp + 0xa0 ]
adox rdi, [ rsp + 0x130 ]
adox r9, [ rsp + 0x140 ]
adox r12, [ rsp + 0x158 ]
adox r10, [ rsp + 0x168 ]
seto dl
mov r15, -0x2 
inc r15
adox r8, r11
adox rax, rbx
adox rcx, r14
mov r8, 0xfdc1767ae2ffffff 
xchg rdx, r11
mulx r14, rbx, r8
adcx rbx, rbp
adox rbx, r13
mov rbp, 0x7bc65c783158aea3 
mulx r15, r13, rbp
adcx r13, r14
adox r13, rdi
mov rdi, 0x6cfc5fd681c52056 
mulx rbp, r14, rdi
adcx r14, r15
adox r14, r9
mov r9, 0x2341f27177344 
mulx rdi, r15, r9
adcx r15, rbp
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx rax, [ rsp - 0x8 ]
adox r15, r12
mov rdx, rax
mulx r12, rax, r8
adcx rcx, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x10 ]
adcx r13, [ rsp - 0x18 ]
adcx r14, [ rsp - 0x20 ]
adcx r15, [ rsp + 0x8 ]
adox rdi, r10
movzx r10, r11b
mov rbp, 0x0 
adox r10, rbp
adcx rdi, [ rsp + 0x18 ]
mov r11, 0xffffffffffffffff 
mulx r9, rbp, r11
adcx r10, [ rsp + 0x50 ]
mov r11, rbp
mov r8, -0x2 
inc r8
adox r11, rdx
mov r11, rbp
setc r8b
clc
adcx r11, r9
adox r11, rcx
adcx rbp, r9
adcx rax, r9
adox rbp, rbx
adox rax, r13
mov rcx, 0x7bc65c783158aea3 
mulx r13, rbx, rcx
adcx rbx, r12
adox rbx, r14
mov r12, 0x6cfc5fd681c52056 
mulx r9, r14, r12
adcx r14, r13
adox r14, r15
mov r15, 0x2341f27177344 
mulx rcx, r13, r15
adcx r13, r9
adox r13, rdi
mov rdx, 0x0 
adcx rcx, rdx
adox rcx, r10
clc
adcx r11, [ rsp + 0x100 ]
movzx rdi, r8b
adox rdi, rdx
adcx rbp, [ rsp + 0x128 ]
adcx rax, [ rsp + 0x120 ]
adcx rbx, [ rsp + 0x138 ]
adcx r14, [ rsp + 0x148 ]
mov rdx, r11
mulx r8, r11, r12
adcx r13, [ rsp + 0x150 ]
adcx rcx, [ rsp + 0x160 ]
mov r10, 0xfdc1767ae2ffffff 
mulx r15, r9, r10
mov r12, 0xffffffffffffffff 
mov [ rsp + 0x178 ], rcx
mulx rcx, r10, r12
mov r12, r10
mov [ rsp + 0x180 ], r8
mov r8, -0x2 
inc r8
adox r12, rcx
mov r8, r10
adox r8, rcx
adox r9, rcx
adcx rdi, [ rsp + 0x170 ]
setc cl
clc
adcx r10, rdx
adcx r12, rbp
adcx r8, rax
adcx r9, rbx
mov r10, 0x7bc65c783158aea3 
mulx rax, rbp, r10
adox rbp, r15
adox r11, rax
adcx rbp, r14
adcx r11, r13
mov rbx, 0x2341f27177344 
mulx r13, r14, rbx
adox r14, [ rsp + 0x180 ]
adcx r14, [ rsp + 0x178 ]
mov rdx, 0x0 
adox r13, rdx
adcx r13, rdi
movzx r15, cl
adc r15, 0x0
mov rcx, 0xffffffffffffffff 
mov rdi, r12
sub rdi, rcx
mov rax, r8
sbb rax, rcx
mov rdx, r9
sbb rdx, rcx
mov rcx, 0xfdc1767ae2ffffff 
mov rbx, rbp
sbb rbx, rcx
mov rcx, r11
sbb rcx, r10
mov r10, 0x6cfc5fd681c52056 
mov [ rsp + 0x188 ], rcx
mov rcx, r14
sbb rcx, r10
mov r10, 0x2341f27177344 
mov [ rsp + 0x190 ], rbx
mov rbx, r13
sbb rbx, r10
mov r10, 0x0 
sbb r15, r10
cmovc rdx, r9
cmovc rax, r8
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x10 ], rdx
cmovc rdi, r12
mov [ r15 + 0x0 ], rdi
cmovc rcx, r14
cmovc rbx, r13
mov [ r15 + 0x28 ], rcx
mov [ r15 + 0x30 ], rbx
mov r12, [ rsp + 0x190 ]
cmovc r12, rbp
mov [ r15 + 0x8 ], rax
mov r8, [ rsp + 0x188 ]
cmovc r8, r11
mov [ r15 + 0x20 ], r8
mov [ r15 + 0x18 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 536
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8549
; seed 0721877567287425 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7479771 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 163998 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02192553755990658
; number reverted permutation / tried permutation: 79427 / 95414 =83.245%
; number reverted decision / tried decision: 66613 / 94585 =70.427%
; validated in 445.649s
