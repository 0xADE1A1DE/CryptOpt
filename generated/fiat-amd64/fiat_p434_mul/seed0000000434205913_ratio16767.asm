SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 752
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], r12
mulx r12, r10, [ rsi + 0x28 ]
add r10, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x38 ], r10
mulx r10, r11, [ rax + 0x10 ]
adcx r11, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r11
mulx r11, r12, [ rax + 0x18 ]
adcx r12, r10
adcx rcx, r11
adcx r15, r8
mov rdx, [ rsi + 0x28 ]
mulx r10, r8, [ rax + 0x30 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x28 ], r15
mulx r15, r11, [ rsi + 0x0 ]
mov rdx, 0x2341f27177344 
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], r12
mulx r12, rcx, r11
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x10 ], r12
mov [ rsp - 0x8 ], rbp
mulx rbp, r12, r11
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x0 ], rbx
mov [ rsp + 0x8 ], r15
mulx r15, rbx, r11
adcx r8, rdi
adc r10, 0x0
mov rdi, r12
test al, al
adox rdi, rbp
mov rdx, r12
adox rdx, rbp
adox rbx, rbp
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x10 ], r10
mov [ rsp + 0x18 ], r8
mulx r8, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x20 ], rbx
mov [ rsp + 0x28 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
adcx r10, rbp
adcx r13, r8
mov rdx, [ rsi + 0x10 ]
mulx rbp, r8, [ rax + 0x0 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x30 ], r13
mov [ rsp + 0x38 ], r10
mulx r10, r13, r11
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x40 ], rbx
mov [ rsp + 0x48 ], r8
mulx r8, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], rdi
mov [ rsp + 0x58 ], rcx
mulx rcx, rdi, [ rax + 0x18 ]
adcx r9, r14
setc dl
clc
adcx rbx, rbp
mov r14, 0x6cfc5fd681c52056 
xchg rdx, r11
mov [ rsp + 0x60 ], r9
mulx r9, rbp, r14
adox r13, r15
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x68 ], rbx
mulx rbx, r14, [ rax + 0x0 ]
adox rbp, r10
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x70 ], r14
mulx r14, r10, [ rsi + 0x10 ]
adcx r10, r8
adcx rdi, r14
mov rdx, [ rax + 0x8 ]
mulx r14, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], rdi
mov [ rsp + 0x80 ], r10
mulx r10, rdi, [ rax + 0x10 ]
adox r9, [ rsp + 0x58 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x88 ], r9
mov [ rsp + 0x90 ], rbp
mulx rbp, r9, [ rax + 0x8 ]
seto dl
mov byte [ rsp + 0x98 ], r11b
mov r11, -0x2 
inc r11
adox r8, rbx
mov bl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r8
mulx r8, r11, [ rax + 0x28 ]
mov rdx, [ rax + 0x18 ]
mov byte [ rsp + 0xa8 ], bl
mov [ rsp + 0xb0 ], r8
mulx r8, rbx, [ rsi + 0x20 ]
adox rdi, r14
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xb8 ], rdi
mulx rdi, r14, [ rax + 0x0 ]
adox rbx, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xc0 ], r14
mulx r14, r10, [ rax + 0x20 ]
adox r10, r8
adox r11, r14
seto dl
mov r8, -0x2 
inc r8
adox r9, rdi
mov dil, dl
mov rdx, [ rax + 0x10 ]
mulx r8, r14, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], r9
mov [ rsp + 0xd0 ], r11
mulx r11, r9, [ rax + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], r10
mov [ rsp + 0xe0 ], rbx
mulx rbx, r10, [ rax + 0x20 ]
adox r14, rbp
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xe8 ], r14
mulx r14, rbp, [ rsi + 0x30 ]
adox rbp, r8
adox r9, r14
mov rdx, [ rsi + 0x30 ]
mulx r14, r8, [ rax + 0x28 ]
adcx r10, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xf0 ], r9
mulx r9, rcx, [ rax + 0x28 ]
adcx rcx, rbx
adox r8, r11
mov rdx, [ rax + 0x30 ]
mulx rbx, r11, [ rsi + 0x10 ]
adcx r11, r9
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xf8 ], r8
mulx r8, r9, [ rsi + 0x30 ]
adox r9, r14
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x100 ], r9
mulx r9, r14, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x108 ], rbp
mov [ rsp + 0x110 ], r11
mulx r11, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x118 ], rcx
mov [ rsp + 0x120 ], r10
mulx r10, rcx, [ rax + 0x10 ]
mov rdx, 0x0 
adcx rbx, rdx
adox r8, rdx
mov [ rsp + 0x128 ], r8
xor r8, r8
adox r14, [ rsp + 0x8 ]
adox rcx, r9
adox rbp, r10
adcx r12, r15
adcx r14, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x28 ]
adcx rbp, [ rsp + 0x20 ]
mov rdx, [ rax + 0x20 ]
mulx r15, r12, [ rsi + 0x0 ]
adox r12, r11
mov rdx, [ rax + 0x10 ]
mulx r11, r9, [ rsi + 0x8 ]
adcx r13, r12
mov rdx, [ rax + 0x8 ]
mulx r12, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x130 ], rbx
mulx rbx, r8, [ rax + 0x0 ]
seto dl
mov [ rsp + 0x138 ], r15
mov r15, -0x2 
inc r15
adox r10, rbx
setc bl
clc
adcx r8, r14
mov r14b, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x140 ], r8
mulx r8, r15, [ rax + 0x18 ]
adox r9, r12
adox r15, r11
mov rdx, [ rsi + 0x18 ]
mulx r12, r11, [ rax + 0x20 ]
adcx r10, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x148 ], r10
mulx r10, rcx, [ rax + 0x20 ]
adcx r9, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x150 ], r10
mulx r10, rbp, [ rax + 0x30 ]
adcx r15, r13
adox rcx, r8
seto dl
mov r13, 0x0 
dec r13
movzx rdi, dil
adox rdi, r13
adox rbp, [ rsp + 0xb0 ]
setc dil
movzx r8, byte [ rsp + 0x98 ]
clc
adcx r8, r13
adcx r11, [ rsp + 0x0 ]
mov r8b, dl
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x158 ], rbp
mulx rbp, r13, [ rsi + 0x18 ]
adcx r13, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x160 ], r13
mulx r13, r12, [ rax + 0x28 ]
adcx rbp, [ rsp - 0x8 ]
setc dl
clc
mov [ rsp + 0x168 ], rbp
mov rbp, -0x1 
movzx r14, r14b
adcx r14, rbp
adcx r12, [ rsp + 0x138 ]
mov r14b, dl
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x170 ], r11
mulx r11, rbp, [ rsi + 0x0 ]
adcx rbp, r13
mov rdx, 0x0 
adox r10, rdx
movzx r13, byte [ rsp + 0xa8 ]
mov rdx, [ rsp - 0x10 ]
lea r13, [ r13 + rdx ]
adc r11, 0x0
movzx rdx, r14b
add rdx, [ rsp - 0x40 ]
add bl, 0x7F
adox r12, [ rsp + 0x90 ]
mov rbx, 0xffffffffffffffff 
mov r14, rdx
mov rdx, [ rsp + 0x140 ]
mov [ rsp + 0x178 ], r10
mov byte [ rsp + 0x180 ], r8b
mulx r8, r10, rbx
adox rbp, [ rsp + 0x88 ]
mov rbx, -0x1 
movzx rdi, dil
adcx rdi, rbx
adcx r12, rcx
mov rdi, 0xfdc1767ae2ffffff 
mulx rbx, rcx, rdi
mov rdi, r10
mov [ rsp + 0x188 ], r14
setc r14b
clc
adcx rdi, r8
mov [ rsp + 0x190 ], rbp
mov rbp, r10
adcx rbp, r8
adox r13, r11
mov r11, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x198 ], r13
mov byte [ rsp + 0x1a0 ], r14b
mulx r14, r13, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x1a8 ], r14
mov r14, -0x2 
inc r14
adox r10, r11
adox rdi, [ rsp + 0x148 ]
adox rbp, r9
mov r10, 0x7bc65c783158aea3 
xchg rdx, r11
mulx r14, r9, r10
adcx rcx, r8
adox rcx, r15
mov r15, 0x6cfc5fd681c52056 
mulx r10, r8, r15
adcx r9, rbx
adcx r8, r14
mov rbx, 0x2341f27177344 
mulx r15, r14, rbx
adcx r14, r10
adox r9, r12
mov rdx, [ rax + 0x30 ]
mulx r10, r12, [ rsi + 0x8 ]
setc dl
movzx rbx, byte [ rsp + 0x180 ]
clc
mov [ rsp + 0x1b0 ], r14
mov r14, -0x1 
adcx rbx, r14
adcx r13, [ rsp + 0x150 ]
adcx r12, [ rsp + 0x1a8 ]
movzx rbx, dl
lea rbx, [ rbx + r15 ]
mov r15, 0x0 
adcx r10, r15
clc
adcx rdi, [ rsp + 0x48 ]
adcx rbp, [ rsp + 0x68 ]
seto dl
movzx r15, byte [ rsp + 0x1a0 ]
inc r14
mov r14, -0x1 
adox r15, r14
adox r13, [ rsp + 0x190 ]
adox r12, [ rsp + 0x198 ]
adcx rcx, [ rsp + 0x80 ]
mov r15, 0xfdc1767ae2ffffff 
xchg rdx, r15
mov [ rsp + 0x1b8 ], rbx
mulx rbx, r14, rdi
movzx rdx, r11b
adox rdx, r10
adcx r9, [ rsp + 0x78 ]
mov r11, 0xffffffffffffffff 
xchg rdx, rdi
mov [ rsp + 0x1c0 ], rbx
mulx rbx, r10, r11
mov r11, r10
mov [ rsp + 0x1c8 ], r9
setc r9b
clc
adcx r11, rbx
mov byte [ rsp + 0x1d0 ], r9b
mov r9, r10
adcx r9, rbx
adcx r14, rbx
setc bl
clc
adcx r10, rdx
adcx r11, rbp
adcx r9, rcx
seto r10b
mov rbp, 0x0 
dec rbp
movzx r15, r15b
adox r15, rbp
adox r13, r8
adox r12, [ rsp + 0x1b0 ]
adox rdi, [ rsp + 0x1b8 ]
adcx r14, [ rsp + 0x1c8 ]
setc r8b
movzx r15, byte [ rsp + 0x1d0 ]
clc
adcx r15, rbp
adcx r13, [ rsp + 0x120 ]
adcx r12, [ rsp + 0x118 ]
adcx rdi, [ rsp + 0x110 ]
seto cl
inc rbp
adox r11, [ rsp + 0x40 ]
adox r9, [ rsp + 0x38 ]
adox r14, [ rsp + 0x30 ]
movzx r15, cl
movzx r10, r10b
lea r15, [ r15 + r10 ]
adcx r15, [ rsp + 0x130 ]
mov r10, 0x2341f27177344 
mulx rbp, rcx, r10
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0x1d8 ], r15
mov [ rsp + 0x1e0 ], rdi
mulx rdi, r15, r10
mov r10, 0x6cfc5fd681c52056 
mov [ rsp + 0x1e8 ], r12
mov [ rsp + 0x1f0 ], rbp
mulx rbp, r12, r10
setc dl
clc
mov r10, -0x1 
movzx rbx, bl
adcx rbx, r10
adcx r15, [ rsp + 0x1c0 ]
adcx r12, rdi
adcx rcx, rbp
mov rbx, 0xffffffffffffffff 
xchg rdx, rbx
mulx rbp, rdi, r11
mov r10, rdi
seto dl
mov byte [ rsp + 0x1f8 ], bl
mov rbx, -0x2 
inc rbx
adox r10, r11
mov r10, rdi
setc bl
clc
adcx r10, rbp
adox r10, r9
adcx rdi, rbp
adox rdi, r14
seto r9b
mov r14, 0x0 
dec r14
movzx r8, r8b
adox r8, r14
adox r13, r15
movzx r8, bl
mov r15, [ rsp + 0x1f0 ]
lea r8, [ r8 + r15 ]
mov r15, 0x7bc65c783158aea3 
xchg rdx, r11
mulx r14, rbx, r15
adox r12, [ rsp + 0x1e8 ]
mov r15, 0xfdc1767ae2ffffff 
mov [ rsp + 0x200 ], r14
mov byte [ rsp + 0x208 ], r9b
mulx r9, r14, r15
adox rcx, [ rsp + 0x1e0 ]
adcx r14, rbp
adox r8, [ rsp + 0x1d8 ]
setc bpl
clc
adcx r10, [ rsp + 0x70 ]
movzx r15, byte [ rsp + 0x1f8 ]
mov [ rsp + 0x210 ], r10
mov r10, 0x0 
adox r15, r10
adcx rdi, [ rsp + 0xa0 ]
dec r10
movzx r11, r11b
adox r11, r10
adox r13, [ rsp + 0x60 ]
adox r12, [ rsp + 0x170 ]
adox rcx, [ rsp + 0x160 ]
adox r8, [ rsp + 0x168 ]
adox r15, [ rsp + 0x188 ]
setc r11b
clc
movzx rbp, bpl
adcx rbp, r10
adcx r9, rbx
seto bl
movzx rbp, byte [ rsp + 0x208 ]
inc r10
mov r10, -0x1 
adox rbp, r10
adox r13, r14
adox r9, r12
mov rbp, 0x6cfc5fd681c52056 
mulx r12, r14, rbp
adcx r14, [ rsp + 0x200 ]
adox r14, rcx
mov rcx, 0x2341f27177344 
mulx rbp, r10, rcx
adcx r10, r12
adox r10, r8
mov rdx, 0x0 
adcx rbp, rdx
adox rbp, r15
movzx r8, bl
adox r8, rdx
add r11b, 0xFF
adcx r13, [ rsp + 0xb8 ]
adcx r9, [ rsp + 0xe0 ]
adcx r14, [ rsp + 0xd8 ]
adcx r10, [ rsp + 0xd0 ]
mov r11, 0xffffffffffffffff 
mov rdx, [ rsp + 0x210 ]
mulx r15, rbx, r11
adcx rbp, [ rsp + 0x158 ]
mov r12, rbx
adox r12, rdx
adcx r8, [ rsp + 0x178 ]
mov r12, rbx
setc cl
clc
adcx r12, r15
adcx rbx, r15
adox r12, rdi
adox rbx, r13
mov rdi, 0x7bc65c783158aea3 
mulx r11, r13, rdi
mov rdi, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x218 ], cl
mov [ rsp + 0x220 ], r8
mulx r8, rcx, rdi
adcx rcx, r15
adcx r13, r8
adox rcx, r9
adox r13, r14
mov r9, 0x6cfc5fd681c52056 
mulx r15, r14, r9
adcx r14, r11
setc r11b
clc
adcx r12, [ rsp - 0x48 ]
adcx rbx, [ rsp - 0x38 ]
adcx rcx, [ rsp - 0x30 ]
adox r14, r10
xchg rdx, rdi
mulx r8, r10, r12
adcx r13, [ rsp - 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x228 ], rbp
mulx rbp, r9, r12
adcx r14, [ rsp - 0x20 ]
mov rdx, r9
mov [ rsp + 0x230 ], r15
setc r15b
clc
adcx rdx, r12
mov rdx, r9
mov byte [ rsp + 0x238 ], r15b
seto r15b
mov byte [ rsp + 0x240 ], r11b
mov r11, -0x2 
inc r11
adox rdx, rbp
adox r9, rbp
adcx rdx, rbx
adcx r9, rcx
adox r10, rbp
adcx r10, r13
mov rbx, 0x7bc65c783158aea3 
xchg rdx, r12
mulx r13, rcx, rbx
mov rbp, 0x6cfc5fd681c52056 
mulx rbx, r11, rbp
adox rcx, r8
adcx rcx, r14
adox r11, r13
mov r8, 0x2341f27177344 
mulx r13, r14, r8
adox r14, rbx
mov rdx, rdi
mulx rbx, rdi, r8
seto dl
movzx r8, byte [ rsp + 0x240 ]
mov rbp, 0x0 
dec rbp
adox r8, rbp
adox rdi, [ rsp + 0x230 ]
setc r8b
clc
movzx r15, r15b
adcx r15, rbp
adcx rdi, [ rsp + 0x228 ]
mov r15, 0x0 
adox rbx, r15
adcx rbx, [ rsp + 0x220 ]
movzx r15, byte [ rsp + 0x218 ]
adc r15, 0x0
add byte [ rsp + 0x238 ], 0x7F
adox rdi, [ rsp - 0x28 ]
adox rbx, [ rsp + 0x18 ]
adox r15, [ rsp + 0x10 ]
movzx r8, r8b
adcx r8, rbp
adcx rdi, r11
adcx r14, rbx
seto r8b
inc rbp
adox r12, [ rsp + 0xc0 ]
adox r9, [ rsp + 0xc8 ]
movzx r11, dl
lea r11, [ r11 + r13 ]
adox r10, [ rsp + 0xe8 ]
adcx r11, r15
adox rcx, [ rsp + 0x108 ]
adox rdi, [ rsp + 0xf0 ]
movzx r13, r8b
adcx r13, rbp
mov rdx, 0xffffffffffffffff 
mulx r8, rbx, r12
adox r14, [ rsp + 0xf8 ]
adox r11, [ rsp + 0x100 ]
mov r15, rbx
clc
adcx r15, r12
adox r13, [ rsp + 0x128 ]
mov r15, rbx
seto dl
mov [ rsp + 0x248 ], r13
mov r13, -0x3 
inc r13
adox r15, r8
adcx r15, r9
adox rbx, r8
adcx rbx, r10
mov r9, 0x7bc65c783158aea3 
xchg rdx, r12
mulx rbp, r10, r9
mov r13, 0xfdc1767ae2ffffff 
mov [ rsp + 0x250 ], rbx
mulx rbx, r9, r13
adox r9, r8
adox r10, rbx
adcx r9, rcx
mov rcx, 0x6cfc5fd681c52056 
mulx rbx, r8, rcx
adox r8, rbp
adcx r10, rdi
mov rdi, 0x2341f27177344 
mulx rcx, rbp, rdi
adox rbp, rbx
adcx r8, r14
mov rdx, 0x0 
adox rcx, rdx
adcx rbp, r11
adcx rcx, [ rsp + 0x248 ]
movzx r14, r12b
adc r14, 0x0
mov r11, 0xffffffffffffffff 
mov r12, r15
sub r12, r11
mov rbx, [ rsp + 0x250 ]
mov rdx, rbx
sbb rdx, r11
mov rdi, r9
sbb rdi, r11
mov r11, r10
sbb r11, r13
mov r13, 0x7bc65c783158aea3 
mov [ rsp + 0x258 ], rdx
mov rdx, r8
sbb rdx, r13
mov r13, 0x6cfc5fd681c52056 
mov [ rsp + 0x260 ], rdx
mov rdx, rbp
sbb rdx, r13
mov r13, 0x2341f27177344 
mov [ rsp + 0x268 ], rdx
mov rdx, rcx
sbb rdx, r13
mov r13, 0x0 
sbb r14, r13
cmovc r12, r15
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], r12
cmovc r11, r10
cmovc rdi, r9
mov [ r14 + 0x18 ], r11
cmovc rdx, rcx
mov r15, [ rsp + 0x268 ]
cmovc r15, rbp
mov [ r14 + 0x30 ], rdx
mov [ r14 + 0x28 ], r15
mov r9, [ rsp + 0x258 ]
cmovc r9, rbx
mov [ r14 + 0x8 ], r9
mov [ r14 + 0x10 ], rdi
mov rbx, [ rsp + 0x260 ]
cmovc rbx, r8
mov [ r14 + 0x20 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 752
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6767
; seed 4475300765732640 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 12266124 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 242716 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.019787505816833417
; number reverted permutation / tried permutation: 81171 / 95148 =85.310%
; number reverted decision / tried decision: 70983 / 94851 =74.836%
; validated in 636.006s
