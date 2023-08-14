SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 728
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], rdi
mulx rdi, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r12
mulx r12, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r14
mov [ rsp - 0x20 ], rcx
mulx rcx, r14, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rcx
mov [ rsp - 0x10 ], r11
mulx r11, rcx, rdx
adcx rax, r12
adox rcx, rdi
adcx r8, r10
adcx r14, r9
setc dl
clc
adcx rbx, r13
mov r10b, dl
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rbx
mov [ rsp + 0x0 ], r14
mulx r14, rbx, [ rsi + 0x28 ]
seto dl
mov [ rsp + 0x8 ], r8
mov r8, -0x2 
inc r8
adox r9, r12
mov r12b, dl
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], rax
mulx rax, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], r9
mulx r9, rcx, [ rsi + 0x10 ]
adox rcx, r13
adox r8, r9
mov rdx, [ rsi + 0x0 ]
mulx r9, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r8
mov [ rsp + 0x30 ], rcx
mulx rcx, r8, [ rsi + 0x18 ]
adox r13, rax
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x38 ], r13
mulx r13, rax, [ rsi + 0x30 ]
adcx rbx, rbp
adcx r8, r14
mov rdx, [ rsi + 0x30 ]
mulx r14, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], r8
mov [ rsp + 0x48 ], rbx
mulx rbx, r8, [ rsi + 0x0 ]
setc dl
clc
adcx rax, r15
adcx rbp, r13
mov r15b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], rbp
mulx rbp, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], rax
mov [ rsp + 0x60 ], r8
mulx r8, rax, [ rsi + 0x20 ]
setc dl
clc
adcx r13, rbx
mov bl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x68 ], r13
mov [ rsp + 0x70 ], r14
mulx r14, r13, [ rsi + 0x10 ]
adcx r13, rbp
adcx rax, r14
mov rdx, [ rsi + 0x30 ]
mulx r14, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], rax
mov [ rsp + 0x80 ], r13
mulx r13, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov byte [ rsp + 0x88 ], bl
mov [ rsp + 0x90 ], r9
mulx r9, rbx, [ rsi + 0x18 ]
seto dl
mov [ rsp + 0x98 ], rcx
mov rcx, 0x0 
dec rcx
movzx r12, r12b
adox r12, rcx
adox r11, rbx
adox r9, [ rsp - 0x10 ]
setc r12b
clc
movzx r10, r10b
adcx r10, rcx
adcx rax, [ rsp - 0x18 ]
mov r10b, dl
mov rdx, [ rsi + 0x28 ]
mulx rcx, rbx, [ rsi + 0x18 ]
adcx rbx, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa0 ], rbx
mulx rbx, r13, [ rsi + 0x20 ]
adcx rbp, rcx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], rbp
mulx rbp, rcx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], rax
mov [ rsp + 0xb8 ], r9
mulx r9, rax, [ rsi + 0x28 ]
adox rax, [ rsp - 0x20 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xc0 ], rax
mov [ rsp + 0xc8 ], r11
mulx r11, rax, rdi
mov rdx, 0x0 
adcx r14, rdx
clc
mov rdx, -0x1 
movzx r12, r12b
adcx r12, rdx
adcx r8, rcx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, [ rsi + 0x30 ]
adcx r13, rbp
adox r12, r9
mov rdx, 0x7bc65c783158aea3 
mulx r9, rbp, rdi
mov rdx, rax
mov [ rsp + 0xd0 ], r13
seto r13b
mov [ rsp + 0xd8 ], r8
mov r8, -0x2 
inc r8
adox rdx, r11
mov r8, 0xfdc1767ae2ffffff 
xchg rdx, rdi
mov [ rsp + 0xe0 ], r14
mov [ rsp + 0xe8 ], rcx
mulx rcx, r14, r8
mov r8, rax
adox r8, r11
adox r14, r11
mov r11, 0x6cfc5fd681c52056 
mov byte [ rsp + 0xf0 ], r13b
mov [ rsp + 0xf8 ], r12
mulx r12, r13, r11
adox rbp, rcx
adox r13, r9
mov r9, 0x2341f27177344 
mulx r11, rcx, r9
adox rcx, r12
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], rcx
mulx rcx, r9, [ rsi + 0x30 ]
mov rdx, 0x0 
adox r11, rdx
adcx r9, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x108 ], r9
mulx r9, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x110 ], r11
mov [ rsp + 0x118 ], r13
mulx r13, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x120 ], r11
mov [ rsp + 0x128 ], rbp
mulx rbp, r11, [ rsi + 0x28 ]
adc rcx, 0x0
add r15b, 0x7F
adox r11, [ rsp + 0x98 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x130 ], r11
mulx r11, r15, [ rsi + 0x30 ]
adox rbx, rbp
adox r15, r9
mov rdx, [ rsi + 0x28 ]
mulx rbp, r9, [ rsi + 0x0 ]
mov rdx, -0x1 
movzx r10, r10b
adcx r10, rdx
adcx r9, [ rsp + 0x90 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x138 ], r15
mulx r15, r10, [ rsi + 0x0 ]
adcx r10, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x140 ], rbx
mulx rbx, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x148 ], r11
mov [ rsp + 0x150 ], rcx
mulx rcx, r11, rdx
setc dl
clc
adcx r11, r13
movzx r13, dl
lea r13, [ r13 + r15 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x158 ], r13
mulx r13, r15, [ rsi + 0x8 ]
adcx r15, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x160 ], r15
mulx r15, rcx, [ rsi + 0x18 ]
adcx rcx, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x168 ], rcx
mulx rcx, r13, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x170 ], r11
mov r11, -0x2 
inc r11
adox rax, r12
adox rdi, [ rsp + 0x20 ]
adox r8, [ rsp + 0x30 ]
adcx rbp, r15
mov al, dl
mov rdx, [ rsi + 0x20 ]
mulx r15, r12, [ rsi + 0x30 ]
adcx r13, rbx
mov rdx, [ rsi + 0x30 ]
mulx r11, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov byte [ rsp + 0x178 ], al
mov [ rsp + 0x180 ], r13
mulx r13, rax, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x188 ], rbp
mov [ rsp + 0x190 ], r8
mulx r8, rbp, [ rsi + 0x8 ]
adcx rbp, rcx
mov rdx, 0x0 
adcx r8, rdx
movzx rcx, byte [ rsp + 0x88 ]
clc
mov rdx, -0x1 
adcx rcx, rdx
adcx rbx, [ rsp + 0x70 ]
adcx r12, r11
adox r14, [ rsp + 0x28 ]
mov rcx, [ rsp + 0x38 ]
adox rcx, [ rsp + 0x128 ]
adox r9, [ rsp + 0x118 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x198 ], r12
mulx r12, r11, [ rsi + 0x30 ]
adox r10, [ rsp + 0x100 ]
adcx r11, r15
adcx rax, r12
mov rdx, 0x0 
adcx r13, rdx
clc
adcx rdi, [ rsp + 0x120 ]
mov r15, [ rsp + 0x170 ]
adcx r15, [ rsp + 0x190 ]
adcx r14, [ rsp + 0x160 ]
mov r12, 0xfdc1767ae2ffffff 
mov rdx, rdi
mov [ rsp + 0x1a0 ], r13
mulx r13, rdi, r12
mov r12, 0xffffffffffffffff 
mov [ rsp + 0x1a8 ], rax
mov [ rsp + 0x1b0 ], r11
mulx r11, rax, r12
adcx rcx, [ rsp + 0x168 ]
mov r12, [ rsp + 0x110 ]
adox r12, [ rsp + 0x158 ]
adcx r9, [ rsp + 0x188 ]
adcx r10, [ rsp + 0x180 ]
adcx rbp, r12
mov r12, rax
mov [ rsp + 0x1b8 ], rbx
seto bl
mov [ rsp + 0x1c0 ], rbp
mov rbp, -0x2 
inc rbp
adox r12, r11
mov rbp, rax
adox rbp, r11
mov [ rsp + 0x1c8 ], r10
movzx r10, bl
adcx r10, r8
setc r8b
clc
adcx rax, rdx
adcx r12, r15
adcx rbp, r14
adox rdi, r11
adcx rdi, rcx
mov rax, 0x7bc65c783158aea3 
mulx r14, r15, rax
adox r15, r13
adcx r15, r9
mov r13, 0x6cfc5fd681c52056 
mulx rcx, r11, r13
adox r11, r14
mov rbx, 0x2341f27177344 
mulx r14, r9, rbx
adcx r11, [ rsp + 0x1c8 ]
adox r9, rcx
mov rdx, 0x0 
adox r14, rdx
mov rcx, -0x3 
inc rcx
adox r12, [ rsp - 0x38 ]
mov rdx, 0xfdc1767ae2ffffff 
mulx rbx, rcx, r12
adox rbp, [ rsp - 0x30 ]
adox rdi, [ rsp + 0x18 ]
mov rdx, r13
mulx rax, r13, r12
adox r15, [ rsp + 0xc8 ]
adox r11, [ rsp + 0xb8 ]
adcx r9, [ rsp + 0x1c0 ]
adcx r14, r10
adox r9, [ rsp + 0xc0 ]
movzx r10, r8b
mov rdx, 0x0 
adcx r10, rdx
mov r8, 0xffffffffffffffff 
mov rdx, r8
mov [ rsp + 0x1d0 ], r10
mulx r10, r8, r12
adox r14, [ rsp + 0xf8 ]
mov rdx, r8
clc
adcx rdx, r10
mov [ rsp + 0x1d8 ], r14
mov r14, r8
adcx r14, r10
mov [ rsp + 0x1e0 ], r9
seto r9b
mov [ rsp + 0x1e8 ], r11
mov r11, -0x2 
inc r11
adox r8, r12
adox rdx, rbp
adcx rcx, r10
adox r14, rdi
adox rcx, r15
setc r8b
clc
adcx rdx, [ rsp - 0x28 ]
mov rbp, 0xffffffffffffffff 
mulx r15, rdi, rbp
mov r10, rdi
seto r11b
mov rbp, -0x2 
inc rbp
adox r10, r15
mov rbp, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1f0 ], r9b
mov byte [ rsp + 0x1f8 ], r11b
mulx r11, r9, rbp
adcx r14, [ rsp + 0x10 ]
adcx rcx, [ rsp + 0x8 ]
mov rbp, rdi
mov [ rsp + 0x200 ], rax
setc al
clc
adcx rbp, rdx
adcx r10, r14
adox rdi, r15
adcx rdi, rcx
adox r9, r15
mov rbp, 0x7bc65c783158aea3 
xchg rdx, rbp
mulx r14, r15, r12
mov [ rsp + 0x208 ], rdi
mulx rdi, rcx, rbp
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x210 ], r10
mov [ rsp + 0x218 ], r9
mulx r9, r10, rbp
adox rcx, r11
adox r10, rdi
setc r11b
clc
mov rdi, -0x1 
movzx r8, r8b
adcx r8, rdi
adcx rbx, r15
mov r8, 0x2341f27177344 
mov rdx, r8
mulx r15, r8, rbp
adcx r13, r14
adox r8, r9
mulx r14, rbp, r12
movzx r12, byte [ rsp + 0xf0 ]
mov r9, [ rsp + 0xe8 ]
lea r12, [ r12 + r9 ]
adcx rbp, [ rsp + 0x200 ]
mov r9, 0x0 
adox r15, r9
adc r14, 0x0
add byte [ rsp + 0x1f8 ], 0x7F
adox rbx, [ rsp + 0x1e8 ]
movzx rax, al
adcx rax, rdi
adcx rbx, [ rsp + 0x0 ]
adox r13, [ rsp + 0x1e0 ]
adcx r13, [ rsp + 0xb0 ]
adox rbp, [ rsp + 0x1d8 ]
setc al
movzx r9, byte [ rsp + 0x1f0 ]
clc
adcx r9, rdi
adcx r12, [ rsp + 0x1d0 ]
adox r14, r12
seto r9b
adc r9b, 0x0
movzx r9, r9b
add al, 0x7F
adox rbp, [ rsp + 0xa0 ]
adox r14, [ rsp + 0xa8 ]
movzx r9, r9b
movzx rax, r9b
adox rax, [ rsp + 0xe0 ]
movzx r11, r11b
adcx r11, rdi
adcx rbx, [ rsp + 0x218 ]
adcx rcx, r13
adcx r10, rbp
adcx r8, r14
mov r11, [ rsp + 0x60 ]
seto r13b
inc rdi
adox r11, [ rsp + 0x210 ]
mov r12, [ rsp + 0x208 ]
adox r12, [ rsp + 0x68 ]
adcx r15, rax
adox rbx, [ rsp + 0x80 ]
adox rcx, [ rsp + 0x78 ]
movzx r9, r13b
adcx r9, rdi
adox r10, [ rsp + 0xd8 ]
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx r14, rbp, r11
mov r13, rbp
clc
adcx r13, r14
adox r8, [ rsp + 0xd0 ]
mov rax, 0xfdc1767ae2ffffff 
mov rdx, rax
mulx rdi, rax, r11
mov rdx, rbp
adcx rdx, r14
adox r15, [ rsp + 0x108 ]
adcx rax, r14
adox r9, [ rsp + 0x150 ]
seto r14b
mov [ rsp + 0x220 ], r9
mov r9, -0x2 
inc r9
adox rbp, r11
adox r13, r12
adox rdx, rbx
adox rax, rcx
setc bpl
clc
adcx r13, [ rsp - 0x40 ]
adcx rdx, [ rsp - 0x8 ]
adcx rax, [ rsp + 0x48 ]
mov r12, 0x7bc65c783158aea3 
xchg rdx, r13
mulx rcx, rbx, r12
xchg rdx, r11
mov [ rsp + 0x228 ], rcx
mulx rcx, r9, r12
setc r12b
clc
mov [ rsp + 0x230 ], rbx
mov rbx, -0x1 
movzx rbp, bpl
adcx rbp, rbx
adcx rdi, r9
adox rdi, r10
mov r10, 0x6cfc5fd681c52056 
xchg rdx, r10
mulx r9, rbp, r11
mov [ rsp + 0x238 ], r9
mulx r9, rbx, r10
adcx rbx, rcx
adox rbx, r8
mov r8, 0x2341f27177344 
mov rdx, r10
mulx rcx, r10, r8
adcx r10, r9
movzx rdx, byte [ rsp + 0x178 ]
mov r9, [ rsp + 0x148 ]
lea rdx, [ rdx + r9 ]
mov r9, 0x0 
adcx rcx, r9
adox r10, r15
adox rcx, [ rsp + 0x220 ]
movzx r15, r14b
adox r15, r9
add r12b, 0xFF
adcx rdi, [ rsp + 0x40 ]
adcx rbx, [ rsp + 0x130 ]
adcx r10, [ rsp + 0x140 ]
adcx rcx, [ rsp + 0x138 ]
mov r14, 0xffffffffffffffff 
xchg rdx, r11
mulx r9, r12, r14
mov r8, r12
adox r8, rdx
adcx r11, r15
mov r8, r12
setc r15b
clc
adcx r8, r9
adox r8, r13
adcx r12, r9
adox r12, rax
mov r13, 0xfdc1767ae2ffffff 
mulx r14, rax, r13
adcx rax, r9
adox rax, rdi
adcx r14, [ rsp + 0x230 ]
adcx rbp, [ rsp + 0x228 ]
mov rdi, 0x2341f27177344 
mulx r13, r9, rdi
adcx r9, [ rsp + 0x238 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r8, [ rsp - 0x48 ]
adcx r12, [ rsp + 0x58 ]
adox r14, rbx
adox rbp, r10
adcx rax, [ rsp + 0x50 ]
adcx r14, [ rsp + 0x1b8 ]
adcx rbp, [ rsp + 0x198 ]
adox r9, rcx
adox r13, r11
movzx rbx, r15b
adox rbx, rdx
mov rdx, r8
mulx r10, r8, rdi
adcx r9, [ rsp + 0x1b0 ]
mov rcx, 0xffffffffffffffff 
mulx r11, r15, rcx
adcx r13, [ rsp + 0x1a8 ]
mov rdi, r15
mov rcx, -0x2 
inc rcx
adox rdi, r11
adcx rbx, [ rsp + 0x1a0 ]
mov rcx, r15
adox rcx, r11
mov [ rsp + 0x240 ], rbx
setc bl
clc
adcx r15, rdx
adcx rdi, r12
adcx rcx, rax
mov r15, 0xfdc1767ae2ffffff 
mulx rax, r12, r15
adox r12, r11
adcx r12, r14
mov r14, 0x7bc65c783158aea3 
mulx r15, r11, r14
adox r11, rax
adcx r11, rbp
mov rbp, 0x6cfc5fd681c52056 
mulx r14, rax, rbp
adox rax, r15
adox r8, r14
adcx rax, r9
mov rdx, 0x0 
adox r10, rdx
adcx r8, r13
adcx r10, [ rsp + 0x240 ]
setc r9b
mov r13, 0xffffffffffffffff 
mov r15, rdi
sub r15, r13
mov r14, rcx
sbb r14, r13
mov rdx, r12
sbb rdx, r13
mov rbp, 0xfdc1767ae2ffffff 
mov r13, r11
sbb r13, rbp
mov rbp, 0x7bc65c783158aea3 
mov [ rsp + 0x248 ], r14
mov r14, rax
sbb r14, rbp
mov rbp, 0x6cfc5fd681c52056 
mov [ rsp + 0x250 ], rdx
mov rdx, r8
sbb rdx, rbp
movzx rbp, r9b
movzx rbx, bl
lea rbp, [ rbp + rbx ]
mov rbx, 0x2341f27177344 
mov r9, r10
sbb r9, rbx
mov rbx, 0x0 
sbb rbp, rbx
cmovc r15, rdi
cmovc r9, r10
cmovc r13, r11
cmovc rdx, r8
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], r15
cmovc r14, rax
mov [ rbp + 0x20 ], r14
mov [ rbp + 0x30 ], r9
mov rdi, [ rsp + 0x250 ]
cmovc rdi, r12
mov [ rbp + 0x10 ], rdi
mov r12, [ rsp + 0x248 ]
cmovc r12, rcx
mov [ rbp + 0x8 ], r12
mov [ rbp + 0x28 ], rdx
mov [ rbp + 0x18 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 728
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6741
; seed 3914226480041095 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 11895171 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 236634 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.01989328274473734
; number reverted permutation / tried permutation: 79731 / 94611 =84.272%
; number reverted decision / tried decision: 69723 / 95388 =73.094%
; validated in 617.605s
