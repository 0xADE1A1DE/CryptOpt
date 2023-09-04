SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 536
mov rdx, [ rsi + 0x30 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rax
mulx rax, r12, [ rsi + 0x10 ]
adox r12, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r12
mulx r12, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r11
mov [ rsp - 0x28 ], r12
mulx r12, r11, [ rsi + 0x30 ]
adox r11, rax
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], r11
mulx r11, rax, [ rsi + 0x30 ]
adox rax, r12
adcx r10, rcx
mov rdx, [ rsi + 0x30 ]
mulx r12, rcx, [ rsi + 0x28 ]
adcx r13, r14
adox rcx, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, r14, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], rcx
mov [ rsp - 0x10 ], rax
mulx rax, rcx, [ rsi + 0x8 ]
setc dl
clc
adcx rcx, r11
mov r11b, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rcx
mov [ rsp + 0x0 ], r14
mulx r14, rcx, [ rsi + 0x28 ]
adcx rcx, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], rcx
mulx rcx, rax, [ rsi + 0x18 ]
adcx rax, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], rax
mulx rax, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x18 ], r13
mov [ rsp + 0x20 ], r10
mulx r10, r13, rdx
mov rdx, [ rsi + 0x30 ]
mov byte [ rsp + 0x28 ], r11b
mov [ rsp + 0x30 ], rdi
mulx rdi, r11, rdx
adox r11, r12
seto dl
mov r12, -0x2 
inc r12
adox r14, r10
adox rbx, rax
mov al, dl
mov rdx, [ rsi + 0x0 ]
mulx r12, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r11
mov [ rsp + 0x40 ], r15
mulx r15, r11, [ rsi + 0x0 ]
adox r11, rbp
adox r10, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, rbp, [ rsi + 0x28 ]
adox r8, r12
adcx rbp, rcx
movzx rdx, al
lea rdx, [ rdx + rdi ]
mov rcx, rdx
mov rdx, [ rsi + 0x28 ]
mulx rax, rdi, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x48 ], rcx
mulx rcx, r12, [ rsi + 0x0 ]
adox r12, r9
adcx rdi, r15
mov rdx, 0x0 
adox rcx, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], rdi
mov [ rsp + 0x58 ], rbp
mulx rbp, rdi, [ rsi + 0x30 ]
adcx rdi, rax
adc rbp, 0x0
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], rbp
mulx rbp, rax, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x68 ], rdi
mov [ rsp + 0x70 ], rcx
mulx rcx, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], rcx
mov [ rsp + 0x80 ], r12
mulx r12, rcx, [ rsi + 0x10 ]
test al, al
adox r9, r12
adox rax, r15
mov rdx, 0xffffffffffffffff 
mulx r12, r15, r13
adox rdi, rbp
mov rbp, r15
adcx rbp, r12
mov rdx, r15
mov [ rsp + 0x88 ], rdi
seto dil
mov [ rsp + 0x90 ], rax
mov rax, -0x2 
inc rax
adox rdx, r13
adox rbp, r14
adcx r15, r12
adox r15, rbx
mov rdx, 0x7bc65c783158aea3 
mulx rbx, r14, r13
mov rax, 0xfdc1767ae2ffffff 
mov rdx, r13
mov [ rsp + 0x98 ], r9
mulx r9, r13, rax
adcx r13, r12
adox r13, r11
mov r11, 0x6cfc5fd681c52056 
mulx rax, r12, r11
adcx r14, r9
mov r9, 0x2341f27177344 
mov [ rsp + 0xa0 ], rcx
mulx rcx, r11, r9
adcx r12, rbx
adox r14, r10
adcx r11, rax
adox r12, r8
adox r11, [ rsp + 0x80 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, r10, rdx
mov rdx, [ rsi + 0x0 ]
mulx rax, rbx, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r10, rax
adox rcx, [ rsp + 0x70 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, rax, [ rsi + 0x8 ]
adcx rax, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa8 ], rcx
mulx rcx, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb0 ], r11
mov byte [ rsp + 0xb8 ], dil
mulx rdi, r11, [ rsi + 0x18 ]
adcx r11, r9
adcx rdi, [ rsp + 0x40 ]
setc dl
clc
adcx rbx, rbp
adcx r10, r15
adcx rax, r13
mov bpl, dl
mov rdx, [ rsi + 0x10 ]
mulx r13, r15, [ rsi + 0x20 ]
adcx r11, r14
mov rdx, [ rsi + 0x28 ]
mulx r9, r14, [ rsi + 0x20 ]
adcx rdi, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc0 ], r9
mulx r9, r12, [ rsi + 0x20 ]
setc dl
clc
adcx r8, r9
mov r9b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xc8 ], r8
mov [ rsp + 0xd0 ], r12
mulx r12, r8, [ rsi + 0x10 ]
adcx r8, rcx
seto dl
movzx rcx, byte [ rsp + 0xb8 ]
mov [ rsp + 0xd8 ], r8
mov r8, 0x0 
dec r8
adox rcx, r8
adox r15, [ rsp + 0x78 ]
mov cl, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe0 ], r15
mulx r15, r8, [ rsi + 0x28 ]
adox r8, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r8
mulx r8, r13, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x18 ]
mov byte [ rsp + 0xf0 ], cl
mov byte [ rsp + 0xf8 ], r9b
mulx r9, rcx, [ rsi + 0x20 ]
adox r13, r15
adcx rcx, r12
mov rdx, [ rsi + 0x20 ]
mulx r15, r12, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x100 ], rcx
mov [ rsp + 0x108 ], r13
mulx r13, rcx, rbx
adcx r12, r9
mov r9, rcx
seto dl
mov [ rsp + 0x110 ], r12
mov r12, -0x2 
inc r12
adox r9, r13
adcx r14, r15
movzx r15, dl
lea r15, [ r15 + r8 ]
mov r8, rcx
setc dl
clc
adcx r8, rbx
adcx r9, r10
mov r8, 0xfdc1767ae2ffffff 
xchg rdx, rbx
mulx r12, r10, r8
adox rcx, r13
adox r10, r13
adcx rcx, rax
adcx r10, r11
mov rax, 0x7bc65c783158aea3 
mulx r13, r11, rax
adox r11, r12
adcx r11, rdi
mov rdi, 0x6cfc5fd681c52056 
mulx r8, r12, rdi
mov rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x118 ], r14
mulx r14, rax, [ rsi + 0x28 ]
mov rdx, 0x2341f27177344 
mov [ rsp + 0x120 ], r15
mov byte [ rsp + 0x128 ], bl
mulx rbx, r15, rdi
setc dil
clc
mov rdx, -0x1 
movzx rbp, bpl
adcx rbp, rdx
adcx rax, [ rsp + 0x30 ]
adox r12, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, rbp, [ rsi + 0x30 ]
adcx rbp, r14
adox r15, r8
mov rdx, 0x0 
adox rbx, rdx
adc r13, 0x0
add byte [ rsp + 0xf8 ], 0x7F
adox rax, [ rsp + 0xb0 ]
adox rbp, [ rsp + 0xa8 ]
mov rdx, [ rsi + 0x30 ]
mulx r14, r8, [ rsi + 0x20 ]
mov rdx, -0x1 
movzx rdi, dil
adcx rdi, rdx
adcx rax, r12
adcx r15, rbp
movzx rdi, byte [ rsp + 0xf0 ]
adox rdi, r13
adcx rbx, rdi
mov rdx, [ rsi + 0x20 ]
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbp, rdx
seto dl
adc dl, 0x0
movzx rdx, dl
add byte [ rsp + 0x28 ], 0x7F
adox rbp, [ rsp - 0x28 ]
adcx r9, [ rsp + 0xa0 ]
mov [ rsp + 0x130 ], rbp
mov rbp, 0xffffffffffffffff 
xchg rdx, rbp
mov byte [ rsp + 0x138 ], bpl
mov [ rsp + 0x140 ], rbx
mulx rbx, rbp, r9
adcx rcx, [ rsp + 0x98 ]
adcx r10, [ rsp + 0x90 ]
adcx r11, [ rsp + 0x88 ]
setc dl
mov [ rsp + 0x148 ], r15
movzx r15, byte [ rsp + 0x128 ]
clc
mov [ rsp + 0x150 ], rax
mov rax, -0x1 
adcx r15, rax
adcx r8, [ rsp + 0xc0 ]
adox r12, rdi
mov r15, rbp
setc dil
clc
adcx r15, rbx
mov rax, rbp
mov [ rsp + 0x158 ], r8
seto r8b
mov [ rsp + 0x160 ], r12
mov r12, -0x2 
inc r12
adox rax, r9
adox r15, rcx
mov al, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, [ rsi + 0x28 ]
movzx rdx, dil
lea rdx, [ rdx + r14 ]
adcx rbp, rbx
adox rbp, r10
mov r14, 0xfdc1767ae2ffffff 
xchg rdx, r14
mulx rdi, r10, r9
adcx r10, rbx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x168 ], r14
mulx r14, rbx, [ rsi + 0x18 ]
setc dl
clc
adcx r15, [ rsp - 0x30 ]
adcx rbp, [ rsp + 0x20 ]
adox r10, r11
adcx r10, [ rsp + 0x18 ]
setc r11b
clc
mov [ rsp + 0x170 ], r10
mov r10, -0x1 
movzx r8, r8b
adcx r8, r10
adcx r13, rcx
adcx rbx, r12
mov r8, 0x0 
adcx r14, r8
mov rcx, 0x6cfc5fd681c52056 
xchg rdx, r9
mulx r8, r12, rcx
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0x178 ], r14
mulx r14, rcx, r10
clc
mov r10, -0x1 
movzx r9, r9b
adcx r9, r10
adcx rdi, rcx
adcx r12, r14
mov r9, 0x2341f27177344 
mulx r14, rcx, r9
adcx rcx, r8
mov rdx, [ rsp + 0x150 ]
setc r8b
clc
movzx rax, al
adcx rax, r10
adcx rdx, [ rsp + 0xe0 ]
adox rdi, rdx
mov rax, [ rsp + 0x148 ]
adcx rax, [ rsp + 0xe8 ]
mov rdx, [ rsp + 0x140 ]
adcx rdx, [ rsp + 0x108 ]
adox r12, rax
mov rax, [ rsp + 0x120 ]
movzx r10, byte [ rsp + 0x138 ]
adcx r10, rax
movzx rax, r8b
lea rax, [ rax + r14 ]
adox rcx, rdx
adox rax, r10
seto r14b
adc r14b, 0x0
movzx r14, r14b
add r11b, 0xFF
adcx rdi, [ rsp + 0x130 ]
adcx r12, [ rsp + 0x160 ]
mov r11, 0xffffffffffffffff 
mov rdx, r15
mulx r8, r15, r11
adcx r13, rcx
adcx rbx, rax
mov r10, r15
adox r10, rdx
mov r10, r15
setc cl
clc
adcx r10, r8
adcx r15, r8
mov rax, 0xfdc1767ae2ffffff 
mulx r11, r9, rax
adox r10, rbp
adcx r9, r8
mov rbp, 0x7bc65c783158aea3 
mulx rax, r8, rbp
adox r15, [ rsp + 0x170 ]
adox r9, rdi
adcx r8, r11
adox r8, r12
mov rdi, 0x6cfc5fd681c52056 
mulx r11, r12, rdi
adcx r12, rax
adox r12, r13
mov r13, 0x2341f27177344 
mulx rdi, rax, r13
adcx rax, r11
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r10, [ rsp + 0xd0 ]
adcx r15, [ rsp + 0xc8 ]
adcx r9, [ rsp + 0xd8 ]
movzx r11, r14b
setc dl
clc
mov r13, -0x1 
movzx rcx, cl
adcx rcx, r13
adcx r11, [ rsp + 0x178 ]
setc r14b
clc
movzx rdx, dl
adcx rdx, r13
adcx r8, [ rsp + 0x100 ]
adox rax, rbx
adox rdi, r11
adcx r12, [ rsp + 0x110 ]
adcx rax, [ rsp + 0x118 ]
movzx rcx, r14b
mov rbx, 0x0 
adox rcx, rbx
mov rdx, 0xffffffffffffffff 
mulx r14, r11, r10
adcx rdi, [ rsp + 0x158 ]
adcx rcx, [ rsp + 0x168 ]
mov r13, r11
mov rbp, -0x3 
inc rbp
adox r13, r14
mov rbx, r11
adox rbx, r14
setc bpl
clc
adcx r11, r10
adcx r13, r15
adcx rbx, r9
mov r11, 0xfdc1767ae2ffffff 
mov rdx, r10
mulx r15, r10, r11
adox r10, r14
adcx r10, r8
mov r9, 0x7bc65c783158aea3 
mulx r14, r8, r9
adox r8, r15
adcx r8, r12
mov r12, 0x6cfc5fd681c52056 
mulx r11, r15, r12
adox r15, r14
setc r14b
clc
adcx r13, [ rsp + 0x0 ]
adcx rbx, [ rsp - 0x8 ]
adcx r10, [ rsp + 0x8 ]
setc r12b
clc
mov r9, -0x1 
movzx r14, r14b
adcx r14, r9
adcx rax, r15
mov r14, 0x2341f27177344 
mulx r9, r15, r14
adox r15, r11
adcx r15, rdi
mov rdx, 0x0 
adox r9, rdx
adcx r9, rcx
movzx rdi, bpl
adc rdi, 0x0
mov rbp, 0xffffffffffffffff 
mov rdx, r13
mulx rcx, r13, rbp
mov r11, r13
test al, al
adox r11, rcx
mov r14, r13
adox r14, rcx
adcx r13, rdx
mov r13, 0xfdc1767ae2ffffff 
mov [ rsp + 0x180 ], rdi
mulx rdi, rbp, r13
adcx r11, rbx
adcx r14, r10
mov rbx, 0x7bc65c783158aea3 
mulx r13, r10, rbx
adox rbp, rcx
adox r10, rdi
mov rcx, 0x6cfc5fd681c52056 
mulx rbx, rdi, rcx
adox rdi, r13
seto r13b
mov rcx, 0x0 
dec rcx
movzx r12, r12b
adox r12, rcx
adox r8, [ rsp + 0x10 ]
adcx rbp, r8
adox rax, [ rsp + 0x58 ]
adox r15, [ rsp + 0x50 ]
adcx r10, rax
adox r9, [ rsp + 0x68 ]
adcx rdi, r15
mov r12, 0x2341f27177344 
mulx rax, r8, r12
setc dl
clc
movzx r13, r13b
adcx r13, rcx
adcx rbx, r8
mov r13, 0x0 
adcx rax, r13
mov r15, [ rsp + 0x180 ]
adox r15, [ rsp + 0x60 ]
clc
movzx rdx, dl
adcx rdx, rcx
adcx r9, rbx
adcx rax, r15
setc dl
clc
adcx r11, [ rsp - 0x40 ]
adcx r14, [ rsp - 0x48 ]
adcx rbp, [ rsp - 0x38 ]
adcx r10, [ rsp - 0x20 ]
adcx rdi, [ rsp - 0x10 ]
movzx r8, dl
adox r8, r13
mov rbx, 0xffffffffffffffff 
mov rdx, r11
mulx r15, r11, rbx
mov rcx, r11
mov r12, -0x3 
inc r12
adox rcx, r15
mov r13, 0xfdc1767ae2ffffff 
mulx rbx, r12, r13
adcx r9, [ rsp - 0x18 ]
mov r13, r11
adox r13, r15
adcx rax, [ rsp + 0x38 ]
adox r12, r15
adcx r8, [ rsp + 0x48 ]
setc r15b
clc
adcx r11, rdx
adcx rcx, r14
adcx r13, rbp
adcx r12, r10
mov r11, 0x7bc65c783158aea3 
mulx rbp, r14, r11
adox r14, rbx
adcx r14, rdi
mov r10, 0x6cfc5fd681c52056 
mulx rbx, rdi, r10
adox rdi, rbp
adcx rdi, r9
mov r9, 0x2341f27177344 
mulx r10, rbp, r9
adox rbp, rbx
mov rdx, 0x0 
adox r10, rdx
adcx rbp, rax
adcx r10, r8
movzx rax, r15b
adc rax, 0x0
mov r15, 0xffffffffffffffff 
mov r8, rcx
sub r8, r15
mov rbx, r13
sbb rbx, r15
mov rdx, r12
sbb rdx, r15
mov r9, 0xfdc1767ae2ffffff 
mov r11, r14
sbb r11, r9
mov r9, 0x7bc65c783158aea3 
mov r15, rdi
sbb r15, r9
mov r9, 0x6cfc5fd681c52056 
mov [ rsp + 0x188 ], r15
mov r15, rbp
sbb r15, r9
mov r9, 0x2341f27177344 
mov [ rsp + 0x190 ], rbx
mov rbx, r10
sbb rbx, r9
mov r9, 0x0 
sbb rax, r9
cmovc r8, rcx
cmovc rbx, r10
cmovc rdx, r12
cmovc r11, r14
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x10 ], rdx
cmovc r15, rbp
mov [ rax + 0x28 ], r15
mov [ rax + 0x18 ], r11
mov rcx, [ rsp + 0x190 ]
cmovc rcx, r13
mov [ rax + 0x8 ], rcx
mov r13, [ rsp + 0x188 ]
cmovc r13, rdi
mov [ rax + 0x0 ], r8
mov [ rax + 0x30 ], rbx
mov [ rax + 0x20 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 536
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6974
; seed 4040267733765898 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 13441915 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=17, initial num_batches=31): 253102 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.018829311150978117
; number reverted permutation / tried permutation: 85163 / 94758 =89.874%
; number reverted decision / tried decision: 79233 / 95241 =83.192%
; validated in 530.272s
