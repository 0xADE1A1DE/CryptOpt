SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 472
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
test al, al
adox r13, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], rax
mov [ rsp - 0x38 ], rdi
mulx rdi, rax, [ rsi + 0x20 ]
adcx r8, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, rbp, [ rsi + 0x18 ]
adcx r11, r9
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp - 0x28 ], r11
mulx r11, r9, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r8
mov [ rsp - 0x18 ], rax
mulx rax, r8, rdx
adox rbp, r14
adox r8, rdi
mov rdx, 0xb9feffffffffaaab 
mulx rdi, r14, r12
setc dl
clc
adcx r9, rdi
mov dil, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], r8
mov [ rsp - 0x8 ], rbp
mulx rbp, r8, [ rsi + 0x0 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], r9
mulx r9, r8, r12
adcx r8, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r8
mulx r8, r11, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], r8
mov [ rsp + 0x20 ], r14
mulx r14, r8, [ rsi + 0x18 ]
adox r8, rax
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r8
mulx r8, rax, rdx
seto dl
mov [ rsp + 0x30 ], rbx
mov rbx, -0x2 
inc rbx
adox r10, rbp
adox r11, r15
seto r15b
inc rbx
adox rax, r13
mov r13b, dl
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, [ rsi + 0x8 ]
adox rbp, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r11
mulx r11, r8, [ rsi + 0x8 ]
adox r8, rbx
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0x40 ], r10
mulx r10, rbx, r12
adcx rbx, r9
mov r9, 0x4b1ba7b6434bacd7 
mov rdx, r9
mov byte [ rsp + 0x48 ], r15b
mulx r15, r9, r12
adcx r9, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], r8
mulx r8, r10, [ rsi + 0x8 ]
adox r10, r11
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], r10
mulx r10, r11, [ rsi + 0x0 ]
mov rdx, 0x1a0111ea397fe69a 
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], rbp
mulx rbp, r9, r12
adcx r9, r15
mov rdx, [ rsi + 0x28 ]
mulx r15, r12, [ rsi + 0x8 ]
adox r12, r8
mov rdx, 0x0 
adox r15, rdx
adc rbp, 0x0
add dil, 0xFF
adcx rcx, r11
adcx r10, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rdi, [ rsi + 0x28 ]
mov rdx, -0x1 
movzx r13, r13b
adox r13, rdx
adox r14, rdi
mov r13, [ rsp + 0x20 ]
seto r11b
inc rdx
adox r13, [ rsp + 0x30 ]
mov r13, [ rsp - 0x20 ]
adox r13, [ rsp + 0x8 ]
mov rdi, [ rsp + 0x10 ]
adox rdi, [ rsp - 0x28 ]
adox rbx, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r14
mulx r14, rcx, [ rsi + 0x28 ]
adcx rcx, [ rsp - 0x30 ]
mov rdx, 0x0 
adcx r14, rdx
clc
adcx r13, [ rsp - 0x38 ]
adcx rax, rdi
adcx rbx, [ rsp + 0x68 ]
adox r10, [ rsp + 0x60 ]
adcx r10, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], r10
mulx r10, rdi, [ rsi + 0x20 ]
adox r9, rcx
adcx r9, [ rsp + 0x58 ]
adox rbp, r14
mov rdx, [ rsi + 0x20 ]
mulx r14, rcx, [ rsi + 0x8 ]
adcx r12, rbp
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], rdi
mulx rdi, rbp, [ rsi + 0x10 ]
movzx rdx, r11b
lea rdx, [ rdx + r8 ]
seto r8b
mov r11, -0x2 
inc r11
adox rcx, r10
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x88 ], rcx
mulx rcx, r11, [ rsi + 0x18 ]
movzx rdx, r8b
adcx rdx, r15
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r10
mulx r10, r8, [ rsi + 0x10 ]
setc dl
mov [ rsp + 0x98 ], r15
movzx r15, byte [ rsp + 0x48 ]
clc
mov [ rsp + 0xa0 ], r12
mov r12, -0x1 
adcx r15, r12
adcx r11, [ rsp + 0x18 ]
adcx r8, rcx
adcx rbp, r10
mov r15, 0x0 
adcx rdi, r15
mov cl, dl
mov rdx, [ rsi + 0x20 ]
mulx r15, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rdi
mulx rdi, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb0 ], r12
mov [ rsp + 0xb8 ], rbp
mulx rbp, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xc0 ], r8
mov [ rsp + 0xc8 ], r11
mulx r11, r8, rdx
mov rdx, [ rsi + 0x28 ]
mov byte [ rsp + 0xd0 ], cl
mov [ rsp + 0xd8 ], r9
mulx r9, rcx, [ rsi + 0x8 ]
clc
adcx rcx, rdi
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe0 ], rcx
mulx rcx, rdi, [ rsi + 0x28 ]
adox r12, r14
adcx rdi, r9
adox r10, rbp
adox r8, r15
mov rdx, [ rsi + 0x28 ]
mulx r15, r14, [ rsi + 0x18 ]
adcx r14, rcx
mov rdx, [ rsi + 0x20 ]
mulx r9, rbp, [ rsi + 0x28 ]
adox rbp, r11
mov rdx, 0x89f3fffcfffcfffd 
mulx rcx, r11, r13
mov rcx, 0x1eabfffeb153ffff 
mov rdx, rcx
mov [ rsp + 0xe8 ], r14
mulx r14, rcx, r11
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0xf0 ], rdi
mov [ rsp + 0xf8 ], rbp
mulx rbp, rdi, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], r8
mov [ rsp + 0x108 ], r10
mulx r10, r8, [ rsi + 0x28 ]
adcx r8, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x110 ], r8
mulx r8, r15, rdx
adcx r15, r10
mov rdx, 0x0 
adcx r8, rdx
adox r9, rdx
mov r10, 0xb9feffffffffaaab 
mov rdx, r11
mov [ rsp + 0x118 ], r8
mulx r8, r11, r10
xor r10, r10
adox rcx, r8
mov r8, 0x6730d2a0f6b0f624 
mov [ rsp + 0x120 ], r15
mulx r15, r10, r8
adox r10, r14
adox rdi, r15
adcx r11, r13
adcx rcx, rax
adcx r10, rbx
mov r11, 0x4b1ba7b6434bacd7 
mulx rax, r13, r11
mov rbx, 0x1a0111ea397fe69a 
mulx r15, r14, rbx
adcx rdi, [ rsp + 0x78 ]
adox r13, rbp
adcx r13, [ rsp + 0xd8 ]
adox r14, rax
mov rdx, 0x0 
adox r15, rdx
adcx r14, [ rsp + 0xa0 ]
adcx r15, [ rsp + 0x98 ]
mov rbp, -0x3 
inc rbp
adox rcx, [ rsp + 0x0 ]
adox r10, [ rsp + 0x40 ]
movzx rax, byte [ rsp + 0xd0 ]
adcx rax, rdx
adox rdi, [ rsp + 0x38 ]
adox r13, [ rsp + 0xc8 ]
adox r14, [ rsp + 0xc0 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rbx, rbp, rcx
mov rbx, 0x1eabfffeb153ffff 
mov rdx, rbp
mulx r11, rbp, rbx
adox r15, [ rsp + 0xb8 ]
adox rax, [ rsp + 0xa8 ]
mov rbx, 0xb9feffffffffaaab 
mov [ rsp + 0x128 ], r9
mulx r9, r8, rbx
clc
adcx rbp, r9
mov r9, 0x6730d2a0f6b0f624 
mov [ rsp + 0x130 ], r12
mulx r12, rbx, r9
adcx rbx, r11
mov r11, 0x64774b84f38512bf 
mov [ rsp + 0x138 ], rax
mulx rax, r9, r11
seto r11b
mov [ rsp + 0x140 ], r15
mov r15, -0x2 
inc r15
adox r8, rcx
adcx r9, r12
adox rbp, r10
adox rbx, rdi
mov r8, 0x4b1ba7b6434bacd7 
mulx r10, rcx, r8
adox r9, r13
mov rdi, 0x1a0111ea397fe69a 
mulx r12, r13, rdi
adcx rcx, rax
adcx r13, r10
mov rdx, 0x0 
adcx r12, rdx
adox rcx, r14
adox r13, [ rsp + 0x140 ]
adox r12, [ rsp + 0x138 ]
clc
adcx rbp, [ rsp - 0x40 ]
adcx rbx, [ rsp - 0x48 ]
movzx r14, r11b
adox r14, rdx
mov r11, 0x89f3fffcfffcfffd 
mov rdx, r11
mulx rax, r11, rbp
adcx r9, [ rsp - 0x8 ]
mov rdx, r11
mulx r11, rax, rdi
adcx rcx, [ rsp - 0x10 ]
adcx r13, [ rsp + 0x28 ]
adcx r12, [ rsp + 0x70 ]
adcx r14, [ rsp + 0x90 ]
mov r10, 0x1eabfffeb153ffff 
mulx rdi, r15, r10
mov r10, 0xb9feffffffffaaab 
mov [ rsp + 0x148 ], r14
mulx r14, r8, r10
mov r10, -0x2 
inc r10
adox r8, rbp
setc r8b
clc
adcx r15, r14
mov rbp, 0x6730d2a0f6b0f624 
mulx r10, r14, rbp
adox r15, rbx
adcx r14, rdi
adox r14, r9
mov rbx, 0x64774b84f38512bf 
mulx rdi, r9, rbx
adcx r9, r10
mov r10, 0x4b1ba7b6434bacd7 
mulx rbx, rbp, r10
adcx rbp, rdi
adox r9, rcx
adcx rax, rbx
adox rbp, r13
mov rdx, 0x0 
adcx r11, rdx
clc
adcx r15, [ rsp + 0x80 ]
adcx r14, [ rsp + 0x88 ]
adcx r9, [ rsp + 0x130 ]
adox rax, r12
adox r11, [ rsp + 0x148 ]
adcx rbp, [ rsp + 0x108 ]
adcx rax, [ rsp + 0x100 ]
movzx rcx, r8b
adox rcx, rdx
mov r13, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r12, r15, r13
mov r12, 0xb9feffffffffaaab 
xchg rdx, r12
mulx rdi, r8, r15
mov rbx, -0x2 
inc rbx
adox r8, r12
mov r8, 0x6730d2a0f6b0f624 
mov rdx, r15
mulx r12, r15, r8
adcx r11, [ rsp + 0xf8 ]
mov rbx, 0x1eabfffeb153ffff 
mulx r13, r8, rbx
adcx rcx, [ rsp + 0x128 ]
setc bl
clc
adcx r8, rdi
adox r8, r14
adcx r15, r13
adox r15, r9
mov r14, 0x64774b84f38512bf 
mulx rdi, r9, r14
adcx r9, r12
adox r9, rbp
mulx r12, rbp, r10
mov r13, 0x1a0111ea397fe69a 
mulx r14, r10, r13
adcx rbp, rdi
adox rbp, rax
adcx r10, r12
adox r10, r11
mov rax, 0x0 
adcx r14, rax
adox r14, rcx
clc
adcx r8, [ rsp + 0xb0 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rcx, r11, r8
adcx r15, [ rsp + 0xe0 ]
mov rcx, 0x1eabfffeb153ffff 
mov rdx, r11
mulx rdi, r11, rcx
adcx r9, [ rsp + 0xf0 ]
adcx rbp, [ rsp + 0xe8 ]
mov r12, 0x6730d2a0f6b0f624 
mulx rcx, rax, r12
movzx r12, bl
mov r13, 0x0 
adox r12, r13
mov rbx, 0xb9feffffffffaaab 
mov [ rsp + 0x150 ], rbp
mulx rbp, r13, rbx
mov rbx, -0x2 
inc rbx
adox r13, r8
adcx r10, [ rsp + 0x110 ]
adcx r14, [ rsp + 0x120 ]
adcx r12, [ rsp + 0x118 ]
setc r13b
clc
adcx r11, rbp
adox r11, r15
adcx rax, rdi
mov r8, 0x4b1ba7b6434bacd7 
mulx rdi, r15, r8
adox rax, r9
mov r9, 0x64774b84f38512bf 
mulx rbx, rbp, r9
adcx rbp, rcx
adcx r15, rbx
mov rcx, 0x1a0111ea397fe69a 
mulx r8, rbx, rcx
adox rbp, [ rsp + 0x150 ]
adcx rbx, rdi
adox r15, r10
adox rbx, r14
mov rdx, 0x0 
adcx r8, rdx
adox r8, r12
movzx r10, r13b
adox r10, rdx
mov r14, r11
mov r13, 0xb9feffffffffaaab 
sub r14, r13
mov r12, rax
mov rdi, 0x1eabfffeb153ffff 
sbb r12, rdi
mov rdx, rbp
mov r13, 0x6730d2a0f6b0f624 
sbb rdx, r13
mov r13, r15
sbb r13, r9
mov r9, rbx
mov rdi, 0x4b1ba7b6434bacd7 
sbb r9, rdi
mov rdi, r8
sbb rdi, rcx
sbb r10, 0x00000000
cmovc r14, r11
cmovc r9, rbx
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x0 ], r14
cmovc rdi, r8
cmovc r13, r15
cmovc r12, rax
mov [ r10 + 0x18 ], r13
mov [ r10 + 0x20 ], r9
cmovc rdx, rbp
mov [ r10 + 0x10 ], rdx
mov [ r10 + 0x28 ], rdi
mov [ r10 + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 472
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.9210
; seed 4268434109400993 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 8395619 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=68, initial num_batches=31): 206038 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02454113270266314
; number reverted permutation / tried permutation: 70319 / 90135 =78.015%
; number reverted decision / tried decision: 61827 / 89864 =68.801%
; validated in 51.517s
