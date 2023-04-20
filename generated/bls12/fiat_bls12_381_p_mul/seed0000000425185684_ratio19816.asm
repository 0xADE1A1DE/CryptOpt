SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 472
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
xor rdx, rdx
adox r15, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbx
mulx rbx, r14, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r9
mulx r9, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], rbp
mulx rbp, r9, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], r15
mulx r15, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r13
mov [ rsp - 0x8 ], rbx
mulx rbx, r13, [ rsi + 0x10 ]
adcx r9, rbp
adcx r13, r15
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, [ rax + 0x10 ]
adox rbp, rdi
adcx r10, rbx
adox r14, r15
mov rdx, [ rax + 0x0 ]
mulx rbx, rdi, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x0 ], r10
mulx r10, r15, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x8 ], r13
mov [ rsp + 0x10 ], r9
mulx r9, r13, [ rsi + 0x0 ]
seto dl
mov [ rsp + 0x18 ], r14
mov r14, -0x2 
inc r14
adox r13, rbx
adox r15, r9
mov bl, dl
mov rdx, [ rsi + 0x0 ]
mulx r14, r9, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x20 ], rbp
mov byte [ rsp + 0x28 ], bl
mulx rbx, rbp, [ rsi + 0x0 ]
adox r9, r10
adox rbp, r14
mov rdx, [ rax + 0x20 ]
mulx r14, r10, [ rsi + 0x10 ]
adcx r10, r11
adox rcx, rbx
mov rdx, [ rax + 0x28 ]
mulx rbx, r11, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x30 ], r10
mov [ rsp + 0x38 ], rcx
mulx rcx, r10, [ rsi + 0x28 ]
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r10
mov [ rsp + 0x48 ], r8
mulx r8, r10, [ rsi + 0x28 ]
adcx r11, r14
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r11
mulx r11, r14, [ rax + 0x8 ]
adc rbx, 0x0
test al, al
adox r14, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x58 ], r14
mulx r14, rcx, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x60 ], rbx
mov [ rsp + 0x68 ], rbp
mulx rbp, rbx, [ rsi + 0x28 ]
adox rbx, r11
adox rcx, rbp
mov rdx, [ rax + 0x28 ]
mulx rbp, r11, [ rsi + 0x28 ]
adox r10, r14
adox r11, r8
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r8, [ rax + 0x10 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x70 ], rbp
mov [ rsp + 0x78 ], r11
mulx r11, rbp, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r10
mulx r10, r11, [ rax + 0x8 ]
adcx r11, r12
adcx r8, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, r12, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x88 ], rcx
mov [ rsp + 0x90 ], rbx
mulx rbx, rcx, [ rax + 0x18 ]
adcx rcx, r14
adcx r12, rbx
mov rdx, 0x6730d2a0f6b0f624 
mulx rbx, r14, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x98 ], r12
mov [ rsp + 0xa0 ], rcx
mulx rcx, r12, [ rax + 0x28 ]
adcx r12, r10
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xa8 ], r12
mulx r12, r10, rbp
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xb0 ], r8
mov [ rsp + 0xb8 ], r11
mulx r11, r8, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r10, rdi
mov r10, 0x1eabfffeb153ffff 
mov rdx, rbp
mulx rdi, rbp, r10
setc r10b
clc
adcx rbp, r12
adcx r14, rdi
adox rbp, r13
adox r14, r15
mov r13, 0x64774b84f38512bf 
mulx r12, r15, r13
adcx r15, rbx
mov rbx, 0x1a0111ea397fe69a 
mulx r13, rdi, rbx
movzx rbx, r10b
lea rbx, [ rbx + rcx ]
mov rcx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xc0 ], rbx
mulx rbx, r10, rcx
adcx r10, r12
adcx rdi, rbx
mov rdx, [ rax + 0x20 ]
mulx rbx, r12, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r13, rdx
movzx rdx, byte [ rsp + 0x28 ]
clc
mov rcx, -0x1 
adcx rdx, rcx
adcx r12, [ rsp - 0x8 ]
adcx r8, rbx
mov rdx, 0x0 
adcx r11, rdx
adox r15, r9
clc
adcx rbp, [ rsp - 0x10 ]
adcx r14, [ rsp - 0x18 ]
adox r10, [ rsp + 0x68 ]
adox rdi, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x20 ]
adox r13, [ rsp + 0x48 ]
adcx r10, [ rsp + 0x18 ]
adcx r12, rdi
adcx r8, r13
mov rdx, [ rax + 0x18 ]
mulx rbx, r9, [ rsi + 0x20 ]
setc dl
movzx rdx, dl
adox rdx, r11
mov r11, rdx
mov rdx, [ rsi + 0x20 ]
mulx r13, rdi, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xc8 ], r11
mulx r11, rcx, [ rsi + 0x20 ]
clc
adcx rdi, r11
adcx r13, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd0 ], r13
mulx r13, r11, [ rax + 0x20 ]
adcx r9, [ rsp - 0x30 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0xd8 ], r9
mov [ rsp + 0xe0 ], rdi
mulx rdi, r9, rbp
adcx r11, rbx
mov rdi, 0x4b1ba7b6434bacd7 
mov rdx, r9
mulx rbx, r9, rdi
mov rdi, 0xb9feffffffffaaab 
mov [ rsp + 0xe8 ], r11
mov [ rsp + 0xf0 ], rcx
mulx rcx, r11, rdi
seto dil
mov [ rsp + 0xf8 ], r8
mov r8, -0x2 
inc r8
adox r11, rbp
adcx r13, [ rsp - 0x38 ]
mov r11, 0x1eabfffeb153ffff 
mulx r8, rbp, r11
mov r11, 0x6730d2a0f6b0f624 
mov [ rsp + 0x100 ], r13
mov byte [ rsp + 0x108 ], dil
mulx rdi, r13, r11
setc r11b
clc
adcx rbp, rcx
adcx r13, r8
adox rbp, r14
mov r14, 0x64774b84f38512bf 
mulx r8, rcx, r14
adcx rcx, rdi
adcx r9, r8
adox r13, r15
adox rcx, r10
adox r9, r12
mov r15, 0x1a0111ea397fe69a 
mulx r12, r10, r15
adcx r10, rbx
adox r10, [ rsp + 0xf8 ]
mov rdx, 0x0 
adcx r12, rdx
adox r12, [ rsp + 0xc8 ]
movzx rbx, byte [ rsp + 0x108 ]
adox rbx, rdx
xor rdi, rdi
adox rbp, [ rsp - 0x20 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rdi, r8, rbp
mov rdx, r8
mulx r8, rdi, r14
mov r15, 0xb9feffffffffaaab 
mov byte [ rsp + 0x110 ], r11b
mulx r11, r14, r15
adox r13, [ rsp + 0x10 ]
adox rcx, [ rsp + 0x8 ]
mov r15, 0x1eabfffeb153ffff 
mov [ rsp + 0x118 ], r8
mov [ rsp + 0x120 ], rcx
mulx rcx, r8, r15
adox r9, [ rsp + 0x0 ]
adox r10, [ rsp + 0x30 ]
adox r12, [ rsp + 0x50 ]
adox rbx, [ rsp + 0x60 ]
adcx r8, r11
seto r11b
mov r15, -0x2 
inc r15
adox r14, rbp
mov r14, 0x6730d2a0f6b0f624 
mulx r15, rbp, r14
adcx rbp, rcx
adcx rdi, r15
mov rcx, 0x1a0111ea397fe69a 
mulx r14, r15, rcx
adox r8, r13
adox rbp, [ rsp + 0x120 ]
adox rdi, r9
mov r13, 0x4b1ba7b6434bacd7 
mulx rcx, r9, r13
adcx r9, [ rsp + 0x118 ]
adcx r15, rcx
adox r9, r10
adox r15, r12
mov rdx, 0x0 
adcx r14, rdx
adox r14, rbx
clc
adcx r8, [ rsp - 0x40 ]
movzx r10, r11b
adox r10, rdx
adcx rbp, [ rsp + 0xb8 ]
mov r12, 0x89f3fffcfffcfffd 
mov rdx, r12
mulx r11, r12, r8
adcx rdi, [ rsp + 0xb0 ]
mov r11, 0x1eabfffeb153ffff 
mov rdx, r12
mulx rbx, r12, r11
adcx r9, [ rsp + 0xa0 ]
mov rcx, 0xb9feffffffffaaab 
mulx r11, r13, rcx
mov rcx, 0x64774b84f38512bf 
mov [ rsp + 0x128 ], r9
mov [ rsp + 0x130 ], rdi
mulx rdi, r9, rcx
adcx r15, [ rsp + 0x98 ]
mov rcx, -0x2 
inc rcx
adox r13, r8
adcx r14, [ rsp + 0xa8 ]
adcx r10, [ rsp + 0xc0 ]
setc r13b
clc
adcx r12, r11
mov r8, 0x6730d2a0f6b0f624 
mulx rcx, r11, r8
adcx r11, rbx
adcx r9, rcx
adox r12, rbp
mov rbp, 0x4b1ba7b6434bacd7 
mulx rcx, rbx, rbp
adcx rbx, rdi
adox r11, [ rsp + 0x130 ]
adox r9, [ rsp + 0x128 ]
adox rbx, r15
mov rdi, 0x1a0111ea397fe69a 
mulx rbp, r15, rdi
adcx r15, rcx
mov rdx, 0x0 
adcx rbp, rdx
adox r15, r14
clc
adcx r12, [ rsp + 0xf0 ]
adcx r11, [ rsp + 0xe0 ]
adcx r9, [ rsp + 0xd0 ]
adox rbp, r10
movzx r14, r13b
adox r14, rdx
adcx rbx, [ rsp + 0xd8 ]
adcx r15, [ rsp + 0xe8 ]
mov r13, 0x89f3fffcfffcfffd 
mov rdx, r13
mulx r10, r13, r12
mov rdx, r8
mulx r8, r10, r13
mov rcx, 0xb9feffffffffaaab 
mov rdx, r13
mulx rdi, r13, rcx
adcx rbp, [ rsp + 0x100 ]
movzx rcx, byte [ rsp + 0x110 ]
mov [ rsp + 0x138 ], rbp
mov rbp, [ rsp - 0x48 ]
lea rcx, [ rcx + rbp ]
adcx rcx, r14
mov rbp, 0x1eabfffeb153ffff 
mov [ rsp + 0x140 ], rcx
mulx rcx, r14, rbp
mov rbp, -0x2 
inc rbp
adox r14, rdi
setc dil
clc
adcx r13, r12
adox r10, rcx
adcx r14, r11
mov r13, 0x64774b84f38512bf 
mulx r11, r12, r13
mov rcx, 0x4b1ba7b6434bacd7 
mulx r13, rbp, rcx
adox r12, r8
mov r8, 0x1a0111ea397fe69a 
mov [ rsp + 0x148 ], r14
mulx r14, rcx, r8
adcx r10, r9
adox rbp, r11
adcx r12, rbx
adcx rbp, r15
adox rcx, r13
mov r9, 0x0 
adox r14, r9
adcx rcx, [ rsp + 0x138 ]
adcx r14, [ rsp + 0x140 ]
movzx rbx, dil
adc rbx, 0x0
mov r15, [ rsp + 0x148 ]
test al, al
adox r15, [ rsp + 0x40 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r11, rdi, r15
mov r11, 0xb9feffffffffaaab 
mov rdx, r11
mulx r13, r11, rdi
adox r10, [ rsp + 0x58 ]
adox r12, [ rsp + 0x90 ]
adox rbp, [ rsp + 0x88 ]
adcx r11, r15
adox rcx, [ rsp + 0x80 ]
mov r11, 0x1eabfffeb153ffff 
mov rdx, rdi
mulx r15, rdi, r11
adox r14, [ rsp + 0x78 ]
adox rbx, [ rsp + 0x70 ]
seto r8b
mov r11, -0x3 
inc r11
adox rdi, r13
adcx rdi, r10
mov r13, 0x6730d2a0f6b0f624 
mulx r9, r10, r13
mov r11, 0x64774b84f38512bf 
mov [ rsp + 0x150 ], rdi
mulx rdi, r13, r11
adox r10, r15
adox r13, r9
adcx r10, r12
adcx r13, rbp
mov r12, 0x4b1ba7b6434bacd7 
mulx r15, rbp, r12
adox rbp, rdi
mov r9, 0x1a0111ea397fe69a 
mulx r12, rdi, r9
adcx rbp, rcx
adox rdi, r15
mov rdx, 0x0 
adox r12, rdx
adcx rdi, r14
adcx r12, rbx
movzx rcx, r8b
adc rcx, 0x0
mov r14, [ rsp + 0x150 ]
mov r8, 0xb9feffffffffaaab 
sub r14, r8
mov rbx, r10
mov r15, 0x1eabfffeb153ffff 
sbb rbx, r15
mov rdx, r13
mov r9, 0x6730d2a0f6b0f624 
sbb rdx, r9
mov r15, rbp
sbb r15, r11
mov r11, rdi
mov r8, 0x4b1ba7b6434bacd7 
sbb r11, r8
mov r8, r12
mov r9, 0x1a0111ea397fe69a 
sbb r8, r9
sbb rcx, 0x00000000
cmovc rdx, r13
cmovc r14, [ rsp + 0x150 ]
cmovc r11, rdi
cmovc r8, r12
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x20 ], r11
cmovc r15, rbp
mov [ rcx + 0x18 ], r15
mov [ rcx + 0x10 ], rdx
cmovc rbx, r10
mov [ rcx + 0x8 ], rbx
mov [ rcx + 0x0 ], r14
mov [ rcx + 0x28 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 472
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.9816
; seed 0351919024692116 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 8241784 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=62, initial num_batches=31): 210194 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.025503458959856264
; number reverted permutation / tried permutation: 70588 / 89926 =78.496%
; number reverted decision / tried decision: 61677 / 90073 =68.474%
; validated in 62.26s
