SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 864
mov rdx, [ rsi + 0x28 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rax
mulx rax, rdi, [ rsi + 0x20 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x40 ], rcx
mov [ rsp - 0x38 ], r11
mulx r11, rcx, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], r12
mulx r12, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], rax
mov [ rsp - 0x18 ], rdi
mulx rdi, rax, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], rdi
mov [ rsp - 0x8 ], rax
mulx rax, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x0 ], r11
mov [ rsp + 0x8 ], r12
mulx r12, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x10 ], r11
mov [ rsp + 0x18 ], r13
mulx r13, r11, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x20 ], r13
mov [ rsp + 0x28 ], r11
mulx r11, r13, [ rsi + 0x28 ]
add r14, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x30 ], r11
mulx r11, rbp, [ rsi + 0x10 ]
adcx rbp, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r13
mulx r13, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], rbp
mov [ rsp + 0x48 ], r14
mulx r14, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], rcx
mov [ rsp + 0x58 ], r9
mulx r9, rcx, [ rsi + 0x20 ]
mov rdx, -0x2 
inc rdx
adox r15, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], r15
mulx r15, r10, [ rsi + 0x18 ]
adox rbp, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], rbp
mulx rbp, r13, [ rsi + 0x0 ]
adox r10, r14
adox rdi, r15
adcx r13, r11
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x70 ], rdi
mulx rdi, r15, rdx
adox r15, rax
adcx rcx, rbp
adcx r11, r9
mov rdx, [ rsi + 0x8 ]
mulx r9, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], r15
mulx r15, rbp, [ rsi + 0x30 ]
adcx rbp, r14
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x80 ], r10
mulx r10, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x88 ], r14
mov [ rsp + 0x90 ], r10
mulx r10, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x98 ], rbp
mov [ rsp + 0xa0 ], r11
mulx r11, rbp, [ rsi + 0x28 ]
mov rdx, 0x0 
adcx r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa8 ], r15
mov [ rsp + 0xb0 ], rcx
mulx rcx, r15, rdx
clc
adcx r15, r12
adcx r14, rcx
adcx rax, r10
adcx r8, r9
adox rbp, rdi
mov rdx, [ rsi + 0x28 ]
mulx rdi, r12, [ rsi + 0x8 ]
adcx r12, [ rsp + 0x58 ]
mov rdx, [ rsi + 0x8 ]
mulx r10, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xb8 ], rbp
mulx rbp, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc0 ], r12
mov [ rsp + 0xc8 ], r8
mulx r8, r12, [ rsi + 0x0 ]
adcx rcx, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], r12
mulx r12, rdi, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd8 ], rcx
mov [ rsp + 0xe0 ], rax
mulx rax, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xe8 ], r14
mov [ rsp + 0xf0 ], r15
mulx r15, r14, [ rsi + 0x10 ]
seto dl
mov [ rsp + 0xf8 ], rax
mov rax, -0x2 
inc rax
adox r9, r8
movzx r8, dl
lea r8, [ r8 + r11 ]
adox r14, r10
adox rdi, r15
mov r11, 0x6cfc5fd681c52056 
mov rdx, rbx
mulx r10, rbx, r11
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, rax, rdx
adox rcx, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x100 ], r8
mulx r8, r12, [ rsi + 0x0 ]
mov rdx, r15
mov [ rsp + 0x108 ], rcx
seto cl
mov [ rsp + 0x110 ], rdi
mov rdi, -0x2 
inc rdi
adox rdx, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x118 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r8, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x120 ], r9
mov [ rsp + 0x128 ], rbp
mulx rbp, r9, [ rsi + 0x18 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x130 ], r8
mov [ rsp + 0x138 ], r12
mulx r12, r8, r15
adcx rax, [ rsp + 0x8 ]
adcx r9, r11
adcx rdi, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbp, r11, [ rsi + 0x10 ]
adcx r11, r14
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x140 ], rbp
mulx rbp, r14, r15
mov rdx, [ rsp + 0x50 ]
mov [ rsp + 0x148 ], r11
mov r11, rdx
mov [ rsp + 0x150 ], rdi
setc dil
clc
adcx r11, [ rsp + 0x0 ]
adox r11, [ rsp + 0x48 ]
adcx rdx, [ rsp + 0x0 ]
adcx r8, [ rsp + 0x0 ]
adcx r14, r12
adox rdx, [ rsp + 0x40 ]
adcx rbx, rbp
mov r12, rdx
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x158 ], dil
mulx rdi, rbp, [ rsi + 0x20 ]
mov rdx, 0x2341f27177344 
mov [ rsp + 0x160 ], r9
mov [ rsp + 0x168 ], rax
mulx rax, r9, r15
adcx r9, r10
mov r15, 0x0 
adcx rax, r15
adox r8, r13
adox r14, [ rsp + 0xb0 ]
adox rbx, [ rsp + 0xa0 ]
mov rdx, [ rsi + 0x0 ]
mulx r10, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x170 ], r13
mulx r13, r15, [ rsi + 0x18 ]
clc
adcx rbp, r10
adcx rdi, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x178 ], rdi
mulx rdi, r10, [ rsi + 0x30 ]
adox r9, [ rsp + 0x98 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x180 ], rbp
mov [ rsp + 0x188 ], rdi
mulx rdi, rbp, [ rsi + 0x18 ]
adox rax, [ rsp + 0xa8 ]
seto dl
mov [ rsp + 0x190 ], rax
mov rax, 0x0 
dec rax
movzx rcx, cl
adox rcx, rax
adox rbp, [ rsp + 0xf8 ]
adox r10, rdi
seto cl
inc rax
adox r11, [ rsp + 0x10 ]
adox r12, [ rsp + 0xf0 ]
mov rdi, 0x7bc65c783158aea3 
xchg rdx, rdi
mov [ rsp + 0x198 ], r10
mulx r10, rax, r11
mov rdx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1a0 ], cl
mov [ rsp + 0x1a8 ], rbp
mulx rbp, rcx, r11
adox r8, [ rsp + 0xe8 ]
adcx r15, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x1b0 ], r15
mov byte [ rsp + 0x1b8 ], dil
mulx rdi, r15, rdx
adcx r15, r13
adox r14, [ rsp + 0xe0 ]
adox rbx, [ rsp + 0xc8 ]
adox r9, [ rsp + 0xc0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x1c0 ], r15
mulx r15, r13, [ rsi + 0x18 ]
adcx rdi, [ rsp + 0x38 ]
mov rdx, [ rsp - 0x8 ]
adcx rdx, [ rsp + 0x30 ]
mov [ rsp + 0x1c8 ], rdi
mov rdi, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x1d0 ], r9
mov [ rsp + 0x1d8 ], r10
mulx r10, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x1e0 ], rdi
mov [ rsp + 0x1e8 ], rbx
mulx rbx, rdi, [ rsi + 0x28 ]
mov rdx, [ rsp - 0x10 ]
mov [ rsp + 0x1f0 ], r14
mov r14, 0x0 
adcx rdx, r14
mov r14, [ rsp + 0x190 ]
adox r14, [ rsp + 0xd8 ]
clc
adcx r9, [ rsp + 0x90 ]
adcx r10, [ rsp - 0x28 ]
adcx r13, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
mov [ rsp + 0x1f8 ], rdi
mov rdi, 0xffffffffffffffff 
xchg rdx, rdi
mov [ rsp + 0x200 ], r15
mov [ rsp + 0x208 ], r13
mulx r13, r15, r11
mov rdx, r15
mov [ rsp + 0x210 ], r10
setc r10b
clc
adcx rdx, r13
mov [ rsp + 0x218 ], r9
seto r9b
mov [ rsp + 0x220 ], rdi
mov rdi, 0x0 
dec rdi
movzx r10, r10b
adox r10, rdi
adox rbx, [ rsp + 0x28 ]
mov r10, r15
adcx r10, r13
adcx rcx, r13
adcx rax, rbp
seto bpl
inc rdi
adox r15, r11
adox rdx, r12
adox r10, r8
mov r15, 0x6cfc5fd681c52056 
xchg rdx, r11
mulx r8, r12, r15
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, rdi, [ rsi + 0x30 ]
adox rcx, [ rsp + 0x1f0 ]
movzx rdx, bpl
mov [ rsp + 0x228 ], rbx
mov rbx, [ rsp + 0x20 ]
lea rdx, [ rdx + rbx ]
adox rax, [ rsp + 0x1e8 ]
adcx r12, [ rsp + 0x1d8 ]
adox r12, [ rsp + 0x1d0 ]
mov rbx, 0x2341f27177344 
xchg rdx, rbx
mov [ rsp + 0x230 ], rbx
mulx rbx, rbp, r13
adcx rbp, r8
mov r13, 0x0 
adcx rbx, r13
clc
adcx r11, [ rsp + 0x138 ]
adcx r10, [ rsp + 0x130 ]
adcx rcx, [ rsp + 0x168 ]
adcx rax, [ rsp + 0x160 ]
mov r8, 0xfdc1767ae2ffffff 
mov rdx, r8
mulx r13, r8, r11
movzx rdx, byte [ rsp + 0x1b8 ]
mov [ rsp + 0x238 ], r15
setc r15b
clc
mov [ rsp + 0x240 ], rdi
mov rdi, -0x1 
movzx r9, r9b
adcx r9, rdi
adcx rdx, [ rsp + 0x128 ]
setc r9b
clc
movzx r15, r15b
adcx r15, rdi
adcx r12, [ rsp + 0x150 ]
adox rbp, r14
mov r14, 0xffffffffffffffff 
xchg rdx, r14
mulx rdi, r15, r11
adox rbx, r14
movzx r14, r9b
mov rdx, 0x0 
adox r14, rdx
mov r9, r15
mov [ rsp + 0x248 ], r14
mov r14, -0x3 
inc r14
adox r9, rdi
mov rdx, r15
adox rdx, rdi
adox r8, rdi
seto dil
inc r14
adox r15, r11
adox r9, r10
adox rdx, rcx
adox r8, rax
mov r15, 0x7bc65c783158aea3 
xchg rdx, r11
mulx rcx, r10, r15
setc al
clc
movzx rdi, dil
adcx rdi, r14
adcx r13, r10
adox r13, r12
seto r12b
inc r14
adox r9, [ rsp + 0xd0 ]
mov rdi, 0x6cfc5fd681c52056 
mulx r14, r10, rdi
adcx r10, rcx
adox r11, [ rsp + 0x120 ]
adox r8, [ rsp + 0x118 ]
mov rcx, 0x2341f27177344 
mulx rdi, r15, rcx
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x250 ], r8
mulx r8, rcx, r9
adcx r15, r14
seto r14b
mov rdx, 0x0 
dec rdx
movzx rax, al
adox rax, rdx
adox rbp, [ rsp + 0x148 ]
mov rax, [ rsp + 0x140 ]
setc dl
mov [ rsp + 0x258 ], r8
movzx r8, byte [ rsp + 0x158 ]
clc
mov [ rsp + 0x260 ], rcx
mov rcx, -0x1 
adcx r8, rcx
adcx rax, [ rsp + 0x240 ]
adox rax, rbx
mov r8, [ rsp + 0x238 ]
mov rbx, 0x0 
adcx r8, rbx
movzx rbx, dl
lea rbx, [ rbx + rdi ]
adox r8, [ rsp + 0x248 ]
clc
movzx r12, r12b
adcx r12, rcx
adcx rbp, r10
seto r12b
inc rcx
mov r10, -0x1 
movzx r14, r14b
adox r14, r10
adox r13, [ rsp + 0x110 ]
adcx r15, rax
adox rbp, [ rsp + 0x108 ]
adcx rbx, r8
mov r14, 0xffffffffffffffff 
mov rdx, r9
mulx rdi, r9, r14
adox r15, [ rsp + 0x1a8 ]
mov rax, r9
setc r8b
clc
adcx rax, rdi
mov rcx, r9
adcx rcx, rdi
movzx r10, r8b
movzx r12, r12b
lea r10, [ r10 + r12 ]
mov r12, 0xfdc1767ae2ffffff 
mulx r14, r8, r12
adcx r8, rdi
seto dil
mov r12, -0x2 
inc r12
adox r9, rdx
adox rax, r11
adox rcx, [ rsp + 0x250 ]
adox r8, r13
mov r9, 0x7bc65c783158aea3 
mulx r13, r11, r9
adcx r11, r14
movzx r14, byte [ rsp + 0x1a0 ]
mov r12, [ rsp + 0x188 ]
lea r14, [ r14 + r12 ]
adox r11, rbp
adcx r13, [ rsp + 0x260 ]
setc r12b
clc
adcx rax, [ rsp + 0x170 ]
adcx rcx, [ rsp + 0x180 ]
mov rbp, 0xfdc1767ae2ffffff 
xchg rdx, rbp
mov [ rsp + 0x268 ], rcx
mulx rcx, r9, rax
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x270 ], rcx
mov [ rsp + 0x278 ], r11
mulx r11, rcx, rax
mov rdx, 0x2341f27177344 
mov [ rsp + 0x280 ], r11
mov [ rsp + 0x288 ], rcx
mulx rcx, r11, rbp
setc bpl
clc
mov rdx, -0x1 
movzx r12, r12b
adcx r12, rdx
adcx r11, [ rsp + 0x258 ]
adox r13, r15
setc r15b
clc
movzx rdi, dil
adcx rdi, rdx
adcx rbx, [ rsp + 0x198 ]
adox r11, rbx
mov rdi, 0xffffffffffffffff 
mov rdx, rax
mulx r12, rax, rdi
movzx rbx, r15b
lea rbx, [ rbx + rcx ]
adcx r14, r10
mov r10, rax
setc cl
clc
adcx r10, r12
mov r15, rax
adcx r15, r12
adox rbx, r14
adcx r9, r12
movzx r12, cl
mov r14, 0x0 
adox r12, r14
dec r14
movzx rbp, bpl
adox rbp, r14
adox r8, [ rsp + 0x178 ]
mov rbp, [ rsp + 0x278 ]
adox rbp, [ rsp + 0x1b0 ]
mov rcx, 0x7bc65c783158aea3 
mulx rdi, r14, rcx
adox r13, [ rsp + 0x1c0 ]
adcx r14, [ rsp + 0x270 ]
adcx rdi, [ rsp + 0x288 ]
setc cl
clc
adcx rax, rdx
adcx r10, [ rsp + 0x268 ]
adox r11, [ rsp + 0x1c8 ]
adox rbx, [ rsp + 0x1e0 ]
adcx r15, r8
seto al
mov r8, -0x2 
inc r8
adox r10, [ rsp - 0x48 ]
mov r8, 0xffffffffffffffff 
xchg rdx, r8
mov [ rsp + 0x290 ], rbx
mov [ rsp + 0x298 ], rdi
mulx rdi, rbx, r10
adcx r9, rbp
adcx r14, r13
mov rbp, 0x2341f27177344 
mov rdx, rbp
mulx r13, rbp, r10
mov [ rsp + 0x2a0 ], r13
mov [ rsp + 0x2a8 ], rbp
mulx rbp, r13, r8
adox r15, [ rsp + 0x60 ]
setc r8b
clc
mov rdx, -0x1 
movzx rcx, cl
adcx rcx, rdx
adcx r13, [ rsp + 0x280 ]
setc cl
clc
movzx rax, al
adcx rax, rdx
adcx r12, [ rsp + 0x220 ]
adox r9, [ rsp + 0x68 ]
adox r14, [ rsp + 0x80 ]
setc al
clc
movzx r8, r8b
adcx r8, rdx
adcx r11, [ rsp + 0x298 ]
adcx r13, [ rsp + 0x290 ]
adox r11, [ rsp + 0x70 ]
movzx r8, cl
lea r8, [ r8 + rbp ]
adcx r8, r12
movzx rbp, al
mov rcx, 0x0 
adcx rbp, rcx
adox r13, [ rsp + 0x78 ]
adox r8, [ rsp + 0xb8 ]
mov r12, rbx
clc
adcx r12, rdi
mov rax, rbx
adcx rax, rdi
adox rbp, [ rsp + 0x100 ]
mov rcx, 0xfdc1767ae2ffffff 
mov rdx, r10
mov [ rsp + 0x2b0 ], rbp
mulx rbp, r10, rcx
seto cl
mov [ rsp + 0x2b8 ], r8
mov r8, -0x2 
inc r8
adox rbx, rdx
adcx r10, rdi
adox r12, r15
mov rbx, 0x7bc65c783158aea3 
mulx r15, rdi, rbx
adcx rdi, rbp
adox rax, r9
mov r9, 0x6cfc5fd681c52056 
mulx r8, rbp, r9
adox r10, r14
adox rdi, r11
adcx rbp, r15
adcx r8, [ rsp + 0x2a8 ]
mov rdx, [ rsp + 0x2a0 ]
mov r14, 0x0 
adcx rdx, r14
clc
adcx r12, [ rsp + 0x88 ]
adox rbp, r13
adox r8, [ rsp + 0x2b8 ]
adox rdx, [ rsp + 0x2b0 ]
mov r11, 0xfdc1767ae2ffffff 
xchg rdx, r11
mulx r15, r13, r12
adcx rax, [ rsp + 0x218 ]
adcx r10, [ rsp + 0x210 ]
mov rdx, r12
mulx r14, r12, rbx
movzx rbx, cl
mov r9, 0x0 
adox rbx, r9
adcx rdi, [ rsp + 0x208 ]
adcx rbp, [ rsp + 0x200 ]
adcx r8, [ rsp + 0x1f8 ]
adcx r11, [ rsp + 0x228 ]
mov rcx, 0xffffffffffffffff 
mov [ rsp + 0x2c0 ], r11
mulx r11, r9, rcx
mov rcx, r9
mov [ rsp + 0x2c8 ], rbx
mov rbx, -0x2 
inc rbx
adox rcx, rdx
mov rcx, r9
setc bl
clc
adcx rcx, r11
adcx r9, r11
adox rcx, rax
adcx r13, r11
adcx r12, r15
adox r9, r10
mov r15, 0x6cfc5fd681c52056 
mulx r10, rax, r15
adcx rax, r14
mov r14, 0x2341f27177344 
mulx r15, r11, r14
adcx r11, r10
mov rdx, 0x0 
adcx r15, rdx
adox r13, rdi
adox r12, rbp
adox rax, r8
mov rdi, [ rsp + 0x2c8 ]
clc
mov rbp, -0x1 
movzx rbx, bl
adcx rbx, rbp
adcx rdi, [ rsp + 0x230 ]
adox r11, [ rsp + 0x2c0 ]
adox r15, rdi
seto r8b
setc bl
mov r10, 0xffffffffffffffff 
mov rdi, rcx
sub rdi, r10
mov rdx, r9
sbb rdx, r10
mov rbp, r13
sbb rbp, r10
mov r10, 0xfdc1767ae2ffffff 
mov r14, r12
sbb r14, r10
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0x2d0 ], rbp
mov rbp, rax
sbb rbp, r10
mov r10, 0x6cfc5fd681c52056 
mov [ rsp + 0x2d8 ], r14
mov r14, r11
sbb r14, r10
movzx r10, r8b
movzx rbx, bl
lea r10, [ r10 + rbx ]
mov rbx, 0x2341f27177344 
mov r8, r15
sbb r8, rbx
mov rbx, 0x0 
sbb r10, rbx
cmovc rbp, rax
cmovc rdi, rcx
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x20 ], rbp
cmovc r14, r11
cmovc rdx, r9
mov rcx, [ rsp + 0x2d8 ]
cmovc rcx, r12
mov [ r10 + 0x8 ], rdx
mov [ r10 + 0x18 ], rcx
mov [ r10 + 0x28 ], r14
cmovc r8, r15
mov r9, [ rsp + 0x2d0 ]
cmovc r9, r13
mov [ r10 + 0x10 ], r9
mov [ r10 + 0x30 ], r8
mov [ r10 + 0x0 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 864
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6606
; seed 2182081560371142 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8024085 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=21, initial num_batches=31): 159488 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.019876160334792066
; number reverted permutation / tried permutation: 70126 / 95036 =73.789%
; number reverted decision / tried decision: 66098 / 94963 =69.604%
; validated in 357.266s
