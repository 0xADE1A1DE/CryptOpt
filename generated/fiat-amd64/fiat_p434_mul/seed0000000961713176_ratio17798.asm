SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 696
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x28 ]
xor rdx, rdx
adox rcx, rbx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
adox r10, r8
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r8, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], rcx
mulx rcx, r10, [ rsi + 0x28 ]
adcx r8, rcx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r8
mulx r8, rcx, [ rsi + 0x30 ]
adcx rbx, rdi
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x30 ], rcx
mulx rcx, rdi, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], r10
mulx r10, rbx, [ rsi + 0x30 ]
adcx r13, r15
seto dl
mov r15, -0x2 
inc r15
adox rdi, r8
adox rbx, rcx
adox rbp, r10
mov r8b, dl
mov rdx, [ rsi + 0x0 ]
mulx r10, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x18 ], rbp
mulx rbp, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], rbx
mov [ rsp - 0x8 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x0 ], r13
mov r13, -0x2 
inc r13
adox r15, r10
mov r10b, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r9
mulx r9, r13, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x10 ], r9
mov [ rsp + 0x18 ], r12
mulx r12, r9, [ rsi + 0x8 ]
adcx r13, r14
setc dl
clc
adcx rbx, r12
mov r14b, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r13
mulx r13, r12, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov byte [ rsp + 0x28 ], r14b
mov [ rsp + 0x30 ], r13
mulx r13, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov byte [ rsp + 0x38 ], r10b
mov [ rsp + 0x40 ], rbx
mulx rbx, r10, [ rsi + 0x0 ]
adox r10, rbp
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x48 ], r9
mulx r9, rbp, [ rsi + 0x0 ]
adcx r12, rdi
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], r12
mulx r12, rdi, [ rax + 0x20 ]
setc dl
clc
mov [ rsp + 0x58 ], r10
mov r10, -0x1 
movzx r8, r8b
adcx r8, r10
adcx r11, r14
adcx rdi, r13
mov r8b, dl
mov rdx, [ rsi + 0x10 ]
mulx r13, r14, [ rax + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x60 ], rdi
mulx rdi, r10, [ rsi + 0x0 ]
adcx r14, r12
adox rbp, rbx
mov rdx, [ rsi + 0x0 ]
mulx r12, rbx, [ rax + 0x28 ]
adox r10, r9
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x68 ], r14
mulx r14, r9, [ rsi + 0x10 ]
adcx r9, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r9
mulx r9, r13, [ rax + 0x30 ]
adox rbx, rdi
mov rdx, 0x0 
adcx r14, rdx
adox r13, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rdi, [ rax + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x78 ], r14
mov [ rsp + 0x80 ], r11
mulx r11, r14, rcx
mov rdx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x88 ], r8b
mov [ rsp + 0x90 ], r13
mulx r13, r8, rcx
mov rdx, 0x0 
adox r9, rdx
mov [ rsp + 0x98 ], r9
mov r9, r14
test al, al
adox r9, rcx
mov r9, r14
adcx r9, r11
adcx r14, r11
adox r9, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], rbx
mulx rbx, r15, [ rax + 0x0 ]
adox r14, [ rsp + 0x58 ]
adcx r8, r11
setc dl
clc
adcx rdi, rbx
adox r8, rbp
mov bpl, dl
mov rdx, [ rsi + 0x20 ]
mulx rbx, r11, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], rdi
mov [ rsp + 0xb0 ], r15
mulx r15, rdi, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], r15
mov [ rsp + 0xc0 ], r10
mulx r10, r15, [ rax + 0x0 ]
seto dl
mov [ rsp + 0xc8 ], r15
mov r15, -0x2 
inc r15
adox r11, r10
adcx rdi, r12
mov r12b, dl
mov rdx, [ rsi + 0x20 ]
mulx r15, r10, [ rax + 0x10 ]
adox r10, rbx
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0xd0 ], r10
mulx r10, rbx, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xd8 ], r11
mov [ rsp + 0xe0 ], rdi
mulx rdi, r11, [ rsi + 0x20 ]
adox r11, r15
setc dl
clc
mov r15, -0x1 
movzx rbp, bpl
adcx rbp, r15
adcx r13, rbx
mov bpl, dl
mov rdx, [ rax + 0x20 ]
mulx r15, rbx, [ rsi + 0x20 ]
adox rbx, rdi
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0xe8 ], rbx
mulx rbx, rdi, rcx
adcx rdi, r10
mov r10, 0x2341f27177344 
mov rdx, r10
mov [ rsp + 0xf0 ], r11
mulx r11, r10, rcx
adcx r10, rbx
mov rdx, [ rsi + 0x20 ]
mulx rbx, rcx, [ rax + 0x28 ]
adox rcx, r15
mov rdx, 0x0 
adcx r11, rdx
clc
adcx r9, [ rsp + 0x48 ]
adcx r14, [ rsp + 0x40 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xf8 ], rcx
mulx rcx, r15, [ rsi + 0x20 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x100 ], r14
mov [ rsp + 0x108 ], r9
mulx r9, r14, [ rsi + 0x30 ]
adcx r8, [ rsp + 0x50 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x110 ], r8
mov byte [ rsp + 0x118 ], bpl
mulx rbp, r8, [ rsi + 0x30 ]
adox r15, rbx
mov rdx, 0x0 
adox rcx, rdx
movzx rbx, byte [ rsp + 0x38 ]
dec rdx
adox rbx, rdx
adox r14, [ rsp + 0x18 ]
adox r8, r9
mov rdx, [ rsi + 0x30 ]
mulx r9, rbx, [ rax + 0x30 ]
adox rbx, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x120 ], rbx
mulx rbx, rbp, [ rax + 0x18 ]
seto dl
mov [ rsp + 0x128 ], r8
mov r8, 0x0 
dec r8
movzx r12, r12b
adox r12, r8
adox r13, [ rsp + 0xc0 ]
adox rdi, [ rsp + 0xa0 ]
adox r10, [ rsp + 0x90 ]
mov r12b, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x130 ], r14
mulx r14, r8, [ rax + 0x20 ]
adox r11, [ rsp + 0x98 ]
movzx rdx, r12b
lea rdx, [ rdx + r9 ]
seto r9b
movzx r12, byte [ rsp + 0x88 ]
mov [ rsp + 0x138 ], rdx
mov rdx, 0x0 
dec rdx
adox r12, rdx
adox rbp, [ rsp + 0x30 ]
adox r8, rbx
mov rdx, [ rax + 0x20 ]
mulx rbx, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x140 ], rcx
mov [ rsp + 0x148 ], r15
mulx r15, rcx, [ rax + 0x28 ]
adcx rbp, r13
adox rcx, r14
mov rdx, [ rax + 0x30 ]
mulx r14, r13, [ rsi + 0x8 ]
adcx r8, rdi
adox r13, r15
adcx rcx, r10
adcx r13, r11
mov rdx, [ rsi + 0x18 ]
mulx r10, rdi, [ rax + 0x18 ]
mov rdx, 0x0 
adox r14, rdx
movzx r11, byte [ rsp + 0x118 ]
dec rdx
adox r11, rdx
adox rdi, [ rsp + 0xb8 ]
adox r12, r10
mov rdx, [ rsi + 0x18 ]
mulx r15, r11, [ rax + 0x28 ]
movzx rdx, r9b
adcx rdx, r14
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mulx r14, r10, [ rax + 0x28 ]
setc dl
mov [ rsp + 0x150 ], r12
movzx r12, byte [ rsp + 0x28 ]
clc
mov [ rsp + 0x158 ], rdi
mov rdi, -0x1 
adcx r12, rdi
adcx r10, [ rsp + 0x10 ]
adox r11, rbx
mov r12b, dl
mov rdx, [ rax + 0x30 ]
mulx rdi, rbx, [ rsi + 0x18 ]
adox rbx, r15
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x160 ], r10
mulx r10, r15, [ rsi + 0x28 ]
mov rdx, 0x0 
adox rdi, rdx
adcx r15, r14
adc r10, 0x0
mov r14, 0xffffffffffffffff 
mov rdx, [ rsp + 0x108 ]
mov [ rsp + 0x168 ], r10
mov [ rsp + 0x170 ], r15
mulx r15, r10, r14
mov r14, r10
test al, al
adox r14, r15
mov [ rsp + 0x178 ], rdi
mov rdi, r10
adcx rdi, rdx
adox r10, r15
adcx r14, [ rsp + 0x100 ]
adcx r10, [ rsp + 0x110 ]
mov rdi, 0xfdc1767ae2ffffff 
mov [ rsp + 0x180 ], rbx
mov [ rsp + 0x188 ], r11
mulx r11, rbx, rdi
adox rbx, r15
adcx rbx, rbp
mov rbp, 0x7bc65c783158aea3 
mulx rdi, r15, rbp
adox r15, r11
adcx r15, r8
mov r8, 0x6cfc5fd681c52056 
mulx rbp, r11, r8
adox r11, rdi
adcx r11, rcx
mov rcx, 0x2341f27177344 
mulx r8, rdi, rcx
adox rdi, rbp
adcx rdi, r13
mov rdx, 0x0 
adox r8, rdx
adcx r8, r9
movzx r13, r12b
adc r13, 0x0
test al, al
adox r14, [ rsp + 0x8 ]
mov r12, 0xffffffffffffffff 
mov rdx, r14
mulx r9, r14, r12
adox r10, [ rsp - 0x40 ]
adox rbx, [ rsp - 0x48 ]
adox r15, [ rsp + 0x80 ]
adox r11, [ rsp + 0x60 ]
mov rbp, r14
adcx rbp, r9
mov rcx, r14
adcx rcx, r9
adox rdi, [ rsp + 0x68 ]
adox r8, [ rsp + 0x70 ]
adox r13, [ rsp + 0x78 ]
seto r12b
mov [ rsp + 0x190 ], r13
mov r13, -0x2 
inc r13
adox r14, rdx
adox rbp, r10
adox rcx, rbx
mov r14, 0xfdc1767ae2ffffff 
mulx rbx, r10, r14
adcx r10, r9
adox r10, r15
mov r9, 0x7bc65c783158aea3 
mulx r13, r15, r9
adcx r15, rbx
adox r15, r11
mov r11, 0x6cfc5fd681c52056 
mulx r9, rbx, r11
adcx rbx, r13
adox rbx, rdi
mov rdi, 0x2341f27177344 
mulx r11, r13, rdi
adcx r13, r9
adox r13, r8
mov rdx, 0x0 
adcx r11, rdx
clc
adcx rbp, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0xa8 ]
mov rdx, rbp
mulx r8, rbp, r14
adcx r10, [ rsp + 0xe0 ]
adcx r15, [ rsp + 0x158 ]
adcx rbx, [ rsp + 0x150 ]
adox r11, [ rsp + 0x190 ]
adcx r13, [ rsp + 0x188 ]
adcx r11, [ rsp + 0x180 ]
movzx r9, r12b
mov rdi, 0x0 
adox r9, rdi
adcx r9, [ rsp + 0x178 ]
mov r12, 0xffffffffffffffff 
mulx r14, rdi, r12
mov r12, rdi
mov [ rsp + 0x198 ], r9
mov r9, -0x2 
inc r9
adox r12, rdx
mov r12, rdi
setc r9b
clc
adcx r12, r14
adcx rdi, r14
adox r12, rcx
adox rdi, r10
adcx rbp, r14
adox rbp, r15
mov rcx, 0x7bc65c783158aea3 
mulx r15, r10, rcx
adcx r10, r8
mov r8, 0x6cfc5fd681c52056 
mulx rcx, r14, r8
adcx r14, r15
adox r10, rbx
adox r14, r13
mov rbx, 0x2341f27177344 
mulx r15, r13, rbx
adcx r13, rcx
mov rdx, 0x0 
adcx r15, rdx
adox r13, r11
adox r15, [ rsp + 0x198 ]
movzx r11, r9b
adox r11, rdx
xor r9, r9
adox r12, [ rsp + 0xc8 ]
adox rdi, [ rsp + 0xd8 ]
mov rdx, 0xfdc1767ae2ffffff 
mulx r9, rcx, r12
mov rdx, r12
mulx rbx, r12, r8
adox rbp, [ rsp + 0xd0 ]
adox r10, [ rsp + 0xf0 ]
adox r14, [ rsp + 0xe8 ]
adox r13, [ rsp + 0xf8 ]
adox r15, [ rsp + 0x148 ]
mov r8, 0x7bc65c783158aea3 
mov [ rsp + 0x1a0 ], r15
mov [ rsp + 0x1a8 ], r13
mulx r13, r15, r8
adox r11, [ rsp + 0x140 ]
mov r8, 0xffffffffffffffff 
mov [ rsp + 0x1b0 ], r11
mov [ rsp + 0x1b8 ], r14
mulx r14, r11, r8
mov r8, r11
adcx r8, r14
mov [ rsp + 0x1c0 ], r10
mov r10, r11
adcx r10, r14
adcx rcx, r14
adcx r15, r9
adcx r12, r13
mov r9, 0x2341f27177344 
mulx r14, r13, r9
adcx r13, rbx
mov rbx, 0x0 
adcx r14, rbx
clc
adcx r11, rdx
adcx r8, rdi
adcx r10, rbp
adcx rcx, [ rsp + 0x1c0 ]
adcx r15, [ rsp + 0x1b8 ]
adcx r12, [ rsp + 0x1a8 ]
adcx r13, [ rsp + 0x1a0 ]
adcx r14, [ rsp + 0x1b0 ]
setc r11b
clc
adcx r8, [ rsp - 0x20 ]
adcx r10, [ rsp - 0x38 ]
adcx rcx, [ rsp - 0x28 ]
adcx r15, [ rsp + 0x0 ]
mov rdx, r9
mulx rdi, r9, r8
adcx r12, [ rsp + 0x20 ]
adcx r13, [ rsp + 0x160 ]
adcx r14, [ rsp + 0x170 ]
movzx rbp, r11b
adox rbp, rbx
mov r11, 0xffffffffffffffff 
mov rdx, r8
mulx rbx, r8, r11
adcx rbp, [ rsp + 0x168 ]
mov r11, r8
mov [ rsp + 0x1c8 ], rbp
mov rbp, -0x2 
inc rbp
adox r11, rbx
mov rbp, r8
mov [ rsp + 0x1d0 ], r14
setc r14b
clc
adcx rbp, rdx
adcx r11, r10
mov rbp, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1d8 ], r14b
mulx r14, r10, rbp
adox r8, rbx
adox r10, rbx
adcx r8, rcx
adcx r10, r15
setc cl
clc
adcx r11, [ rsp - 0x30 ]
xchg rdx, rbp
mulx rbx, r15, r11
adcx r8, [ rsp - 0x8 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x1e0 ], r8
mov [ rsp + 0x1e8 ], r13
mulx r13, r8, r11
mov [ rsp + 0x1f0 ], r12
mov byte [ rsp + 0x1f8 ], cl
mulx rcx, r12, rbp
adox r12, r14
adcx r10, [ rsp - 0x10 ]
mov r14, 0x6cfc5fd681c52056 
mov rdx, rbp
mov [ rsp + 0x200 ], r10
mulx r10, rbp, r14
adox rbp, rcx
adox r9, r10
mov rdx, 0xffffffffffffffff 
mulx r10, rcx, r11
mov r14, rcx
setc dl
clc
adcx r14, r10
mov [ rsp + 0x208 ], r14
mov r14, 0x0 
adox rdi, r14
mov r14, rcx
adcx r14, r10
adcx r15, r10
adcx r8, rbx
mov rbx, 0x6cfc5fd681c52056 
xchg rdx, r11
mov [ rsp + 0x210 ], r8
mulx r8, r10, rbx
adcx r10, r13
mov r13, 0x2341f27177344 
mov [ rsp + 0x218 ], r10
mulx r10, rbx, r13
adcx rbx, r8
adc r10, 0x0
add byte [ rsp + 0x1f8 ], 0xFF
adcx r12, [ rsp + 0x1f0 ]
adcx rbp, [ rsp + 0x1e8 ]
adcx r9, [ rsp + 0x1d0 ]
adcx rdi, [ rsp + 0x1c8 ]
movzx r8, byte [ rsp + 0x1d8 ]
adc r8, 0x0
add r11b, 0x7F
adox r12, [ rsp - 0x18 ]
adox rbp, [ rsp + 0x130 ]
adcx rcx, rdx
mov rcx, [ rsp + 0x1e0 ]
adcx rcx, [ rsp + 0x208 ]
adox r9, [ rsp + 0x128 ]
adox rdi, [ rsp + 0x120 ]
adcx r14, [ rsp + 0x200 ]
adcx r15, r12
adcx rbp, [ rsp + 0x210 ]
adcx r9, [ rsp + 0x218 ]
adcx rbx, rdi
adox r8, [ rsp + 0x138 ]
adcx r10, r8
seto dl
adc dl, 0x0
movzx rdx, dl
mov r11, 0xffffffffffffffff 
mov r12, rcx
sub r12, r11
mov rdi, r14
sbb rdi, r11
mov r8, r15
sbb r8, r11
mov r13, 0xfdc1767ae2ffffff 
mov r11, rbp
sbb r11, r13
mov r13, 0x7bc65c783158aea3 
mov [ rsp + 0x220 ], r12
mov r12, r9
sbb r12, r13
mov r13, 0x6cfc5fd681c52056 
mov [ rsp + 0x228 ], r12
mov r12, rbx
sbb r12, r13
mov r13, 0x2341f27177344 
mov [ rsp + 0x230 ], r12
mov r12, r10
sbb r12, r13
movzx rdx, dl
mov r13, 0x0 
sbb rdx, r13
cmovc r12, r10
cmovc r8, r15
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r8
cmovc r11, rbp
mov [ rdx + 0x30 ], r12
cmovc rdi, r14
mov [ rdx + 0x8 ], rdi
mov [ rdx + 0x18 ], r11
mov r14, [ rsp + 0x220 ]
cmovc r14, rcx
mov rcx, [ rsp + 0x228 ]
cmovc rcx, r9
mov [ rdx + 0x20 ], rcx
mov [ rdx + 0x0 ], r14
mov r15, [ rsp + 0x230 ]
cmovc r15, rbx
mov [ rdx + 0x28 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 696
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7798
; seed 0333479472725355 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8510053 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 181937 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02137906779193972
; number reverted permutation / tried permutation: 80191 / 95002 =84.410%
; number reverted decision / tried decision: 67962 / 94997 =71.541%
; validated in 455.318s
