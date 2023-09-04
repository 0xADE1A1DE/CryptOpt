SECTION .text
	GLOBAL fiat_p434_square
fiat_p434_square:
sub rsp, 792
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x30 ]
test al, al
adox rax, r9
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x60 ], r14
mulx r14, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r15
mulx r15, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], rax
mulx rax, rbx, [ rsi + 0x8 ]
adcx rbx, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rbx
mulx rbx, rbp, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r8
mov [ rsp - 0x18 ], rcx
mulx rcx, r8, [ rsi + 0x28 ]
seto dl
mov [ rsp - 0x10 ], r14
mov r14, -0x2 
inc r14
adox r8, r15
adox rbp, rcx
mov r15b, dl
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, [ rsi + 0x18 ]
adox rcx, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, rbx, [ rsi + 0x18 ]
adcx rbx, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], rbp
mulx rbp, rax, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r8
mov [ rsp + 0x10 ], rbx
mulx rbx, r8, [ rsi + 0x20 ]
adox r8, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x18 ], r8
mulx r8, r14, [ rsi + 0x18 ]
adox rax, rbx
adox r12, rbp
adcx r11, rcx
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r12
mulx r12, rbx, rdx
mov rdx, 0x0 
adox r13, rdx
dec rdx
movzx r15, r15b
adox r15, rdx
adox r10, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r15, [ rsi + 0x30 ]
adox r14, rbp
setc dl
clc
adcx rbx, rdi
mov dil, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x28 ], r13
mulx r13, rbp, [ rsi + 0x8 ]
adcx rbp, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], rax
mulx rax, r12, [ rsi + 0x8 ]
adcx r12, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r11
mulx r11, r13, [ rsi + 0x8 ]
adcx r13, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], r13
mulx r13, rax, [ rsi + 0x8 ]
adcx rax, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x48 ], rax
mulx rax, r11, [ rsi + 0x20 ]
adox r11, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], r12
mulx r12, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x58 ], rbp
mov [ rsp + 0x60 ], r11
mulx r11, rbp, [ rsi + 0x0 ]
adox r8, rax
adcx r15, r13
mov rdx, [ rsi + 0x0 ]
mulx rax, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], rbp
mov [ rsp + 0x70 ], r13
mulx r13, rbp, [ rsi + 0x30 ]
setc dl
clc
adcx r9, r11
mov r11b, dl
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x78 ], r9
mov [ rsp + 0x80 ], r15
mulx r15, r9, [ rsi + 0x10 ]
adcx r9, [ rsp - 0x10 ]
adcx rbp, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x88 ], rbp
mulx rbp, r15, [ rsi + 0x8 ]
movzx rdx, r11b
lea rdx, [ rdx + rcx ]
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r9
mulx r9, r11, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x98 ], rcx
mov [ rsp + 0xa0 ], r8
mulx r8, rcx, rdx
adcx r11, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa8 ], r11
mulx r11, r13, [ rsi + 0x30 ]
adox r13, r12
setc dl
clc
adcx r15, rax
adcx rcx, rbp
mov r12, 0x0 
adox r11, r12
mov al, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, 0x0 
dec rdx
movzx rdi, dil
adox rdi, rdx
adox rbp, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], rbp
mulx rbp, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xb8 ], rcx
mov [ rsp + 0xc0 ], r15
mulx r15, rcx, [ rsi + 0x18 ]
adox rdi, r12
adox rcx, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbp, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], rcx
mov [ rsp + 0xd0 ], rdi
mulx rdi, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], r11
mov [ rsp + 0xe0 ], r13
mulx r13, r11, [ rsi + 0x18 ]
adcx r11, r8
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe8 ], r11
mulx r11, r8, [ rsi + 0x10 ]
adcx r8, r13
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xf0 ], r8
mulx r8, r13, [ rsp - 0x20 ]
adcx r12, r11
adcx rcx, rbp
mov rdx, [ rsi + 0x20 ]
mulx r11, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf8 ], rcx
mov [ rsp + 0x100 ], r12
mulx r12, rcx, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x108 ], r15
mov [ rsp + 0x110 ], r14
mulx r14, r15, [ rsi + 0x20 ]
adc rdi, 0x0
mov rdx, r13
add rdx, [ rsp - 0x20 ]
mov rdx, r13
mov [ rsp + 0x118 ], r15
mov r15, -0x2 
inc r15
adox rdx, r8
adcx rdx, [ rsp - 0x30 ]
adox r13, r8
adcx r13, r10
setc r10b
clc
adcx rcx, r14
adcx rbp, r12
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x120 ], rbp
mov [ rsp + 0x128 ], rcx
mulx rcx, rbp, [ rsi + 0x28 ]
adcx r14, r11
setc dl
clc
mov r11, -0x1 
movzx rax, al
adcx rax, r11
adcx r9, rbp
setc al
clc
adcx r12, [ rsp - 0x40 ]
mov rbp, 0xfdc1767ae2ffffff 
xchg rdx, rbp
mov [ rsp + 0x130 ], r9
mulx r9, r11, r12
adcx rbx, r13
mov [ rsp + 0x138 ], rcx
mulx rcx, r13, [ rsp - 0x20 ]
mov rdx, 0xffffffffffffffff 
mov byte [ rsp + 0x140 ], al
mov [ rsp + 0x148 ], r14
mulx r14, rax, r12
adox r13, r8
mov r8, rax
setc dl
clc
adcx r8, r14
mov [ rsp + 0x150 ], rdi
mov rdi, rax
adcx rdi, r14
adcx r11, r14
mov r14, 0x6cfc5fd681c52056 
xchg rdx, r14
mov [ rsp + 0x158 ], r15
mov byte [ rsp + 0x160 ], bpl
mulx rbp, r15, [ rsp - 0x20 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x168 ], r11
mov [ rsp + 0x170 ], rdi
mulx rdi, r11, [ rsp - 0x20 ]
adox r11, rcx
adox r15, rdi
mulx rdi, rcx, r12
adcx rcx, r9
setc r9b
clc
mov rdx, -0x1 
movzx r10, r10b
adcx r10, rdx
adcx r13, [ rsp + 0x110 ]
adcx r11, [ rsp + 0x60 ]
adcx r15, [ rsp + 0xa0 ]
setc r10b
clc
movzx r14, r14b
adcx r14, rdx
adcx r13, [ rsp + 0x58 ]
adcx r11, [ rsp + 0x50 ]
adcx r15, [ rsp + 0x40 ]
mov r14, 0x2341f27177344 
mov rdx, [ rsp - 0x20 ]
mov [ rsp + 0x178 ], rdi
mov byte [ rsp + 0x180 ], r9b
mulx r9, rdi, r14
adox rdi, rbp
seto dl
mov rbp, 0x0 
dec rbp
movzx r10, r10b
adox r10, rbp
adox rdi, [ rsp + 0xe0 ]
movzx r10, dl
lea r10, [ r10 + r9 ]
adox r10, [ rsp + 0xd8 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r9, rdx
adcx rdi, [ rsp + 0x48 ]
adcx r10, [ rsp + 0x80 ]
setc dl
movzx rdx, dl
adox rdx, [ rsp + 0x98 ]
clc
adcx rax, r12
adcx r8, rbx
seto al
mov rbx, -0x2 
inc rbx
adox r8, [ rsp + 0x70 ]
adcx r13, [ rsp + 0x170 ]
adox r13, [ rsp + 0xc0 ]
adcx r11, [ rsp + 0x168 ]
adcx rcx, r15
adox r11, [ rsp + 0xb8 ]
adox rcx, [ rsp + 0xe8 ]
mov r15, rdx
mov rdx, [ rsi + 0x28 ]
mulx r14, rbx, [ rsi + 0x20 ]
seto dl
mov [ rsp + 0x188 ], rcx
movzx rcx, byte [ rsp + 0x160 ]
mov [ rsp + 0x190 ], r11
mov r11, 0x0 
dec r11
adox rcx, r11
adox r9, [ rsp + 0x158 ]
adox rbx, rbp
mov cl, dl
mov rdx, [ rsi + 0x20 ]
mulx r11, rbp, [ rsi + 0x30 ]
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0x198 ], rbx
mov [ rsp + 0x1a0 ], r9
mulx r9, rbx, r12
adox rbp, r14
seto r14b
movzx rdx, byte [ rsp + 0x180 ]
mov [ rsp + 0x1a8 ], rbp
mov rbp, 0x0 
dec rbp
adox rdx, rbp
adox rbx, [ rsp + 0x178 ]
mov rdx, 0x2341f27177344 
mov [ rsp + 0x1b0 ], r13
mulx r13, rbp, r12
adox rbp, r9
mov r12, 0x0 
adox r13, r12
adcx rbx, rdi
adcx rbp, r10
adcx r13, r15
movzx rdi, al
adc rdi, 0x0
add cl, 0xFF
adcx rbx, [ rsp + 0xf0 ]
adcx rbp, [ rsp + 0x100 ]
movzx r10, r14b
lea r10, [ r10 + r11 ]
mov r15, 0xffffffffffffffff 
mov rdx, r8
mulx rax, r8, r15
mov rcx, r8
adox rcx, rdx
adcx r13, [ rsp + 0xf8 ]
adcx rdi, [ rsp + 0x150 ]
mov rcx, r8
setc r11b
clc
adcx rcx, rax
adcx r8, rax
mov r9, 0x7bc65c783158aea3 
mulx r12, r14, r9
mov r9, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1b8 ], r10
mulx r10, r15, r9
adcx r15, rax
adcx r14, r10
adox rcx, [ rsp + 0x1b0 ]
adox r8, [ rsp + 0x190 ]
adox r15, [ rsp + 0x188 ]
adox r14, rbx
mov rbx, 0x2341f27177344 
mulx r10, rax, rbx
mov rbx, 0x6cfc5fd681c52056 
mov byte [ rsp + 0x1c0 ], r11b
mulx r11, r9, rbx
adcx r9, r12
adox r9, rbp
adcx rax, r11
mov rdx, 0x0 
adcx r10, rdx
clc
adcx rcx, [ rsp - 0x48 ]
adcx r8, [ rsp - 0x28 ]
mov rbp, 0xffffffffffffffff 
mov rdx, rcx
mulx r12, rcx, rbp
adox rax, r13
adcx r15, [ rsp + 0x10 ]
adcx r14, [ rsp + 0x38 ]
adox r10, rdi
adcx r9, [ rsp + 0xb0 ]
adcx rax, [ rsp + 0xd0 ]
mulx rdi, r13, rbx
mov r11, rcx
seto bl
mov rbp, -0x2 
inc rbp
adox r11, r12
mov rbp, rcx
mov [ rsp + 0x1c8 ], r10
setc r10b
clc
adcx rbp, rdx
adox rcx, r12
adcx r11, r8
mov rbp, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x1d0 ], r10b
mulx r10, r8, rbp
adcx rcx, r15
adox r8, r12
mov r12, 0x7bc65c783158aea3 
mulx rbp, r15, r12
adox r15, r10
adox r13, rbp
adcx r8, r14
adcx r15, r9
setc r14b
clc
adcx r11, [ rsp + 0x118 ]
adcx rcx, [ rsp + 0x128 ]
mov r9, 0xffffffffffffffff 
xchg rdx, r11
mulx rbp, r10, r9
adcx r8, [ rsp + 0x120 ]
mov r12, 0x2341f27177344 
xchg rdx, r12
mov byte [ rsp + 0x1d8 ], bl
mulx rbx, r9, r11
adcx r15, [ rsp + 0x148 ]
mov r11, 0x7bc65c783158aea3 
mov rdx, r11
mov [ rsp + 0x1e0 ], r13
mulx r13, r11, r12
adox r9, rdi
mov rdi, r10
setc dl
clc
adcx rdi, r12
mov rdi, r10
mov byte [ rsp + 0x1e8 ], dl
seto dl
mov [ rsp + 0x1f0 ], r9
mov r9, -0x2 
inc r9
adox rdi, rbp
adox r10, rbp
movzx r9, dl
lea r9, [ r9 + rbx ]
mov rbx, 0xfdc1767ae2ffffff 
mov rdx, r12
mov [ rsp + 0x1f8 ], r9
mulx r9, r12, rbx
adcx rdi, rcx
adox r12, rbp
adcx r10, r8
adcx r12, r15
adox r11, r9
mov rcx, 0x6cfc5fd681c52056 
mulx r8, rbp, rcx
adox rbp, r13
setc r15b
clc
adcx rdi, [ rsp - 0x38 ]
xchg rdx, rdi
mulx r9, r13, rbx
adcx r10, [ rsp + 0x8 ]
adcx r12, [ rsp + 0x0 ]
mov rcx, 0xffffffffffffffff 
mov [ rsp + 0x200 ], rbp
mulx rbp, rbx, rcx
mov rcx, rbx
mov [ rsp + 0x208 ], r11
seto r11b
mov byte [ rsp + 0x210 ], r15b
mov r15, -0x2 
inc r15
adox rcx, rdx
mov rcx, rbx
setc r15b
clc
adcx rcx, rbp
adox rcx, r10
adcx rbx, rbp
adcx r13, rbp
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0x218 ], r13
mulx r13, rbp, r10
adcx rbp, r9
mov r9, 0x6cfc5fd681c52056 
mov [ rsp + 0x220 ], rbp
mulx rbp, r10, r9
adcx r10, r13
mov r13, 0x2341f27177344 
mov [ rsp + 0x228 ], r10
mulx r10, r9, r13
adcx r9, rbp
adox rbx, r12
setc dl
clc
adcx rcx, [ rsp + 0x68 ]
mov r12, 0xffffffffffffffff 
xchg rdx, rcx
mulx r13, rbp, r12
movzx r12, cl
lea r12, [ r12 + r10 ]
adcx rbx, [ rsp + 0x78 ]
seto r10b
mov rcx, 0x0 
dec rcx
movzx r14, r14b
adox r14, rcx
adox rax, [ rsp + 0x1e0 ]
movzx r14, byte [ rsp + 0x1d8 ]
movzx rcx, byte [ rsp + 0x1c0 ]
lea r14, [ r14 + rcx ]
mov rcx, [ rsp + 0xc8 ]
mov [ rsp + 0x230 ], rbx
setc bl
mov [ rsp + 0x238 ], r12
movzx r12, byte [ rsp + 0x1d0 ]
clc
mov [ rsp + 0x240 ], r9
mov r9, -0x1 
adcx r12, r9
adcx rcx, [ rsp + 0x1c8 ]
adox rcx, [ rsp + 0x1f0 ]
adcx r14, [ rsp + 0x108 ]
adox r14, [ rsp + 0x1f8 ]
mov r12, 0x2341f27177344 
xchg rdx, r12
mov byte [ rsp + 0x248 ], bl
mulx rbx, r9, rdi
seto dil
adc dil, 0x0
movzx rdi, dil
add byte [ rsp + 0x1e8 ], 0x7F
adox rax, [ rsp + 0x1a0 ]
mov rdx, rbp
adcx rdx, r13
adox rcx, [ rsp + 0x198 ]
mov [ rsp + 0x250 ], rdx
mov rdx, rbp
adcx rdx, r13
adox r14, [ rsp + 0x1a8 ]
mov [ rsp + 0x258 ], rdx
mov rdx, 0xfdc1767ae2ffffff 
mov byte [ rsp + 0x260 ], r10b
mov byte [ rsp + 0x268 ], r15b
mulx r15, r10, r12
movzx rdi, dil
movzx rdx, dil
adox rdx, [ rsp + 0x1b8 ]
seto dil
mov [ rsp + 0x270 ], rdx
mov rdx, -0x1 
inc rdx
mov rdx, -0x1 
movzx r11, r11b
adox r11, rdx
adox r8, r9
mov r11, 0x0 
adox rbx, r11
mov r9, 0x7bc65c783158aea3 
mov rdx, r12
mulx r11, r12, r9
adcx r10, r13
adcx r12, r15
mov r13, 0x6cfc5fd681c52056 
mulx r9, r15, r13
adcx r15, r11
mov r11, 0x2341f27177344 
mov [ rsp + 0x278 ], r15
mulx r15, r13, r11
adcx r13, r9
adc r15, 0x0
mov r9, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x280 ], r15
mulx r15, r11, rdx
add byte [ rsp + 0x140 ], 0x7F
adox r11, [ rsp + 0x138 ]
mov rdx, 0x0 
adox r15, rdx
add byte [ rsp + 0x210 ], 0xFF
adcx rax, [ rsp + 0x208 ]
adcx rcx, [ rsp + 0x200 ]
adcx r8, r14
adcx rbx, [ rsp + 0x270 ]
movzx r14, dil
adc r14, 0x0
add byte [ rsp + 0x268 ], 0x7F
adox rax, [ rsp - 0x8 ]
adox rcx, [ rsp + 0x18 ]
adox r8, [ rsp + 0x30 ]
adox rbx, [ rsp + 0x20 ]
movzx rdi, byte [ rsp + 0x260 ]
mov rdx, -0x1 
adcx rdi, rdx
adcx rax, [ rsp + 0x218 ]
adcx rcx, [ rsp + 0x220 ]
adcx r8, [ rsp + 0x228 ]
adox r14, [ rsp + 0x28 ]
adcx rbx, [ rsp + 0x240 ]
adcx r14, [ rsp + 0x238 ]
seto dil
adc dil, 0x0
movzx rdi, dil
add byte [ rsp + 0x248 ], 0xFF
adcx rax, [ rsp + 0x90 ]
adcx rcx, [ rsp + 0x88 ]
adcx r8, [ rsp + 0xa8 ]
adcx rbx, [ rsp + 0x130 ]
adox rbp, r9
mov rbp, [ rsp + 0x230 ]
adox rbp, [ rsp + 0x250 ]
adox rax, [ rsp + 0x258 ]
adox r10, rcx
adcx r11, r14
movzx r9, dil
adcx r9, r15
adox r12, r8
adox rbx, [ rsp + 0x278 ]
adox r13, r11
adox r9, [ rsp + 0x280 ]
seto r15b
adc r15b, 0x0
movzx r15, r15b
mov r14, 0xffffffffffffffff 
mov rdi, rbp
sub rdi, r14
mov rcx, rax
sbb rcx, r14
mov r8, r10
sbb r8, r14
mov r11, 0xfdc1767ae2ffffff 
mov rdx, r12
sbb rdx, r11
mov r11, 0x7bc65c783158aea3 
mov r14, rbx
sbb r14, r11
mov r11, 0x6cfc5fd681c52056 
mov [ rsp + 0x288 ], rdi
mov rdi, r13
sbb rdi, r11
mov r11, 0x2341f27177344 
mov [ rsp + 0x290 ], r8
mov r8, r9
sbb r8, r11
movzx r15, r15b
mov r11, 0x0 
sbb r15, r11
cmovc r14, rbx
cmovc r8, r9
cmovc rcx, rax
cmovc rdx, r12
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x18 ], rdx
mov [ r15 + 0x8 ], rcx
cmovc rdi, r13
mov [ r15 + 0x28 ], rdi
mov rax, [ rsp + 0x290 ]
cmovc rax, r10
mov [ r15 + 0x10 ], rax
mov [ r15 + 0x20 ], r14
mov r10, [ rsp + 0x288 ]
cmovc r10, rbp
mov [ r15 + 0x0 ], r10
mov [ r15 + 0x30 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 792
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6291
; seed 2291970669938469 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 12154497 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 236487 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.019456749218005484
; number reverted permutation / tried permutation: 80958 / 95063 =85.162%
; number reverted decision / tried decision: 70021 / 94936 =73.756%
; validated in 628.464s
