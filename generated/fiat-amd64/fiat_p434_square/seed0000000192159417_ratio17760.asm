SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 616
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, rcx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
adcx r15, r14
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], r8
mulx r8, r14, [ rsi + 0x10 ]
adcx r14, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], r13
mulx r13, r15, [ rsi + 0x20 ]
adcx r15, r8
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], r15
mulx r15, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rax
mov [ rsp - 0x18 ], r11
mulx r11, rax, [ rsi + 0x18 ]
adcx r8, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], r8
mulx r8, r13, [ rsi + 0x20 ]
adox rbp, r10
adox rax, r12
mov rdx, [ rsi + 0x30 ]
mulx r12, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], rax
mov [ rsp + 0x0 ], rbp
mulx rbp, rax, [ rsi + 0x10 ]
adcx r13, r15
adcx r10, r8
adox rax, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x8 ], r10
mulx r10, r8, [ rsi + 0x0 ]
setc dl
clc
adcx r8, r11
movzx r11, dl
lea r11, [ r11 + r12 ]
adcx rcx, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r11
mov [ rsp + 0x18 ], r13
mulx r13, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], rax
mov [ rsp + 0x28 ], rcx
mulx rcx, rax, [ rsi + 0x28 ]
adox r11, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x30 ], rax
mulx rax, rbp, [ rsi + 0x28 ]
adcx r12, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r11
mulx r11, rbx, [ rsi + 0x10 ]
setc dl
clc
adcx rbp, rcx
adcx rbx, rax
mov cl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], rbx
mulx rbx, rax, [ rsi + 0x18 ]
adcx rax, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x48 ], rax
mulx rax, r11, [ rsi + 0x20 ]
adcx r11, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r11
mulx r11, rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], rbp
mov [ rsp + 0x60 ], r12
mulx r12, rbp, [ rsi + 0x30 ]
adox rbp, r13
adcx rbx, rax
mov rdx, [ rsi + 0x30 ]
mulx rax, r13, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x68 ], rbx
mov [ rsp + 0x70 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r12, rdx
adcx r13, r11
adc rax, 0x0
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x78 ], rax
mulx rax, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r13
mov [ rsp + 0x88 ], r12
mulx r12, r13, [ rsi + 0x0 ]
xor rdx, rdx
adox rbx, r12
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x90 ], rbx
mulx rbx, r12, [ rsi + 0x10 ]
adcx r11, r9
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x98 ], r11
mulx r11, r9, [ rsi + 0x18 ]
adcx r12, rax
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xa0 ], r12
mulx r12, rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r13
mov [ rsp + 0xb0 ], r8
mulx r8, r13, rdx
adox rdi, rbp
adcx r9, rbx
mov rdx, [ rsi + 0x30 ]
mulx rbx, rbp, [ rsi + 0x20 ]
adcx rbp, r11
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xb8 ], rbp
mulx rbp, r11, [ rsi + 0x28 ]
adcx r11, rbx
adcx rax, rbp
adox r13, r14
mov rdx, [ rsi + 0x18 ]
mulx rbx, r14, [ rsi + 0x20 ]
adox r14, r8
mov rdx, [ rsi + 0x28 ]
mulx rbp, r8, [ rsi + 0x18 ]
adox r8, rbx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc0 ], rax
mulx rax, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], r11
mov [ rsp + 0xd0 ], r9
mulx r9, r11, [ rsi + 0x0 ]
adox rbx, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], rbx
mulx rbx, rbp, [ rsi + 0x8 ]
mov rdx, 0x0 
adox rax, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe0 ], rax
mov [ rsp + 0xe8 ], r8
mulx r8, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], r14
mov [ rsp + 0xf8 ], r13
mulx r13, r14, [ rsi + 0x20 ]
adc r12, 0x0
add cl, 0xFF
adcx r10, r14
adcx rax, r13
adcx r11, r8
mov rdx, 0xffffffffffffffff 
mulx r8, rcx, r15
adc r9, 0x0
mov r14, rcx
xor r13, r13
adox r14, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x100 ], r12
mulx r12, r13, [ rsi + 0x8 ]
mov rdx, rcx
adox rdx, r8
mov [ rsp + 0x108 ], rdi
mov rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x110 ], r9
mov [ rsp + 0x118 ], r11
mulx r11, r9, rdx
adcx r9, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x120 ], rax
mulx rax, r12, [ rsi + 0x20 ]
adcx rbp, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x128 ], rbp
mulx rbp, r11, [ rsi + 0x18 ]
adcx r11, rbx
adcx r12, rbp
mov rdx, 0xfdc1767ae2ffffff 
mulx rbp, rbx, r15
adox rbx, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x130 ], r12
mulx r12, r8, [ rsi + 0x28 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x138 ], r11
mov [ rsp + 0x140 ], r9
mulx r9, r11, r15
adox r11, rbp
adcx r8, rax
mov rdx, [ rsi + 0x30 ]
mulx rbp, rax, [ rsi + 0x8 ]
adcx rax, r12
setc dl
clc
adcx rcx, r15
adcx r14, [ rsp + 0xb0 ]
movzx rcx, dl
lea rcx, [ rcx + rbp ]
adcx rdi, [ rsp + 0x28 ]
adcx rbx, [ rsp + 0x60 ]
adcx r11, r10
mov r10, 0x6cfc5fd681c52056 
mov rdx, r15
mulx r12, r15, r10
adox r15, r9
mov r9, 0x2341f27177344 
mulx r10, rbp, r9
adox rbp, r12
mov rdx, 0x0 
adox r10, rdx
mov r12, -0x3 
inc r12
adox r13, r14
adox rdi, [ rsp + 0x140 ]
adox rbx, [ rsp + 0x128 ]
adox r11, [ rsp + 0x138 ]
adcx r15, [ rsp + 0x120 ]
mov r14, 0xffffffffffffffff 
mov rdx, r13
mulx r12, r13, r14
adcx rbp, [ rsp + 0x118 ]
adox r15, [ rsp + 0x130 ]
adox r8, rbp
adcx r10, [ rsp + 0x110 ]
mov rbp, r13
setc r9b
clc
adcx rbp, r12
adox rax, r10
mov r10, r13
adcx r10, r12
movzx r14, r9b
adox r14, rcx
mov rcx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x148 ], r14
mulx r14, r9, rcx
adcx r9, r12
setc r12b
clc
adcx r13, rdx
adcx rbp, rdi
adcx r10, rbx
adcx r9, r11
setc r13b
clc
adcx rbp, [ rsp - 0x18 ]
adcx r10, [ rsp - 0x20 ]
adcx r9, [ rsp + 0x0 ]
mov rdi, 0xffffffffffffffff 
xchg rdx, rdi
mulx r11, rbx, rbp
mov rcx, rbx
seto dl
mov [ rsp + 0x150 ], rax
mov rax, -0x2 
inc rax
adox rcx, r11
mov rax, rbx
adox rax, r11
mov byte [ rsp + 0x158 ], dl
setc dl
clc
adcx rbx, rbp
adcx rcx, r10
adcx rax, r9
setc bl
clc
adcx rcx, [ rsp + 0xa8 ]
mov r10, 0xffffffffffffffff 
xchg rdx, r10
mov byte [ rsp + 0x160 ], bl
mulx rbx, r9, rcx
adcx rax, [ rsp + 0x90 ]
mov rdx, r9
mov [ rsp + 0x168 ], rax
setc al
clc
adcx rdx, rcx
mov rdx, r9
mov byte [ rsp + 0x170 ], al
setc al
clc
adcx rdx, rbx
mov [ rsp + 0x178 ], rdx
mov rdx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x180 ], al
mov [ rsp + 0x188 ], r8
mulx r8, rax, rcx
adcx r9, rbx
adcx rax, rbx
mov [ rsp + 0x190 ], r8
mulx r8, rbx, rbp
adox rbx, r11
mov r11, 0x7bc65c783158aea3 
mov rdx, rbp
mov [ rsp + 0x198 ], rax
mulx rax, rbp, r11
xchg rdx, rdi
mov [ rsp + 0x1a0 ], rax
mov [ rsp + 0x1a8 ], r9
mulx r9, rax, r11
adox rbp, r8
seto r8b
mov r11, 0x0 
dec r11
movzx r12, r12b
adox r12, r11
adox r14, rax
mov r12, 0x6cfc5fd681c52056 
mulx r11, rax, r12
adox rax, r9
mov r9, 0x2341f27177344 
mov byte [ rsp + 0x1b0 ], r8b
mulx r8, r12, r9
adox r12, r11
mov rdx, 0x0 
adox r8, rdx
dec rdx
movzx r13, r13b
adox r13, rdx
adox r15, r14
setc r13b
clc
movzx r10, r10b
adcx r10, rdx
adcx r15, [ rsp - 0x8 ]
adox rax, [ rsp + 0x188 ]
adcx rax, [ rsp + 0x20 ]
adox r12, [ rsp + 0x150 ]
adox r8, [ rsp + 0x148 ]
movzx r10, byte [ rsp + 0x158 ]
mov r14, 0x0 
adox r10, r14
adcx r12, [ rsp + 0x38 ]
adcx r8, [ rsp + 0x70 ]
movzx r11, byte [ rsp + 0x160 ]
dec r14
adox r11, r14
adox r15, rbx
adox rbp, rax
adcx r10, [ rsp + 0x88 ]
setc dl
movzx r11, byte [ rsp + 0x170 ]
clc
adcx r11, r14
adcx r15, [ rsp + 0x108 ]
adcx rbp, [ rsp + 0xf8 ]
mov r11, [ rsp + 0x168 ]
setc bl
movzx rax, byte [ rsp + 0x180 ]
clc
adcx rax, r14
adcx r11, [ rsp + 0x178 ]
adcx r15, [ rsp + 0x1a8 ]
adcx rbp, [ rsp + 0x198 ]
mov rax, 0x6cfc5fd681c52056 
xchg rdx, rdi
mulx r9, r14, rax
setc al
mov [ rsp + 0x1b8 ], rbp
movzx rbp, byte [ rsp + 0x1b0 ]
clc
mov [ rsp + 0x1c0 ], r15
mov r15, -0x1 
adcx rbp, r15
adcx r14, [ rsp + 0x1a0 ]
adox r14, r12
mov rbp, 0x2341f27177344 
mulx r15, r12, rbp
adcx r12, r9
adox r12, r8
mov rdx, 0x0 
adcx r15, rdx
adox r15, r10
movzx r8, dil
adox r8, rdx
add bl, 0xFF
adcx r14, [ rsp + 0xf0 ]
adcx r12, [ rsp + 0xe8 ]
adcx r15, [ rsp + 0xd8 ]
adcx r8, [ rsp + 0xe0 ]
mov rdi, 0x7bc65c783158aea3 
mov rdx, rcx
mulx r10, rcx, rdi
mulx r9, rbx, rbp
mov rbp, -0x1 
movzx r13, r13b
adox r13, rbp
adox rcx, [ rsp + 0x190 ]
setc r13b
clc
movzx rax, al
adcx rax, rbp
adcx r14, rcx
mov rax, 0x6cfc5fd681c52056 
mulx rbp, rcx, rax
adox rcx, r10
adox rbx, rbp
adcx rcx, r12
mov rdx, 0x0 
adox r9, rdx
mov r12, -0x3 
inc r12
adox r11, [ rsp - 0x30 ]
mov r10, 0xfdc1767ae2ffffff 
mov rdx, r10
mulx rbp, r10, r11
adcx rbx, r15
mov rdx, r11
mulx r15, r11, rax
adcx r9, r8
mov r8, 0xffffffffffffffff 
mulx rax, r12, r8
mov [ rsp + 0x1c8 ], r9
mulx r9, r8, rdi
movzx rdi, r13b
mov [ rsp + 0x1d0 ], rbx
mov rbx, 0x0 
adcx rdi, rbx
mov r13, r12
clc
adcx r13, rax
mov rbx, r12
adcx rbx, rax
adcx r10, rax
adcx r8, rbp
adcx r11, r9
mov rbp, 0x2341f27177344 
mulx r9, rax, rbp
adcx rax, r15
mov r15, 0x0 
adcx r9, r15
mov r15, [ rsp + 0x1c0 ]
adox r15, [ rsp - 0x38 ]
mov rbp, [ rsp - 0x40 ]
adox rbp, [ rsp + 0x1b8 ]
adox r14, [ rsp - 0x28 ]
adox rcx, [ rsp - 0x10 ]
clc
adcx r12, rdx
mov r12, [ rsp + 0x18 ]
adox r12, [ rsp + 0x1d0 ]
mov rdx, [ rsp + 0x1c8 ]
adox rdx, [ rsp + 0x8 ]
adcx r13, r15
adcx rbx, rbp
adcx r10, r14
adcx r8, rcx
adcx r11, r12
adcx rax, rdx
adox rdi, [ rsp + 0x10 ]
adcx r9, rdi
seto r15b
adc r15b, 0x0
movzx r15, r15b
adox r13, [ rsp + 0x30 ]
adox rbx, [ rsp + 0x58 ]
mov rbp, 0xffffffffffffffff 
mov rdx, r13
mulx r14, r13, rbp
mov rcx, r13
adcx rcx, rdx
adox r10, [ rsp + 0x40 ]
adox r8, [ rsp + 0x48 ]
adox r11, [ rsp + 0x50 ]
adox rax, [ rsp + 0x68 ]
adox r9, [ rsp + 0x80 ]
movzx r15, r15b
movzx rcx, r15b
adox rcx, [ rsp + 0x78 ]
mov r12, r13
seto dil
mov r15, -0x2 
inc r15
adox r12, r14
adox r13, r14
adcx r12, rbx
adcx r13, r10
mov rbx, 0xfdc1767ae2ffffff 
mulx r15, r10, rbx
adox r10, r14
adcx r10, r8
mov r14, 0x7bc65c783158aea3 
mulx rbx, r8, r14
adox r8, r15
adcx r8, r11
mov r11, 0x6cfc5fd681c52056 
mulx r14, r15, r11
adox r15, rbx
adcx r15, rax
mov rax, 0x2341f27177344 
mulx r11, rbx, rax
adox rbx, r14
adcx rbx, r9
mov rdx, 0x0 
adox r11, rdx
adcx r11, rcx
movzx r9, dil
adc r9, 0x0
test al, al
adox r12, [ rsp - 0x48 ]
mov rdx, r12
mulx rdi, r12, rbp
mov rcx, r12
adcx rcx, rdi
mov r14, r12
adcx r14, rdi
adox r13, [ rsp + 0x98 ]
adox r10, [ rsp + 0xa0 ]
adox r8, [ rsp + 0xd0 ]
adox r15, [ rsp + 0xb8 ]
adox rbx, [ rsp + 0xc8 ]
adox r11, [ rsp + 0xc0 ]
adox r9, [ rsp + 0x100 ]
seto al
mov rbp, -0x2 
inc rbp
adox r12, rdx
adox rcx, r13
adox r14, r10
mov r12, 0xfdc1767ae2ffffff 
mulx r10, r13, r12
adcx r13, rdi
adox r13, r8
mov rdi, 0x7bc65c783158aea3 
mulx rbp, r8, rdi
adcx r8, r10
adox r8, r15
mov r15, 0x6cfc5fd681c52056 
mulx rdi, r10, r15
adcx r10, rbp
adox r10, rbx
mov rbx, 0x2341f27177344 
mulx r15, rbp, rbx
adcx rbp, rdi
adox rbp, r11
mov rdx, 0x0 
adcx r15, rdx
adox r15, r9
seto r11b
mov r9, 0xffffffffffffffff 
mov rdi, rcx
sub rdi, r9
mov rdx, r14
sbb rdx, r9
movzx rbx, r11b
movzx rax, al
lea rbx, [ rbx + rax ]
mov rax, r13
sbb rax, r9
mov r11, r8
sbb r11, r12
mov r12, 0x7bc65c783158aea3 
mov r9, r10
sbb r9, r12
mov r12, 0x6cfc5fd681c52056 
mov [ rsp + 0x1d8 ], r9
mov r9, rbp
sbb r9, r12
mov r12, 0x2341f27177344 
mov [ rsp + 0x1e0 ], r9
mov r9, r15
sbb r9, r12
mov r12, 0x0 
sbb rbx, r12
cmovc rdi, rcx
cmovc rax, r13
cmovc r11, r8
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x10 ], rax
mov [ rbx + 0x18 ], r11
cmovc r9, r15
mov [ rbx + 0x30 ], r9
mov [ rbx + 0x0 ], rdi
cmovc rdx, r14
mov rcx, [ rsp + 0x1d8 ]
cmovc rcx, r10
mov [ rbx + 0x8 ], rdx
mov [ rbx + 0x20 ], rcx
mov r14, [ rsp + 0x1e0 ]
cmovc r14, rbp
mov [ rbx + 0x28 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 616
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7760
; seed 3982442658609092 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8450279 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 182496 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.021596446697203727
; number reverted permutation / tried permutation: 80573 / 95179 =84.654%
; number reverted decision / tried decision: 69579 / 94820 =73.380%
; validated in 404.092s
