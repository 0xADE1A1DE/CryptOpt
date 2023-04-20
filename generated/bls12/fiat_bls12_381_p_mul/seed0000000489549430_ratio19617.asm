SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 464
mov rax, rdx
mov rdx, [ rsi + 0x28 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], r15
mulx r15, r10, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r12
mulx r12, r13, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], rbp
mulx rbp, rdi, [ rax + 0x0 ]
test al, al
adox r13, r11
adox rcx, r12
mov rdx, [ rax + 0x18 ]
mulx r12, r11, [ rsi + 0x28 ]
adox r11, r8
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x18 ], r11
mulx r11, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], rcx
mov [ rsp - 0x8 ], r13
mulx r13, rcx, [ rax + 0x28 ]
adox r10, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], r10
mulx r10, r12, [ rax + 0x18 ]
adox rcx, r15
adcx r9, r14
mov rdx, [ rax + 0x10 ]
mulx r15, r14, [ rsi + 0x10 ]
adcx r14, rbx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x8 ], rcx
mulx rcx, rbx, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], rdi
mulx rdi, rcx, [ rax + 0x28 ]
mov rdx, 0x0 
adox r13, rdx
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x18 ], r13
mov [ rsp + 0x20 ], r14
mulx r14, r13, rbx
adcx r12, r15
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x28 ], r12
mulx r12, r15, [ rsi + 0x10 ]
adcx r15, r10
adcx rcx, r12
mov rdx, [ rsi + 0x20 ]
mulx r12, r10, [ rax + 0x8 ]
adc rdi, 0x0
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rdi
mov [ rsp + 0x38 ], rcx
mulx rcx, rdi, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], r15
mov [ rsp + 0x48 ], r9
mulx r9, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x50 ], r11
mov [ rsp + 0x58 ], r8
mulx r8, r11, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x60 ], r10
mulx r10, rbp, [ rax + 0x20 ]
adox rdi, r12
adcx r11, [ rsp - 0x28 ]
adox r15, rcx
adox rbp, r9
mov rdx, [ rsi + 0x20 ]
mulx rcx, r12, [ rax + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x68 ], rbp
mulx rbp, r9, [ rsi + 0x18 ]
adox r12, r10
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x70 ], r12
mulx r12, r10, [ rsi + 0x0 ]
adcx r9, r8
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x78 ], r15
mulx r15, r8, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rcx, rdx
mov [ rsp + 0x80 ], rcx
mov rcx, -0x3 
inc rcx
adox r8, [ rsp - 0x30 ]
adox r10, r15
mov rdx, [ rsi + 0x18 ]
mulx rcx, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x88 ], rdi
mov [ rsp + 0x90 ], r9
mulx r9, rdi, [ rsi + 0x0 ]
adcx r15, rbp
adox rdi, r12
mov rdx, [ rax + 0x20 ]
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x98 ], r15
mov [ rsp + 0xa0 ], r11
mulx r11, r15, [ rsi + 0x0 ]
adox rbp, r9
adox r15, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, r9, [ rax + 0x20 ]
adcx r9, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r9
mulx r9, rcx, [ rax + 0x28 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xb0 ], r15
mov [ rsp + 0xb8 ], rbp
mulx rbp, r15, rbx
adcx rcx, r12
mov r12, 0x4b1ba7b6434bacd7 
mov rdx, rbx
mov [ rsp + 0xc0 ], rcx
mulx rcx, rbx, r12
mov r12, 0x0 
adox r11, r12
adc r9, 0x0
mov r12, 0x1eabfffeb153ffff 
mov [ rsp + 0xc8 ], r9
mov [ rsp + 0xd0 ], r11
mulx r11, r9, r12
xor r12, r12
adox r9, rbp
adox r13, r11
adcx r15, [ rsp - 0x20 ]
adcx r9, r8
adcx r13, r10
mov r15, 0x64774b84f38512bf 
mulx r10, r8, r15
adox r8, r14
adcx r8, rdi
mov r14, 0x1a0111ea397fe69a 
mulx rbp, rdi, r14
adox rbx, r10
adox rdi, rcx
mov rdx, [ rsi + 0x8 ]
mulx r11, rcx, [ rax + 0x0 ]
adcx rbx, [ rsp + 0xb8 ]
setc dl
clc
adcx rcx, r9
setc r9b
clc
mov r10, -0x1 
movzx rdx, dl
adcx rdx, r10
adcx rdi, [ rsp + 0xb0 ]
mov rdx, [ rsi + 0x8 ]
mulx r10, r12, [ rax + 0x10 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r15, r14, rcx
mov r15, 0x1eabfffeb153ffff 
mov rdx, r15
mov [ rsp + 0xd8 ], rdi
mulx rdi, r15, r14
mov rdx, 0x0 
adox rbp, rdx
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0xe0 ], rbx
mov [ rsp + 0xe8 ], r8
mulx r8, rbx, r14
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xf0 ], r13
mov byte [ rsp + 0xf8 ], r9b
mulx r9, r13, r14
adcx rbp, [ rsp + 0xd0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x100 ], rbp
mov [ rsp + 0x108 ], r13
mulx r13, rbp, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox rbp, r11
adox r12, r13
mov r11, 0x64774b84f38512bf 
mov rdx, r11
mulx r13, r11, r14
setc dl
clc
adcx r15, r9
adcx rbx, rdi
adcx r11, r8
mov rdi, 0x4b1ba7b6434bacd7 
xchg rdx, rdi
mulx r9, r8, r14
mov rdx, 0x1a0111ea397fe69a 
mov byte [ rsp + 0x110 ], dil
mov [ rsp + 0x118 ], r11
mulx r11, rdi, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x120 ], rbx
mulx rbx, r14, [ rax + 0x20 ]
adcx r8, r13
adcx rdi, r9
adox r10, [ rsp + 0x58 ]
adox r14, [ rsp + 0x50 ]
mov rdx, [ rax + 0x28 ]
mulx r9, r13, [ rsi + 0x8 ]
adox r13, rbx
mov rdx, 0x0 
adcx r11, rdx
adox r9, rdx
add byte [ rsp + 0xf8 ], 0x7F
adox rbp, [ rsp + 0xf0 ]
adox r12, [ rsp + 0xe8 ]
adcx rcx, [ rsp + 0x108 ]
adcx r15, rbp
adox r10, [ rsp + 0xe0 ]
adcx r12, [ rsp + 0x120 ]
adcx r10, [ rsp + 0x118 ]
adox r14, [ rsp + 0xd8 ]
adox r13, [ rsp + 0x100 ]
adcx r8, r14
adcx rdi, r13
movzx rcx, byte [ rsp + 0x110 ]
adox rcx, r9
adcx r11, rcx
seto bl
mov r9, -0x3 
inc r9
adox r15, [ rsp - 0x38 ]
adox r12, [ rsp + 0x48 ]
movzx rbp, bl
adcx rbp, rdx
adox r10, [ rsp + 0x20 ]
adox r8, [ rsp + 0x28 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r14
mulx r13, r14, r15
adox rdi, [ rsp + 0x40 ]
mov r13, 0xb9feffffffffaaab 
mov rdx, r14
mulx rbx, r14, r13
mov rcx, 0x1eabfffeb153ffff 
mulx r13, r9, rcx
clc
adcx r9, rbx
adox r11, [ rsp + 0x38 ]
adox rbp, [ rsp + 0x30 ]
seto bl
mov rcx, -0x2 
inc rcx
adox r14, r15
mov r14, 0x6730d2a0f6b0f624 
mulx rcx, r15, r14
adcx r15, r13
adox r9, r12
mov r12, 0x64774b84f38512bf 
mulx r14, r13, r12
adox r15, r10
adcx r13, rcx
adox r13, r8
mov r10, 0x4b1ba7b6434bacd7 
mulx rcx, r8, r10
adcx r8, r14
adox r8, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r12, r14, rdi
adcx r14, rcx
adox r14, r11
mov rdx, 0x0 
adcx r12, rdx
adox r12, rbp
movzx r11, bl
adox r11, rdx
xor rbx, rbx
adox r9, [ rsp - 0x40 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rcx, rbp, r9
mov rcx, 0x6730d2a0f6b0f624 
mov rdx, rbp
mulx rbx, rbp, rcx
adox r15, [ rsp + 0xa0 ]
adox r13, [ rsp + 0x90 ]
mov rdi, 0xb9feffffffffaaab 
mulx rcx, r10, rdi
mov rdi, 0x1eabfffeb153ffff 
mov [ rsp + 0x128 ], r13
mov [ rsp + 0x130 ], r15
mulx r15, r13, rdi
adox r8, [ rsp + 0x98 ]
adcx r13, rcx
mov rcx, 0x64774b84f38512bf 
mov [ rsp + 0x138 ], r8
mulx r8, rdi, rcx
adcx rbp, r15
adcx rdi, rbx
adox r14, [ rsp + 0xa8 ]
adox r12, [ rsp + 0xc0 ]
adox r11, [ rsp + 0xc8 ]
seto bl
mov r15, -0x2 
inc r15
adox r10, r9
adox r13, [ rsp + 0x130 ]
adox rbp, [ rsp + 0x128 ]
adox rdi, [ rsp + 0x138 ]
mov r10, 0x4b1ba7b6434bacd7 
mulx r15, r9, r10
adcx r9, r8
adox r9, r14
mov r8, 0x1a0111ea397fe69a 
mulx rcx, r14, r8
adcx r14, r15
mov rdx, 0x0 
adcx rcx, rdx
adox r14, r12
adox rcx, r11
movzx r12, bl
adox r12, rdx
add r13, [ rsp + 0x10 ]
adcx rbp, [ rsp + 0x60 ]
adcx rdi, [ rsp + 0x88 ]
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx r11, rbx, r13
mov r11, 0x1eabfffeb153ffff 
mov rdx, rbx
mulx r15, rbx, r11
mov r8, 0xb9feffffffffaaab 
mulx r10, r11, r8
adcx r9, [ rsp + 0x78 ]
mov r8, -0x2 
inc r8
adox rbx, r10
adcx r14, [ rsp + 0x68 ]
mov r10, 0x6730d2a0f6b0f624 
mov [ rsp + 0x140 ], r14
mulx r14, r8, r10
adox r8, r15
adcx rcx, [ rsp + 0x70 ]
adcx r12, [ rsp + 0x80 ]
setc r15b
clc
adcx r11, r13
mov r11, 0x64774b84f38512bf 
mulx r10, r13, r11
adcx rbx, rbp
adcx r8, rdi
adox r13, r14
mov rbp, 0x4b1ba7b6434bacd7 
mulx r14, rdi, rbp
adox rdi, r10
mov r10, 0x1a0111ea397fe69a 
mulx rbp, r11, r10
adox r11, r14
adcx r13, r9
adcx rdi, [ rsp + 0x140 ]
mov rdx, 0x0 
adox rbp, rdx
adcx r11, rcx
adcx rbp, r12
movzx r9, r15b
adc r9, 0x0
xor rcx, rcx
adox rbx, [ rsp - 0x48 ]
adox r8, [ rsp - 0x8 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r12, r15, rbx
mov r12, 0x1eabfffeb153ffff 
mov rdx, r15
mulx r14, r15, r12
adox r13, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
adox r11, [ rsp + 0x0 ]
adox rbp, [ rsp + 0x8 ]
mov rcx, 0xb9feffffffffaaab 
mulx r12, r10, rcx
adcx r10, rbx
adox r9, [ rsp + 0x18 ]
seto r10b
mov rbx, -0x2 
inc rbx
adox r15, r12
adcx r15, r8
mov r8, 0x6730d2a0f6b0f624 
mulx rbx, r12, r8
adox r12, r14
mov r14, 0x64774b84f38512bf 
mulx rcx, r8, r14
adcx r12, r13
adox r8, rbx
mov r13, 0x4b1ba7b6434bacd7 
mulx r14, rbx, r13
adox rbx, rcx
adcx r8, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r13, rcx, rdi
adcx rbx, r11
adox rcx, r14
mov rdx, 0x0 
adox r13, rdx
adcx rcx, rbp
adcx r13, r9
movzx r11, r10b
adc r11, 0x0
mov rbp, r15
mov r10, 0xb9feffffffffaaab 
sub rbp, r10
mov r9, r12
mov r14, 0x1eabfffeb153ffff 
sbb r9, r14
mov rdx, r8
mov rdi, 0x6730d2a0f6b0f624 
sbb rdx, rdi
mov rdi, rbx
mov r14, 0x64774b84f38512bf 
sbb rdi, r14
mov r14, rcx
mov r10, 0x4b1ba7b6434bacd7 
sbb r14, r10
mov r10, r13
mov [ rsp + 0x148 ], rbp
mov rbp, 0x1a0111ea397fe69a 
sbb r10, rbp
sbb r11, 0x00000000
cmovc r10, r13
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x28 ], r10
cmovc rdi, rbx
cmovc r9, r12
cmovc rdx, r8
mov [ r11 + 0x10 ], rdx
cmovc r14, rcx
mov [ r11 + 0x20 ], r14
mov r12, [ rsp + 0x148 ]
cmovc r12, r15
mov [ r11 + 0x0 ], r12
mov [ r11 + 0x18 ], rdi
mov [ r11 + 0x8 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 464
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.9617
; seed 0920088807335815 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7916696 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=56, initial num_batches=31): 205672 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02597952479165551
; number reverted permutation / tried permutation: 70864 / 90143 =78.613%
; number reverted decision / tried decision: 62629 / 89856 =69.699%
; validated in 69.87s
