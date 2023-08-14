SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 728
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x28 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x28 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x20 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x38 ], r12
mov [ rsp - 0x30 ], rbx
mulx rbx, r12, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], r9
mulx r9, rdi, [ rsi + 0x28 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x18 ], rdi
mov [ rsp - 0x10 ], r15
mulx r15, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x8 ], rdi
mov [ rsp + 0x10 ], r14
mulx r14, rdi, [ rsi + 0x28 ]
xor rdx, rdx
adox rdi, r9
adox rcx, r14
mov r9, 0xffffffffffffffff 
mov rdx, r9
mulx r14, r9, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], rdi
mulx rdi, rcx, [ rsi + 0x20 ]
adcx rcx, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x28 ], rcx
mulx rcx, rbp, [ rax + 0x10 ]
adcx rbp, rdi
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x30 ], rbp
mulx rbp, rdi, r10
adox r15, r8
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r15
mulx r15, r8, [ rax + 0x18 ]
mov rdx, r9
mov [ rsp + 0x40 ], rbx
seto bl
mov [ rsp + 0x48 ], r12
mov r12, -0x2 
inc r12
adox rdx, r14
mov r12, r9
adox r12, r14
adcx r8, rcx
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x50 ], r8
mov byte [ rsp + 0x58 ], bl
mulx rbx, r8, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], r12
mov [ rsp + 0x68 ], rcx
mulx rcx, r12, [ rax + 0x28 ]
adcx r13, r15
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x70 ], r13
mulx r13, r15, r10
adox r15, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], rcx
mulx rcx, r14, [ rax + 0x18 ]
adox rdi, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x80 ], r12
mulx r12, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x88 ], r13
mov [ rsp + 0x90 ], rdi
mulx rdi, r13, [ rax + 0x10 ]
setc dl
clc
adcx r8, r12
adcx r13, rbx
adcx r14, rdi
mov bl, dl
mov rdx, [ rsi + 0x8 ]
mulx rdi, r12, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x98 ], bl
mov [ rsp + 0xa0 ], r14
mulx r14, rbx, [ rax + 0x30 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xa8 ], r13
mov [ rsp + 0xb0 ], r8
mulx r8, r13, [ rsi + 0x8 ]
adcx r13, rcx
adcx r12, r8
adcx rbx, rdi
mov rdx, [ rsi + 0x0 ]
mulx rdi, rcx, [ rax + 0x8 ]
mov rdx, 0x6cfc5fd681c52056 
mov [ rsp + 0xb8 ], rbx
mulx rbx, r8, r10
setc dl
clc
adcx rcx, r11
adox r8, rbp
mov r11b, dl
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc0 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xc8 ], rbx
mov [ rsp + 0xd0 ], r13
mulx r13, rbx, [ rsi + 0x0 ]
adcx rbx, rdi
setc dl
clc
adcx r9, r10
seto r9b
mov rdi, -0x1 
inc rdi
mov rdi, -0x1 
movzx rdx, dl
adox rdx, rdi
adox r13, rbp
movzx rbp, r11b
lea rbp, [ rbp + r14 ]
mov rdx, [ rsi + 0x0 ]
mulx r11, r14, [ rax + 0x20 ]
adox r14, r12
adcx rcx, [ rsp + 0x68 ]
mov rdx, [ rax + 0x28 ]
mulx rdi, r12, [ rsi + 0x0 ]
adox r12, r11
adox rdi, [ rsp + 0x48 ]
adcx rbx, [ rsp + 0x60 ]
adcx r15, r13
adcx r14, [ rsp + 0x90 ]
adcx r8, r12
setc dl
clc
adcx rcx, [ rsp + 0x88 ]
adcx rbx, [ rsp + 0xb0 ]
adcx r15, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xa0 ]
adcx r8, [ rsp + 0xd0 ]
mov r13, 0x2341f27177344 
xchg rdx, r13
mulx r12, r11, r10
setc r10b
clc
mov rdx, -0x1 
movzx r9, r9b
adcx r9, rdx
adcx r11, [ rsp + 0xc8 ]
mov r9, [ rsp + 0x40 ]
mov rdx, 0x0 
adox r9, rdx
adc r12, 0x0
add r13b, 0xFF
adcx rdi, r11
adcx r12, r9
mov r13, -0x1 
movzx r10, r10b
adox r10, r13
adox rdi, [ rsp + 0xc0 ]
adox r12, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ rax + 0x30 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xd8 ], r10
mov [ rsp + 0xe0 ], r12
mulx r12, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe8 ], rdi
mov [ rsp + 0xf0 ], r8
mulx r8, rdi, [ rax + 0x28 ]
seto dl
mov [ rsp + 0xf8 ], r14
mov r14, -0x2 
inc r14
adox r10, r11
movzx r11, dl
adcx r11, rbp
setc bpl
movzx rdx, byte [ rsp + 0x98 ]
clc
adcx rdx, r14
adcx rdi, [ rsp + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x100 ], rdi
mulx rdi, r14, [ rax + 0x10 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x108 ], r10
mov byte [ rsp + 0x110 ], bpl
mulx rbp, r10, [ rax + 0x0 ]
adox r14, r12
adcx r9, r8
mov rdx, [ rax + 0x20 ]
mulx r8, r12, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x118 ], r10
mov [ rsp + 0x120 ], r9
mulx r9, r10, [ rax + 0x10 ]
mov rdx, 0x0 
adcx r13, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x128 ], r13
mov [ rsp + 0x130 ], r14
mulx r14, r13, [ rax + 0x8 ]
clc
adcx r13, rbp
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x138 ], r13
mulx r13, rbp, [ rax + 0x18 ]
adcx r10, r14
adcx rbp, r9
mov rdx, [ rsi + 0x18 ]
mulx r14, r9, [ rax + 0x28 ]
adox rdi, [ rsp + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x140 ], rbp
mov [ rsp + 0x148 ], r10
mulx r10, rbp, [ rsi + 0x18 ]
adox rbp, [ rsp - 0x8 ]
adox r9, r10
adox r14, [ rsp - 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x150 ], r14
mulx r14, r10, [ rsi + 0x10 ]
adcx r12, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x158 ], r12
mulx r12, r13, [ rax + 0x20 ]
setc dl
mov [ rsp + 0x160 ], r9
movzx r9, byte [ rsp + 0x58 ]
clc
mov [ rsp + 0x168 ], rbp
mov rbp, -0x1 
adcx r9, rbp
adcx r13, [ rsp + 0x8 ]
mov r9, 0xfdc1767ae2ffffff 
xchg rdx, rcx
mov [ rsp + 0x170 ], r13
mulx r13, rbp, r9
mov r9, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x178 ], rdi
mov [ rsp + 0x180 ], r11
mulx r11, rdi, [ rsi + 0x28 ]
adcx rdi, r12
adcx r11, [ rsp - 0x20 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x188 ], r11
mulx r11, r12, r9
mov rdx, [ rsp - 0x28 ]
mov [ rsp + 0x190 ], rdi
mov rdi, 0x0 
adox rdx, rdi
mov rdi, [ rsp - 0x30 ]
adc rdi, 0x0
mov [ rsp + 0x198 ], rdi
mov rdi, r12
add rdi, r11
mov [ rsp + 0x1a0 ], rdx
mov rdx, r12
adcx rdx, r11
mov [ rsp + 0x1a8 ], r10
mov r10, 0x7bc65c783158aea3 
xchg rdx, r9
mov [ rsp + 0x1b0 ], r14
mov [ rsp + 0x1b8 ], r8
mulx r8, r14, r10
mov r10, -0x2 
inc r10
adox r12, rdx
adox rdi, rbx
adox r9, r15
adcx rbp, r11
mov r12, 0x6cfc5fd681c52056 
mulx r15, rbx, r12
adcx r14, r13
adcx rbx, r8
mov r13, 0x2341f27177344 
mulx r8, r11, r13
adox rbp, [ rsp + 0xf8 ]
mov rdx, [ rsi + 0x30 ]
mulx r13, r10, [ rax + 0x30 ]
adox r14, [ rsp + 0xf0 ]
adox rbx, [ rsp + 0xe8 ]
adcx r11, r15
mov rdx, [ rax + 0x28 ]
mulx r12, r15, [ rsi + 0x30 ]
setc dl
clc
mov [ rsp + 0x1c0 ], rbx
mov rbx, -0x1 
movzx rcx, cl
adcx rcx, rbx
adcx r15, [ rsp + 0x1b8 ]
mov cl, dl
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x1c8 ], r15
mulx r15, rbx, [ rsi + 0x10 ]
adox r11, [ rsp + 0xe0 ]
adcx r10, r12
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x1d0 ], r10
mulx r10, r12, [ rsi + 0x10 ]
setc dl
clc
adcx r12, [ rsp + 0x1b0 ]
adcx rbx, r10
movzx r10, dl
lea r10, [ r10 + r13 ]
adcx r15, [ rsp - 0x40 ]
setc r13b
clc
adcx rdi, [ rsp + 0x1a8 ]
movzx rdx, cl
lea rdx, [ rdx + r8 ]
adox rdx, [ rsp + 0x180 ]
movzx r8, byte [ rsp + 0x110 ]
mov rcx, 0x0 
adox r8, rcx
adcx r12, r9
adcx rbx, rbp
adcx r15, r14
mov r9, rdx
mov rdx, [ rax + 0x20 ]
mulx r14, rbp, [ rsi + 0x10 ]
dec rcx
movzx r13, r13b
adox r13, rcx
adox rbp, [ rsp - 0x48 ]
adox r14, [ rsp + 0x80 ]
adcx rbp, [ rsp + 0x1c0 ]
mov rdx, [ rax + 0x30 ]
mulx rcx, r13, [ rsi + 0x10 ]
adox r13, [ rsp + 0x78 ]
adcx r14, r11
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x1d8 ], r10
mulx r10, r11, rdi
adcx r13, r9
mov r9, 0x0 
adox rcx, r9
mov rdx, r11
mov [ rsp + 0x1e0 ], r13
mov r13, -0x3 
inc r13
adox rdx, rdi
adcx rcx, r8
mov rdx, r11
setc r8b
clc
adcx rdx, r10
adox rdx, r12
adcx r11, r10
adox r11, rbx
mov r12, 0x7bc65c783158aea3 
xchg rdx, r12
mulx r9, rbx, rdi
mov r13, 0xfdc1767ae2ffffff 
mov rdx, rdi
mov byte [ rsp + 0x1e8 ], r8b
mulx r8, rdi, r13
adcx rdi, r10
adcx rbx, r8
adox rdi, r15
adox rbx, rbp
mov r15, 0x6cfc5fd681c52056 
mulx r10, rbp, r15
adcx rbp, r9
mov r9, 0x2341f27177344 
mulx r15, r8, r9
adcx r8, r10
mov rdx, 0x0 
adcx r15, rdx
clc
adcx r12, [ rsp + 0xd8 ]
adox rbp, r14
mov r14, 0x7bc65c783158aea3 
mov rdx, r12
mulx r10, r12, r14
adcx r11, [ rsp + 0x108 ]
adcx rdi, [ rsp + 0x130 ]
adcx rbx, [ rsp + 0x178 ]
adcx rbp, [ rsp + 0x168 ]
adox r8, [ rsp + 0x1e0 ]
adox r15, rcx
movzx rcx, byte [ rsp + 0x1e8 ]
mov r14, 0x0 
adox rcx, r14
adcx r8, [ rsp + 0x160 ]
mov r14, 0xffffffffffffffff 
mulx r13, r9, r14
mov r14, r9
mov [ rsp + 0x1f0 ], r8
mov r8, -0x2 
inc r8
adox r14, rdx
mov r14, r9
setc r8b
clc
adcx r14, r13
adcx r9, r13
adox r14, r11
adox r9, rdi
mov r11, 0xfdc1767ae2ffffff 
mov [ rsp + 0x1f8 ], r9
mulx r9, rdi, r11
adcx rdi, r13
adox rdi, rbx
adcx r12, r9
mov rbx, 0x6cfc5fd681c52056 
mulx r9, r13, rbx
adcx r13, r10
mov r10, 0x2341f27177344 
mulx rbx, r11, r10
adcx r11, r9
mov rdx, 0x0 
adcx rbx, rdx
clc
mov r9, -0x1 
movzx r8, r8b
adcx r8, r9
adcx r15, [ rsp + 0x150 ]
adox r12, rbp
adcx rcx, [ rsp + 0x1a0 ]
adox r13, [ rsp + 0x1f0 ]
setc bpl
clc
adcx r14, [ rsp - 0x38 ]
adox r11, r15
adox rbx, rcx
mov r8, 0xffffffffffffffff 
mov rdx, r14
mulx r15, r14, r8
movzx rcx, bpl
mov r9, 0x0 
adox rcx, r9
mov rbp, [ rsp + 0x28 ]
adcx rbp, [ rsp + 0x1f8 ]
adcx rdi, [ rsp + 0x30 ]
adcx r12, [ rsp + 0x50 ]
adcx r13, [ rsp + 0x70 ]
adcx r11, [ rsp + 0x100 ]
adcx rbx, [ rsp + 0x120 ]
adcx rcx, [ rsp + 0x128 ]
mov r8, r14
mov r10, -0x3 
inc r10
adox r8, r15
mov r10, r14
mov [ rsp + 0x200 ], rcx
setc cl
clc
adcx r10, rdx
adcx r8, rbp
adox r14, r15
mov r10, 0xfdc1767ae2ffffff 
mulx r9, rbp, r10
adox rbp, r15
mov r15, 0x7bc65c783158aea3 
mov [ rsp + 0x208 ], r8
mulx r8, r10, r15
adcx r14, rdi
adcx rbp, r12
adox r10, r9
adcx r10, r13
mov rdi, 0x2341f27177344 
mulx r13, r12, rdi
mov r9, 0x6cfc5fd681c52056 
mulx rdi, r15, r9
adox r15, r8
adcx r15, r11
adox r12, rdi
adcx r12, rbx
mov rdx, 0x0 
adox r13, rdx
adcx r13, [ rsp + 0x200 ]
movzx r11, cl
adc r11, 0x0
mov rbx, [ rsp + 0x208 ]
test al, al
adox rbx, [ rsp - 0x18 ]
adox r14, [ rsp + 0x20 ]
adox rbp, [ rsp + 0x18 ]
adox r10, [ rsp + 0x38 ]
adox r15, [ rsp + 0x170 ]
adox r12, [ rsp + 0x190 ]
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r8, rcx, rbx
mov rdi, rcx
adcx rdi, rbx
mov rdi, rcx
setc dl
clc
adcx rdi, r8
adcx rcx, r8
setc r9b
clc
mov [ rsp + 0x210 ], r12
mov r12, -0x1 
movzx rdx, dl
adcx rdx, r12
adcx r14, rdi
adcx rcx, rbp
adox r13, [ rsp + 0x188 ]
mov rbp, 0xfdc1767ae2ffffff 
mov rdx, rbp
mulx rdi, rbp, rbx
adox r11, [ rsp + 0x198 ]
seto r12b
mov rdx, -0x2 
inc rdx
adox r14, [ rsp + 0x118 ]
adox rcx, [ rsp + 0x138 ]
seto dl
mov [ rsp + 0x218 ], rcx
mov rcx, 0x0 
dec rcx
movzx r9, r9b
adox r9, rcx
adox r8, rbp
adcx r8, r10
mov r10, 0x7bc65c783158aea3 
xchg rdx, rbx
mulx rbp, r9, r10
adox r9, rdi
adcx r9, r15
mov r15, 0x2341f27177344 
mulx rcx, rdi, r15
mov r10, 0x6cfc5fd681c52056 
mov [ rsp + 0x220 ], r9
mulx r9, r15, r10
adox r15, rbp
adox rdi, r9
mov rdx, 0x0 
adox rcx, rdx
adcx r15, [ rsp + 0x210 ]
adcx rdi, r13
adcx rcx, r11
movzx r13, r12b
adc r13, 0x0
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx r11, r12, r14
add bl, 0xFF
adcx r8, [ rsp + 0x148 ]
mov rbx, [ rsp + 0x220 ]
adcx rbx, [ rsp + 0x140 ]
adcx r15, [ rsp + 0x158 ]
mov rbp, r12
adox rbp, r11
mov r9, r12
adox r9, r11
adcx rdi, [ rsp + 0x1c8 ]
mov rdx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x228 ], rdi
mulx rdi, r10, r14
adcx rcx, [ rsp + 0x1d0 ]
adcx r13, [ rsp + 0x1d8 ]
mov rdx, 0x7bc65c783158aea3 
mov [ rsp + 0x230 ], r13
mov [ rsp + 0x238 ], rcx
mulx rcx, r13, r14
adox r10, r11
adox r13, rdi
setc r11b
clc
adcx r12, r14
adcx rbp, [ rsp + 0x218 ]
adcx r9, r8
adcx r10, rbx
mov r12, 0x6cfc5fd681c52056 
mov rdx, r14
mulx r8, r14, r12
adox r14, rcx
adcx r13, r15
adcx r14, [ rsp + 0x228 ]
mov rbx, 0x2341f27177344 
mulx rdi, r15, rbx
adox r15, r8
adcx r15, [ rsp + 0x238 ]
mov rdx, 0x0 
adox rdi, rdx
adcx rdi, [ rsp + 0x230 ]
setc cl
mov r8, 0xffffffffffffffff 
mov rbx, rbp
sub rbx, r8
mov rdx, r9
sbb rdx, r8
mov r12, r10
sbb r12, r8
mov r8, 0xfdc1767ae2ffffff 
mov [ rsp + 0x240 ], r12
mov r12, r13
sbb r12, r8
mov r8, 0x7bc65c783158aea3 
mov [ rsp + 0x248 ], rbx
mov rbx, r14
sbb rbx, r8
mov r8, 0x6cfc5fd681c52056 
mov [ rsp + 0x250 ], rbx
mov rbx, r15
sbb rbx, r8
movzx r8, cl
movzx r11, r11b
lea r8, [ r8 + r11 ]
mov r11, 0x2341f27177344 
mov rcx, rdi
sbb rcx, r11
mov r11, 0x0 
sbb r8, r11
cmovc rdx, r9
cmovc r12, r13
cmovc rcx, rdi
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x8 ], rdx
cmovc rbx, r15
mov [ r8 + 0x28 ], rbx
mov [ r8 + 0x18 ], r12
mov r9, [ rsp + 0x250 ]
cmovc r9, r14
mov r13, [ rsp + 0x248 ]
cmovc r13, rbp
mov [ r8 + 0x0 ], r13
mov [ r8 + 0x20 ], r9
mov rbp, [ rsp + 0x240 ]
cmovc rbp, r10
mov [ r8 + 0x30 ], rcx
mov [ r8 + 0x10 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 728
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.9015
; seed 0893002415175064 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7530175 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=20, initial num_batches=31): 155457 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.020644540133529433
; number reverted permutation / tried permutation: 72545 / 95119 =76.268%
; number reverted decision / tried decision: 65546 / 94880 =69.083%
; validated in 393.281s
