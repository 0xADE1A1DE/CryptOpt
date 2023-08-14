SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 760
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
xor rdx, rdx
adox rbp, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x10 ]
adox r14, r12
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r12, [ rsi + 0x30 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], rcx
mov [ rsp - 0x40 ], r14
mulx r14, rcx, [ rsi + 0x8 ]
adcx r10, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rbp
mulx rbp, r14, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], r10
mulx r10, r13, [ rax + 0x20 ]
adox r14, r15
adox r13, rbp
adcx r9, r11
mov rdx, [ rax + 0x18 ]
mulx r15, r11, [ rsi + 0x8 ]
adcx r11, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbp, rbx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r13
mov [ rsp - 0x18 ], r14
mulx r14, r13, [ rax + 0x20 ]
adcx r13, r15
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], r13
mulx r13, r15, [ rsi + 0x30 ]
adox rbx, r10
seto dl
mov r10, -0x2 
inc r10
adox r15, r8
adox r12, r13
mov r8b, dl
mov rdx, [ rax + 0x30 ]
mulx r10, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r12
mov [ rsp + 0x0 ], r15
mulx r15, r12, [ rax + 0x28 ]
adcx r12, r14
adcx r13, r15
mov rdx, [ rsi + 0x30 ]
mulx r15, r14, [ rax + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x8 ], rbx
mov [ rsp + 0x10 ], r13
mulx r13, rbx, [ rax + 0x30 ]
adox r14, rdi
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x18 ], r14
mulx r14, rdi, [ rax + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x20 ], r12
mov [ rsp + 0x28 ], r11
mulx r11, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r12
mov [ rsp + 0x38 ], r9
mulx r9, r12, [ rax + 0x8 ]
mov rdx, 0x0 
adcx r10, rdx
clc
adcx r12, r11
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r12
mulx r12, r11, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], r10
mov [ rsp + 0x50 ], rcx
mulx rcx, r10, [ rax + 0x10 ]
adcx r10, r9
adox r11, r15
adox rdi, r12
adox rbx, r14
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rax + 0x18 ]
adcx r15, rcx
mov rdx, [ rax + 0x0 ]
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x58 ], rbx
mulx rbx, rcx, r9
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x60 ], rdi
mov [ rsp + 0x68 ], r11
mulx r11, rdi, r9
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x70 ], r15
mov [ rsp + 0x78 ], r10
mulx r10, r15, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x80 ], r13
mov [ rsp + 0x88 ], r10
mulx r10, r13, [ rax + 0x30 ]
mov rdx, 0x0 
dec rdx
movzx r8, r8b
adox r8, rdx
adox rbp, r13
mov rdx, [ rsi + 0x28 ]
mulx r13, r8, [ rax + 0x8 ]
adcx r15, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x90 ], r15
mulx r15, r14, [ rsi + 0x28 ]
mov rdx, 0x0 
adox r10, rdx
mov [ rsp + 0x98 ], r14
mov r14, -0x3 
inc r14
adox r8, r15
mov r15, rcx
setc r14b
clc
adcx r15, rbx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xa0 ], r8
mov [ rsp + 0xa8 ], r10
mulx r10, r8, [ rsi + 0x28 ]
adox r8, r13
mov rdx, rcx
adcx rdx, rbx
adcx rdi, rbx
mov rbx, rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb0 ], r8
mulx r8, r13, [ rsi + 0x28 ]
adox r13, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xb8 ], r13
mulx r13, r10, [ rax + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc0 ], rbp
mov [ rsp + 0xc8 ], r13
mulx r13, rbp, [ rax + 0x8 ]
adox r10, r8
setc dl
clc
adcx rcx, r9
seto cl
mov r8, -0x2 
inc r8
adox rbp, r12
adcx r15, rbp
mov r12b, dl
mov rdx, [ rax + 0x10 ]
mulx r8, rbp, [ rsi + 0x0 ]
adox rbp, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xd0 ], r10
mulx r10, r13, [ rax + 0x18 ]
adox r13, r8
adcx rbx, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, r8, [ rax + 0x20 ]
mov rdx, 0x7bc65c783158aea3 
mov byte [ rsp + 0xd8 ], cl
mov byte [ rsp + 0xe0 ], r14b
mulx r14, rcx, r9
adox r8, r10
adcx rdi, r13
mov r10, 0x2341f27177344 
mov rdx, r9
mulx r13, r9, r10
setc r10b
clc
adcx r15, [ rsp + 0x50 ]
adcx rbx, [ rsp - 0x28 ]
mov [ rsp + 0xe8 ], rbx
setc bl
clc
mov [ rsp + 0xf0 ], rdi
mov rdi, -0x1 
movzx r12, r12b
adcx r12, rdi
adcx r11, rcx
mov r12, 0x6cfc5fd681c52056 
mulx rdi, rcx, r12
mov rdx, [ rsi + 0x0 ]
mov byte [ rsp + 0xf8 ], bl
mulx rbx, r12, [ rax + 0x28 ]
adcx rcx, r14
adox r12, rbp
mov rdx, [ rax + 0x30 ]
mulx r14, rbp, [ rsi + 0x0 ]
adox rbp, rbx
adcx r9, rdi
mov rdx, [ rax + 0x18 ]
mulx rbx, rdi, [ rsi + 0x20 ]
mov rdx, 0x0 
adcx r13, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], r13
mov [ rsp + 0x108 ], r9
mulx r9, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x110 ], rbp
mov [ rsp + 0x118 ], rcx
mulx rcx, rbp, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x120 ], rbp
mov [ rsp + 0x128 ], r12
mulx r12, rbp, r15
mov rdx, 0x0 
adox r14, rdx
mov [ rsp + 0x130 ], r14
mov r14, rbp
mov [ rsp + 0x138 ], r11
xor r11, r11
adox r14, r12
mov rdx, rbp
adox rdx, r12
adcx r13, rcx
mov rcx, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x140 ], r13
mulx r13, r11, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x148 ], rcx
mov [ rsp + 0x150 ], r14
mulx r14, rcx, [ rsi + 0x20 ]
adcx rcx, r9
adcx rdi, r14
mov rdx, 0xfdc1767ae2ffffff 
mulx r14, r9, r15
adcx r11, rbx
mov rbx, 0x7bc65c783158aea3 
mov rdx, r15
mov [ rsp + 0x158 ], r11
mulx r11, r15, rbx
adox r9, r12
adox r15, r14
mov r12, 0x6cfc5fd681c52056 
mulx rbx, r14, r12
adox r14, r11
mov r11, 0x2341f27177344 
mov [ rsp + 0x160 ], rdi
mulx rdi, r12, r11
adox r12, rbx
mov rbx, 0x0 
adox rdi, rbx
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x168 ], rcx
mulx rcx, r11, [ rax + 0x28 ]
movzx rdx, byte [ rsp + 0xe0 ]
mov [ rsp + 0x170 ], rdi
mov rdi, 0x0 
dec rdi
adox rdx, rdi
adox r11, [ rsp + 0x88 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x178 ], r11
mulx r11, rdi, [ rax + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x180 ], r12
mov [ rsp + 0x188 ], r14
mulx r14, r12, [ rax + 0x28 ]
adox rdi, rcx
seto dl
movzx rcx, byte [ rsp + 0xd8 ]
mov [ rsp + 0x190 ], rdi
mov rdi, 0x0 
dec rdi
adox rcx, rdi
adox r12, [ rsp + 0xc8 ]
mov cl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x198 ], r12
mulx r12, rdi, [ rax + 0x28 ]
adcx rdi, r13
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x1a0 ], rdi
mulx rdi, r13, [ rsi + 0x20 ]
adcx r13, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x1a8 ], r13
mulx r13, r12, [ rax + 0x30 ]
adox r12, r14
mov rdx, 0x0 
adcx rdi, rdx
adox r13, rdx
add r10b, 0x7F
adox r8, [ rsp + 0x138 ]
mov r10, [ rsp + 0x128 ]
adox r10, [ rsp + 0x118 ]
mov r14, [ rsp + 0x110 ]
adox r14, [ rsp + 0x108 ]
mov rdx, [ rsp + 0xf0 ]
mov [ rsp + 0x1b0 ], r13
movzx r13, byte [ rsp + 0xf8 ]
mov [ rsp + 0x1b8 ], r12
mov r12, -0x1 
adcx r13, r12
adcx rdx, [ rsp + 0x38 ]
adcx r8, [ rsp + 0x28 ]
movzx r13, cl
lea r13, [ r13 + r11 ]
adcx r10, [ rsp - 0x10 ]
adcx r14, [ rsp + 0x20 ]
mov r11, [ rsp + 0x130 ]
adox r11, [ rsp + 0x100 ]
adcx r11, [ rsp + 0x10 ]
seto cl
movzx rcx, cl
adcx rcx, [ rsp + 0x48 ]
inc r12
adox rbp, rbx
mov rbp, [ rsp + 0xe8 ]
adox rbp, [ rsp + 0x150 ]
adox rdx, [ rsp + 0x148 ]
adox r9, r8
adox r15, r10
setc bl
clc
adcx rbp, [ rsp - 0x30 ]
adox r14, [ rsp + 0x188 ]
adox r11, [ rsp + 0x180 ]
adcx rdx, [ rsp - 0x38 ]
adox rcx, [ rsp + 0x170 ]
adcx r9, [ rsp - 0x40 ]
adcx r15, [ rsp - 0x18 ]
adcx r14, [ rsp - 0x20 ]
adcx r11, [ rsp + 0x8 ]
adcx rcx, [ rsp + 0xc0 ]
mov r8, 0xffffffffffffffff 
xchg rdx, rbp
mulx r12, r10, r8
mov r8, r10
mov [ rsp + 0x1c0 ], rdi
setc dil
clc
adcx r8, rdx
movzx r8, bl
mov [ rsp + 0x1c8 ], r13
mov r13, 0x0 
adox r8, r13
mov rbx, r10
mov [ rsp + 0x1d0 ], r8
mov r8, -0x3 
inc r8
adox rbx, r12
adcx rbx, rbp
adox r10, r12
mov rbp, 0xfdc1767ae2ffffff 
mulx r8, r13, rbp
adox r13, r12
adcx r10, r9
mov r9, 0x7bc65c783158aea3 
mulx rbp, r12, r9
adox r12, r8
adcx r13, r15
mov r15, 0x6cfc5fd681c52056 
mulx r9, r8, r15
adox r8, rbp
adcx r12, r14
mov r14, 0x2341f27177344 
mulx r15, rbp, r14
adcx r8, r11
adox rbp, r9
seto dl
mov r11, -0x2 
inc r11
adox rbx, [ rsp + 0x30 ]
adox r10, [ rsp + 0x40 ]
adox r13, [ rsp + 0x78 ]
adox r12, [ rsp + 0x70 ]
adox r8, [ rsp + 0x90 ]
mov r9, 0xffffffffffffffff 
xchg rdx, rbx
mulx r14, r11, r9
movzx r9, bl
lea r9, [ r9 + r15 ]
mov r15, r11
seto bl
mov [ rsp + 0x1d8 ], r8
mov r8, -0x2 
inc r8
adox r15, rdx
mov r15, r11
setc r8b
clc
adcx r15, r14
adcx r11, r14
mov byte [ rsp + 0x1e0 ], bl
mov rbx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1e8 ], r9
mov byte [ rsp + 0x1f0 ], dil
mulx rdi, r9, rbx
adcx r9, r14
adox r15, r10
mov r10, 0x7bc65c783158aea3 
mulx rbx, r14, r10
adcx r14, rdi
adox r11, r13
adox r9, r12
mov r13, 0x6cfc5fd681c52056 
mulx rdi, r12, r13
adcx r12, rbx
mov rbx, 0x2341f27177344 
mulx r10, r13, rbx
adcx r13, rdi
mov rdx, 0x0 
adcx r10, rdx
clc
adcx r15, [ rsp + 0x120 ]
mov rdi, 0x6cfc5fd681c52056 
mov rdx, r15
mulx rbx, r15, rdi
adcx r11, [ rsp + 0x140 ]
mov rdi, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1f8 ], r11
mov [ rsp + 0x200 ], r10
mulx r10, r11, rdi
mov rdi, 0xffffffffffffffff 
mov [ rsp + 0x208 ], r13
mov [ rsp + 0x210 ], r12
mulx r12, r13, rdi
adcx r9, [ rsp + 0x168 ]
mov rdi, r13
mov [ rsp + 0x218 ], r9
setc r9b
clc
adcx rdi, r12
mov byte [ rsp + 0x220 ], r9b
mov r9, r13
adcx r9, r12
adcx r11, r12
mov r12, 0x7bc65c783158aea3 
mov [ rsp + 0x228 ], r11
mov [ rsp + 0x230 ], r9
mulx r9, r11, r12
adcx r11, r10
adcx r15, r9
mov r10, 0x2341f27177344 
mulx r12, r9, r10
adcx r9, rbx
seto bl
mov r10, 0x0 
dec r10
movzx r8, r8b
adox r8, r10
adox rcx, rbp
mov r8, 0x0 
adcx r12, r8
mov rbp, [ rsp + 0x1d0 ]
movzx r8, byte [ rsp + 0x1f0 ]
clc
adcx r8, r10
adcx rbp, [ rsp + 0xa8 ]
adox rbp, [ rsp + 0x1e8 ]
seto r8b
adc r8b, 0x0
movzx r8, r8b
add byte [ rsp + 0x1e0 ], 0x7F
adox rcx, [ rsp + 0x178 ]
adox rbp, [ rsp + 0x190 ]
movzx rbx, bl
adcx rbx, r10
adcx r14, [ rsp + 0x1d8 ]
adcx rcx, [ rsp + 0x210 ]
movzx r8, r8b
movzx rbx, r8b
adox rbx, [ rsp + 0x1c8 ]
adcx rbp, [ rsp + 0x208 ]
adcx rbx, [ rsp + 0x200 ]
seto r8b
adc r8b, 0x0
movzx r8, r8b
adox r13, rdx
adox rdi, [ rsp + 0x1f8 ]
mov r13, [ rsp + 0x218 ]
adox r13, [ rsp + 0x230 ]
movzx rdx, byte [ rsp + 0x220 ]
adcx rdx, r10
adcx r14, [ rsp + 0x160 ]
adcx rcx, [ rsp + 0x158 ]
adcx rbp, [ rsp + 0x1a0 ]
adcx rbx, [ rsp + 0x1a8 ]
adox r14, [ rsp + 0x228 ]
adox r11, rcx
movzx r8, r8b
movzx rdx, r8b
adcx rdx, [ rsp + 0x1c0 ]
adox r15, rbp
adox r9, rbx
setc r8b
clc
adcx rdi, [ rsp + 0x98 ]
adcx r13, [ rsp + 0xa0 ]
adcx r14, [ rsp + 0xb0 ]
adox r12, rdx
adcx r11, [ rsp + 0xb8 ]
mov rcx, 0xffffffffffffffff 
mov rdx, rdi
mulx rbp, rdi, rcx
movzx rbx, r8b
mov r10, 0x0 
adox rbx, r10
mov r8, rdi
mov rcx, -0x3 
inc rcx
adox r8, rbp
adcx r15, [ rsp + 0xd0 ]
adcx r9, [ rsp + 0x198 ]
adcx r12, [ rsp + 0x1b8 ]
adcx rbx, [ rsp + 0x1b0 ]
mov rcx, rdi
mov [ rsp + 0x238 ], rbx
setc bl
clc
adcx rcx, rdx
adox rdi, rbp
adcx r8, r13
adcx rdi, r14
mov rcx, 0xfdc1767ae2ffffff 
mulx r14, r13, rcx
adox r13, rbp
adcx r13, r11
mov r11, 0x7bc65c783158aea3 
mulx r10, rbp, r11
adox rbp, r14
adcx rbp, r15
mov r15, 0x6cfc5fd681c52056 
mulx r11, r14, r15
adox r14, r10
adcx r14, r9
mov r9, 0x2341f27177344 
mulx r15, r10, r9
adox r10, r11
mov rdx, 0x0 
adox r15, rdx
mov r11, -0x3 
inc r11
adox r8, [ rsp - 0x48 ]
adox rdi, [ rsp + 0x0 ]
mov rdx, r8
mulx r11, r8, r9
adox r13, [ rsp - 0x8 ]
mov [ rsp + 0x240 ], r11
mulx r11, r9, rcx
adox rbp, [ rsp + 0x18 ]
adox r14, [ rsp + 0x68 ]
adcx r10, r12
adcx r15, [ rsp + 0x238 ]
adox r10, [ rsp + 0x60 ]
movzx r12, bl
mov rcx, 0x0 
adcx r12, rcx
adox r15, [ rsp + 0x58 ]
mov rbx, 0xffffffffffffffff 
mov [ rsp + 0x248 ], r15
mulx r15, rcx, rbx
mov rbx, rcx
clc
adcx rbx, r15
mov [ rsp + 0x250 ], r8
mov r8, rcx
adcx r8, r15
adox r12, [ rsp + 0x80 ]
adcx r9, r15
setc r15b
clc
adcx rcx, rdx
adcx rbx, rdi
adcx r8, r13
adcx r9, rbp
seto cl
setc dil
mov r13, 0xffffffffffffffff 
mov rbp, rbx
sub rbp, r13
mov [ rsp + 0x258 ], rbp
mov rbp, r8
sbb rbp, r13
mov [ rsp + 0x260 ], rbp
mov rbp, r9
sbb rbp, r13
mov r13, 0x7bc65c783158aea3 
mov [ rsp + 0x268 ], rbp
mov byte [ rsp + 0x270 ], cl
mulx rcx, rbp, r13
mov r13, 0x0 
dec r13
movzx r15, r15b
adox r15, r13
adox r11, rbp
setc r15b
clc
movzx rdi, dil
adcx rdi, r13
adcx r14, r11
mov rdi, 0x6cfc5fd681c52056 
mulx r11, rbp, rdi
adox rbp, rcx
adcx rbp, r10
adox r11, [ rsp + 0x250 ]
mov rdx, [ rsp + 0x240 ]
mov r10, 0x0 
adox rdx, r10
adcx r11, [ rsp + 0x248 ]
adcx rdx, r12
movzx r12, byte [ rsp + 0x270 ]
adc r12, 0x0
add r13b, r15b
mov r13, 0xfdc1767ae2ffffff 
mov rcx, r14
sbb rcx, r13
mov r15, 0x7bc65c783158aea3 
mov r10, rbp
sbb r10, r15
mov r15, r11
sbb r15, rdi
mov rdi, 0x2341f27177344 
mov r13, rdx
sbb r13, rdi
mov rdi, 0x0 
sbb r12, rdi
mov r12, [ rsp + 0x268 ]
cmovc r12, r9
mov r9, [ rsp + 0x258 ]
cmovc r9, rbx
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x0 ], r9
cmovc rcx, r14
cmovc r15, r11
mov [ rbx + 0x18 ], rcx
cmovc r13, rdx
mov [ rbx + 0x30 ], r13
mov [ rbx + 0x10 ], r12
mov r14, [ rsp + 0x260 ]
cmovc r14, r8
cmovc r10, rbp
mov [ rbx + 0x20 ], r10
mov [ rbx + 0x28 ], r15
mov [ rbx + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 760
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6208
; seed 3023899171612516 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 12763679 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=17, initial num_batches=31): 256608 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.020104548226259844
; number reverted permutation / tried permutation: 79532 / 95025 =83.696%
; number reverted decision / tried decision: 68678 / 94974 =72.312%
; validated in 578.229s
