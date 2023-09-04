SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 728
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x30 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
add r10, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], r13
mulx r13, r10, [ rsi + 0x10 ]
adcx rdi, r11
adcx r10, r9
mov rdx, [ rax + 0x20 ]
mulx r9, r11, [ rsi + 0x10 ]
adcx r11, r13
adcx r14, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r11
mov [ rsp - 0x18 ], r10
mulx r10, r11, [ rax + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x10 ], rdi
mov [ rsp - 0x8 ], r8
mulx r8, rdi, [ rax + 0x10 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x0 ], rcx
mov [ rsp + 0x8 ], r12
mulx r12, rcx, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r11, r9
adcx rcx, r15
adox rbp, r10
mov r15, 0x0 
adcx r12, r15
clc
adcx r13, rbx
adcx rdi, r14
mov rdx, [ rsi + 0x30 ]
mulx r9, rbx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mulx r10, r14, [ rax + 0x20 ]
adcx rbx, r8
adcx r14, r9
mov rdx, [ rsi + 0x30 ]
mulx r9, r8, [ rax + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x10 ], r14
mulx r14, r15, [ rsi + 0x0 ]
adcx r8, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x18 ], r8
mulx r8, r10, [ rax + 0x0 ]
seto dl
mov [ rsp + 0x20 ], rbx
mov rbx, -0x2 
inc rbx
adox r15, r8
mov r8b, dl
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x28 ], rdi
mulx rdi, rbx, [ rsi + 0x30 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x30 ], r13
mov [ rsp + 0x38 ], rbp
mulx rbp, r13, r10
adcx rbx, r9
mov r9, r13
seto dl
mov [ rsp + 0x40 ], rbx
mov rbx, -0x2 
inc rbx
adox r9, rbp
mov bl, dl
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x48 ], r11
mov [ rsp + 0x50 ], r12
mulx r12, r11, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x58 ], r11
mov [ rsp + 0x60 ], rcx
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, r13
adox rdx, rbp
mov byte [ rsp + 0x68 ], r8b
setc r8b
clc
adcx r11, r12
setc r12b
clc
adcx r13, r10
adcx r9, r15
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r11
mulx r11, r15, [ rax + 0x18 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x78 ], rcx
mov byte [ rsp + 0x80 ], r12b
mulx r12, rcx, r10
movzx rdx, r8b
lea rdx, [ rdx + rdi ]
adox rcx, rbp
mov rdi, rdx
mov rdx, [ rax + 0x10 ]
mulx r8, rbp, [ rsi + 0x0 ]
seto dl
mov [ rsp + 0x88 ], rdi
mov rdi, 0x0 
dec rdi
movzx rbx, bl
adox rbx, rdi
adox r14, rbp
adox r15, r8
mov bl, dl
mov rdx, [ rsi + 0x0 ]
mulx r8, rbp, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x90 ], r12
mulx r12, rdi, [ rsi + 0x0 ]
adox rbp, r11
adcx r13, r14
adox rdi, r8
adcx rcx, r15
mov rdx, [ rsi + 0x8 ]
mulx r14, r11, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x98 ], rdi
mov [ rsp + 0xa0 ], rbp
mulx rbp, rdi, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov byte [ rsp + 0xa8 ], bl
mov [ rsp + 0xb0 ], rcx
mulx rcx, rbx, [ rsi + 0x28 ]
setc dl
clc
adcx r11, r8
setc r8b
clc
adcx r15, r9
adcx r11, r13
setc r9b
movzx r13, byte [ rsp + 0x80 ]
clc
mov byte [ rsp + 0xb8 ], dl
mov rdx, -0x1 
adcx r13, rdx
adcx rbx, [ rsp + 0x78 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xc0 ], rbx
mulx rbx, r13, [ rsi + 0x0 ]
adox r13, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], r13
mulx r13, r12, [ rax + 0x20 ]
adcx rdi, rcx
adcx r12, rbp
mov rdx, [ rsi + 0x28 ]
mulx rcx, rbp, [ rax + 0x30 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xd0 ], r12
mov [ rsp + 0xd8 ], rdi
mulx rdi, r12, [ rsi + 0x28 ]
adcx r12, r13
adcx rbp, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, r13, [ rax + 0x20 ]
mov rdx, 0x0 
adox rbx, rdx
adc rcx, 0x0
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xe0 ], rcx
mov [ rsp + 0xe8 ], rbp
mulx rbp, rcx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xf0 ], r12
mov [ rsp + 0xf8 ], rcx
mulx rcx, r12, [ rsi + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x100 ], rbx
mov [ rsp + 0x108 ], r11
mulx r11, rbx, [ rsi + 0x18 ]
add byte [ rsp + 0x68 ], 0xFF
adcx rbx, [ rsp + 0x8 ]
adox r12, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x110 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
adox rbp, rcx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x118 ], rbp
mulx rbp, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x120 ], rbx
mov [ rsp + 0x128 ], rbp
mulx rbp, rbx, [ rax + 0x18 ]
adox rbx, r12
adcx r13, r11
mov rdx, [ rax + 0x18 ]
mulx r12, r11, [ rsi + 0x8 ]
adcx rcx, rdi
adox rbp, [ rsp + 0x0 ]
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x130 ], rbp
mulx rbp, rdi, r10
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x138 ], rbx
mov [ rsp + 0x140 ], rcx
mulx rcx, rbx, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x148 ], r13
mov r13, 0x0 
dec r13
movzx r8, r8b
adox r8, r13
adox r14, rbx
setc r8b
clc
movzx r9, r9b
adcx r9, r13
adcx r14, [ rsp + 0xb0 ]
adox r11, rcx
mov r9, 0x2341f27177344 
xchg rdx, r10
mulx rcx, rbx, r9
mov r13, 0x7bc65c783158aea3 
mov [ rsp + 0x150 ], r11
mulx r11, r9, r13
seto dl
movzx r13, byte [ rsp + 0xa8 ]
mov byte [ rsp + 0x158 ], r8b
mov r8, 0x0 
dec r8
adox r13, r8
adox r9, [ rsp + 0x90 ]
adox rdi, r11
adox rbx, rbp
mov r13, 0xffffffffffffffff 
xchg rdx, r13
mulx r11, rbp, r15
mov r8, rbp
setc dl
clc
adcx r8, r15
mov r8, rbp
mov byte [ rsp + 0x160 ], dl
seto dl
mov [ rsp + 0x168 ], r12
mov r12, -0x2 
inc r12
adox r8, r11
movzx r12, dl
lea r12, [ r12 + rcx ]
adox rbp, r11
mov rcx, 0xfdc1767ae2ffffff 
mov rdx, r15
mov byte [ rsp + 0x170 ], r13b
mulx r13, r15, rcx
adox r15, r11
adcx r8, [ rsp + 0x108 ]
adcx rbp, r14
mov r14, 0x7bc65c783158aea3 
mulx rcx, r11, r14
adox r11, r13
mov r13, 0x6cfc5fd681c52056 
mov [ rsp + 0x178 ], r11
mulx r11, r14, r13
adox r14, rcx
mov rcx, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x180 ], r14
mulx r14, r13, [ rsi + 0x20 ]
setc dl
clc
mov [ rsp + 0x188 ], r15
mov r15, -0x1 
movzx r10, r10b
adcx r10, r15
adcx r13, [ rsp - 0x8 ]
mov r10b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x190 ], r13
mulx r13, r15, [ rax + 0x30 ]
adcx r15, r14
mov rdx, 0x2341f27177344 
mov [ rsp + 0x198 ], r15
mulx r15, r14, rcx
adox r14, r11
mov rcx, 0x0 
adox r15, rcx
adc r13, 0x0
add byte [ rsp + 0xb8 ], 0x7F
adox r9, [ rsp + 0xa0 ]
adox rdi, [ rsp + 0x98 ]
adcx r8, [ rsp - 0x38 ]
adox rbx, [ rsp + 0xc8 ]
adox r12, [ rsp + 0x100 ]
mov r11, 0xfdc1767ae2ffffff 
mov rdx, r8
mulx rcx, r8, r11
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x1a0 ], r13
mov [ rsp + 0x1a8 ], r15
mulx r15, r13, [ rax + 0x30 ]
adcx rbp, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x1b0 ], rbp
mov [ rsp + 0x1b8 ], r14
mulx r14, rbp, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x1c0 ], r10b
mov [ rsp + 0x1c8 ], rcx
mulx rcx, r10, [ rax + 0x20 ]
setc dl
mov [ rsp + 0x1d0 ], r8
movzx r8, byte [ rsp + 0x170 ]
clc
mov [ rsp + 0x1d8 ], r12
mov r12, -0x1 
adcx r8, r12
adcx r10, [ rsp + 0x168 ]
seto r8b
movzx r12, byte [ rsp + 0x158 ]
mov byte [ rsp + 0x1e0 ], dl
mov rdx, 0x0 
dec rdx
adox r12, rdx
adox r13, [ rsp + 0x128 ]
mov r12, 0xffffffffffffffff 
mov rdx, r11
mov [ rsp + 0x1e8 ], r13
mulx r13, r11, r12
adcx rbp, rcx
mov rcx, 0x0 
adox r15, rcx
mov r12, r11
mov [ rsp + 0x1f0 ], r15
mov r15, -0x3 
inc r15
adox r12, r13
seto cl
movzx r15, byte [ rsp + 0x160 ]
mov [ rsp + 0x1f8 ], r12
mov r12, 0x0 
dec r12
adox r15, r12
adox r9, [ rsp + 0x150 ]
adox r10, rdi
mov r15, rdx
mov rdx, [ rax + 0x30 ]
mulx r12, rdi, [ rsi + 0x8 ]
adcx rdi, r14
adox rbp, rbx
mov rdx, 0x0 
adcx r12, rdx
adox rdi, [ rsp + 0x1d8 ]
mov rbx, r13
clc
mov r14, -0x1 
movzx rcx, cl
adcx rcx, r14
adcx rbx, r11
movzx rcx, r8b
adox rcx, r12
mov r8, 0x7bc65c783158aea3 
mov rdx, r15
mulx r12, r15, r8
adcx r13, [ rsp + 0x1d0 ]
mov r14, 0x6cfc5fd681c52056 
mov [ rsp + 0x200 ], r13
mulx r13, r8, r14
adcx r15, [ rsp + 0x1c8 ]
adcx r8, r12
setc r12b
movzx r14, byte [ rsp + 0x1c0 ]
clc
mov [ rsp + 0x208 ], r13
mov r13, -0x1 
adcx r14, r13
adcx r9, [ rsp + 0x188 ]
adcx r10, [ rsp + 0x178 ]
adcx rbp, [ rsp + 0x180 ]
adcx rdi, [ rsp + 0x1b8 ]
adcx rcx, [ rsp + 0x1a8 ]
seto r14b
adc r14b, 0x0
movzx r14, r14b
add byte [ rsp + 0x1e0 ], 0x7F
adox r9, [ rsp - 0x10 ]
adcx r11, rdx
adox r10, [ rsp - 0x18 ]
adox rbp, [ rsp - 0x20 ]
mov r11, [ rsp + 0x1f8 ]
adcx r11, [ rsp + 0x1b0 ]
adcx rbx, r9
adcx r10, [ rsp + 0x200 ]
adox rdi, [ rsp - 0x28 ]
adox rcx, [ rsp + 0x60 ]
adcx r15, rbp
adcx r8, rdi
movzx r14, r14b
movzx r9, r14b
adox r9, [ rsp + 0x50 ]
setc r14b
clc
adcx r11, [ rsp - 0x30 ]
adcx rbx, [ rsp + 0x48 ]
mov rbp, 0xffffffffffffffff 
xchg rdx, r11
mulx r13, rdi, rbp
adcx r10, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x120 ]
adcx r8, [ rsp + 0x148 ]
mov rbp, rdi
mov [ rsp + 0x210 ], r9
setc r9b
clc
adcx rbp, r13
mov byte [ rsp + 0x218 ], r9b
mov r9, rdi
adcx r9, r13
mov [ rsp + 0x220 ], rcx
seto cl
mov byte [ rsp + 0x228 ], r14b
mov r14, -0x2 
inc r14
adox rdi, rdx
mov rdi, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x230 ], cl
mulx rcx, r14, rdi
adcx r14, r13
adox rbp, rbx
adox r9, r10
adox r14, r15
mov rbx, 0x7bc65c783158aea3 
mulx r10, r13, rbx
adcx r13, rcx
adox r13, r8
mov r15, 0x6cfc5fd681c52056 
mulx rcx, r8, r15
adcx r8, r10
mov r10, 0x2341f27177344 
xchg rdx, r10
mulx r15, rbx, r11
mulx rdi, r11, r10
adcx r11, rcx
mov r10, 0x0 
adcx rdi, r10
clc
mov rcx, -0x1 
movzx r12, r12b
adcx r12, rcx
adcx rbx, [ rsp + 0x208 ]
adcx r15, r10
movzx r12, byte [ rsp + 0x228 ]
clc
adcx r12, rcx
adcx rbx, [ rsp + 0x220 ]
adcx r15, [ rsp + 0x210 ]
movzx r12, byte [ rsp + 0x230 ]
adcx r12, r10
movzx r10, byte [ rsp + 0x218 ]
clc
adcx r10, rcx
adcx rbx, [ rsp + 0x140 ]
adox r8, rbx
adcx r15, [ rsp + 0x1e8 ]
adcx r12, [ rsp + 0x1f0 ]
adox r11, r15
adox rdi, r12
seto r10b
adc r10b, 0x0
movzx r10, r10b
adox rbp, [ rsp + 0xf8 ]
adox r9, [ rsp + 0x110 ]
adox r14, [ rsp + 0x118 ]
adox r13, [ rsp + 0x138 ]
adox r8, [ rsp + 0x130 ]
mov rbx, 0xffffffffffffffff 
mov rdx, rbp
mulx r15, rbp, rbx
adox r11, [ rsp + 0x190 ]
adox rdi, [ rsp + 0x198 ]
mov r12, rbp
adcx r12, rdx
movzx r10, r10b
movzx r12, r10b
adox r12, [ rsp + 0x1a0 ]
mov r10, rbp
seto cl
mov rbx, -0x2 
inc rbx
adox r10, r15
adcx r10, r9
adox rbp, r15
adcx rbp, r14
mov r9, 0xfdc1767ae2ffffff 
mulx rbx, r14, r9
adox r14, r15
adcx r14, r13
mov r13, 0x7bc65c783158aea3 
mulx r9, r15, r13
adox r15, rbx
adcx r15, r8
mov r8, 0x6cfc5fd681c52056 
mulx r13, rbx, r8
adox rbx, r9
adcx rbx, r11
mov r11, 0x2341f27177344 
mulx r8, r9, r11
adox r9, r13
adcx r9, rdi
mov rdx, 0x0 
adox r8, rdx
mov rdi, -0x3 
inc rdi
adox r10, [ rsp + 0x58 ]
adox rbp, [ rsp + 0x70 ]
adox r14, [ rsp + 0xc0 ]
adcx r8, r12
movzx r12, cl
adcx r12, rdx
adox r15, [ rsp + 0xd8 ]
adox rbx, [ rsp + 0xd0 ]
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r13, rcx, r10
adox r9, [ rsp + 0xf0 ]
mov rdi, rcx
clc
adcx rdi, r10
adox r8, [ rsp + 0xe8 ]
adox r12, [ rsp + 0xe0 ]
mov rdi, rcx
seto r11b
mov rdx, -0x2 
inc rdx
adox rdi, r13
adox rcx, r13
adcx rdi, rbp
adcx rcx, r14
mov rbp, 0xfdc1767ae2ffffff 
mov rdx, r10
mulx r14, r10, rbp
adox r10, r13
adcx r10, r15
mov r15, 0x7bc65c783158aea3 
mulx rbp, r13, r15
adox r13, r14
adcx r13, rbx
mov rbx, 0x6cfc5fd681c52056 
mulx r15, r14, rbx
adox r14, rbp
adcx r14, r9
mov r9, 0x2341f27177344 
mulx rbx, rbp, r9
adox rbp, r15
mov rdx, 0x0 
adox rbx, rdx
adcx rbp, r8
adcx rbx, r12
movzx r8, r11b
adc r8, 0x0
test al, al
adox rdi, [ rsp - 0x48 ]
adox rcx, [ rsp + 0x30 ]
adox r10, [ rsp + 0x28 ]
adox r13, [ rsp + 0x20 ]
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx r12, r11, rdi
mov r15, r11
adcx r15, r12
mov rdx, r11
adcx rdx, r12
adox r14, [ rsp + 0x10 ]
adox rbp, [ rsp + 0x18 ]
adox rbx, [ rsp + 0x40 ]
adox r8, [ rsp + 0x88 ]
seto r9b
mov [ rsp + 0x238 ], r8
mov r8, -0x2 
inc r8
adox r11, rdi
adox r15, rcx
adox rdx, r10
mov r11, 0xfdc1767ae2ffffff 
xchg rdx, rdi
mulx r10, rcx, r11
adcx rcx, r12
adox rcx, r13
mov r13, 0x7bc65c783158aea3 
mulx r8, r12, r13
adcx r12, r10
adox r12, r14
mov r14, 0x6cfc5fd681c52056 
mulx r13, r10, r14
adcx r10, r8
mov r8, 0x2341f27177344 
mulx r11, r14, r8
adcx r14, r13
adox r10, rbp
mov rdx, 0x0 
adcx r11, rdx
adox r14, rbx
adox r11, [ rsp + 0x238 ]
movzx rbp, r9b
adox rbp, rdx
mov rbx, 0xffffffffffffffff 
mov r9, r15
sub r9, rbx
mov r13, rdi
sbb r13, rbx
mov rdx, rcx
sbb rdx, rbx
mov rbx, 0xfdc1767ae2ffffff 
mov r8, r12
sbb r8, rbx
mov rbx, 0x7bc65c783158aea3 
mov [ rsp + 0x240 ], r13
mov r13, r10
sbb r13, rbx
mov rbx, 0x6cfc5fd681c52056 
mov [ rsp + 0x248 ], r13
mov r13, r14
sbb r13, rbx
mov rbx, 0x2341f27177344 
mov [ rsp + 0x250 ], r9
mov r9, r11
sbb r9, rbx
mov rbx, 0x0 
sbb rbp, rbx
cmovc rdx, rcx
cmovc r13, r14
cmovc r8, r12
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x10 ], rdx
mov rcx, [ rsp + 0x250 ]
cmovc rcx, r15
cmovc r9, r11
mov [ rbp + 0x0 ], rcx
mov [ rbp + 0x30 ], r9
mov r15, [ rsp + 0x248 ]
cmovc r15, r10
mov [ rbp + 0x20 ], r15
mov [ rbp + 0x28 ], r13
mov r12, [ rsp + 0x240 ]
cmovc r12, rdi
mov [ rbp + 0x18 ], r8
mov [ rbp + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 728
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.6911
; seed 3158470928549648 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 12139541 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 254695 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02098061203467248
; number reverted permutation / tried permutation: 81940 / 94913 =86.332%
; number reverted decision / tried decision: 70882 / 95086 =74.545%
; validated in 448.021s
