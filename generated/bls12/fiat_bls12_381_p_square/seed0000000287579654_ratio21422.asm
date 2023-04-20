SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 384
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, [ rsi + 0x10 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], rbp
mulx rbp, rbx, r14
mov rdx, 0xb9feffffffffaaab 
mov [ rsp - 0x28 ], r15
mov [ rsp - 0x20 ], rdi
mulx rdi, r15, r14
xor rdx, rdx
adox rax, r13
adox r8, r10
adcx r15, r12
mov rdx, [ rsi + 0x20 ]
mulx r10, r15, [ rsi + 0x18 ]
adox r11, r9
mov rdx, 0x4b1ba7b6434bacd7 
mulx r12, r9, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x18 ], r10
mulx r10, r13, [ rsi + 0x20 ]
adox r13, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], r15
mulx r15, rcx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], r13
mov [ rsp + 0x0 ], r11
mulx r11, r13, [ rsi + 0x10 ]
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp + 0x8 ], r11
mov [ rsp + 0x10 ], r13
mulx r13, r11, r14
adox rcx, r10
mov r10, 0x0 
adox r15, r10
mov rdx, -0x3 
inc rdx
adox r11, rdi
adox rbx, r13
mov rdi, 0x64774b84f38512bf 
mov rdx, rdi
mulx r13, rdi, r14
adox rdi, rbp
adox r9, r13
adcx r11, rax
adcx rbx, r8
mov rbp, 0x1a0111ea397fe69a 
mov rdx, r14
mulx rax, r14, rbp
mov rdx, [ rsi + 0x8 ]
mulx r13, r8, rdx
adox r14, r12
adcx rdi, [ rsp + 0x0 ]
adcx r9, [ rsp - 0x8 ]
adcx r14, rcx
adox rax, r10
adcx rax, r15
mov rdx, -0x3 
inc rdx
adox r8, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, [ rsi + 0x10 ]
setc dl
clc
adcx r11, [ rsp - 0x28 ]
adox r12, r13
adcx r8, rbx
mov r15b, dl
mov rdx, [ rsi + 0x18 ]
mulx r13, rbx, [ rsi + 0x8 ]
adox rbx, rcx
adcx r12, rdi
mov rdx, 0x89f3fffcfffcfffd 
mulx rcx, rdi, r11
adcx rbx, r9
mov rdx, [ rsi + 0x28 ]
mulx r9, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r10, [ rsi + 0x8 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], rbx
mulx rbx, rcx, rdi
adox r10, r13
adcx r10, r14
mov rdx, [ rsi + 0x28 ]
mulx r13, r14, [ rsi + 0x8 ]
adox r14, rbp
adcx r14, rax
mov rdx, [ rsi + 0x28 ]
mulx rbp, rax, [ rsi + 0x8 ]
seto dl
mov [ rsp + 0x28 ], r14
mov r14, -0x2 
inc r14
adox rax, r9
movzx r9, dl
lea r9, [ r9 + r13 ]
mov rdx, [ rsi + 0x8 ]
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], rax
mov [ rsp + 0x38 ], r10
mulx r10, rax, [ rsi + 0x0 ]
adox rbp, [ rsp - 0x30 ]
movzx rdx, r15b
adcx rdx, r9
setc r15b
clc
adcx r13, r10
mov r9, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], rbp
mulx rbp, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x48 ], r13
mov [ rsp + 0x50 ], rax
mulx rax, r13, rdx
mov rdx, [ rsi + 0x10 ]
mov byte [ rsp + 0x58 ], r15b
mov [ rsp + 0x60 ], r9
mulx r9, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], r12
mov [ rsp + 0x70 ], r8
mulx r8, r12, [ rsi + 0x18 ]
adcx r13, r14
adcx r15, rax
mov rdx, [ rsi + 0x10 ]
mulx rax, r14, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], r13
mulx r13, r15, [ rsi + 0x18 ]
adcx r10, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r10
mulx r10, r9, [ rsi + 0x18 ]
adox r12, [ rsp - 0x38 ]
adox r8, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], r8
mov [ rsp + 0x98 ], r12
mulx r12, r8, [ rsi + 0x18 ]
seto dl
mov [ rsp + 0xa0 ], r9
mov r9, -0x2 
inc r9
adox r15, r10
mov r10, 0x1eabfffeb153ffff 
xchg rdx, r10
mov byte [ rsp + 0xa8 ], r10b
mulx r10, r9, rdi
adox r8, r13
adcx r14, rbp
mov rbp, 0xb9feffffffffaaab 
mov rdx, rbp
mulx r13, rbp, rdi
mov rdx, 0x0 
adcx rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r8
mov [ rsp + 0xb8 ], r15
mulx r15, r8, rdx
clc
adcx r9, r13
adcx rcx, r10
mov rdx, 0x64774b84f38512bf 
mulx r13, r10, rdi
adox r8, r12
adcx r10, rbx
mov rbx, 0x4b1ba7b6434bacd7 
mov rdx, rbx
mulx r12, rbx, rdi
adcx rbx, r13
mov r13, 0x1a0111ea397fe69a 
mov rdx, r13
mov [ rsp + 0xc0 ], r8
mulx r8, r13, rdi
adcx r13, r12
mov rdi, 0x0 
adcx r8, rdi
clc
adcx rbp, r11
adcx r9, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0x68 ]
adcx r10, [ rsp + 0x20 ]
adcx rbx, [ rsp + 0x38 ]
adcx r13, [ rsp + 0x28 ]
adcx r8, [ rsp + 0x60 ]
movzx rbp, byte [ rsp + 0x58 ]
adcx rbp, rdi
clc
adcx r9, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x48 ]
adcx r10, [ rsp + 0x80 ]
adcx rbx, [ rsp + 0x78 ]
mov rdx, [ rsi + 0x28 ]
mulx r12, r11, [ rsi + 0x18 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0xc8 ], r12
mulx r12, rdi, r9
mov r12, 0xb9feffffffffaaab 
mov rdx, rdi
mov [ rsp + 0xd0 ], rbx
mulx rbx, rdi, r12
adcx r13, [ rsp + 0x88 ]
adcx r14, r8
adox r15, [ rsp - 0x10 ]
adox r11, [ rsp - 0x18 ]
adcx rax, rbp
mov r8, 0x1eabfffeb153ffff 
mulx r12, rbp, r8
setc r8b
clc
adcx rdi, r9
seto dil
mov r9, -0x2 
inc r9
adox rbp, rbx
adcx rbp, rcx
mov rcx, 0x6730d2a0f6b0f624 
mulx r9, rbx, rcx
adox rbx, r12
adcx rbx, r10
mov r10, 0x64774b84f38512bf 
mulx rcx, r12, r10
adox r12, r9
mov r9, 0x4b1ba7b6434bacd7 
mov byte [ rsp + 0xd8 ], dil
mulx rdi, r10, r9
adcx r12, [ rsp + 0xd0 ]
adox r10, rcx
mov rcx, 0x1a0111ea397fe69a 
mov [ rsp + 0xe0 ], r11
mulx r11, r9, rcx
adox r9, rdi
adcx r10, r13
adcx r9, r14
mov rdx, 0x0 
adox r11, rdx
adcx r11, rax
mov r13, -0x3 
inc r13
adox rbp, [ rsp + 0xa0 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r14
mulx rax, r14, rbp
adox rbx, [ rsp + 0xb8 ]
adox r12, [ rsp + 0xb0 ]
movzx rax, r8b
mov rdi, 0x0 
adcx rax, rdi
adox r10, [ rsp + 0xc0 ]
adox r15, r9
adox r11, [ rsp + 0xe0 ]
movzx r8, byte [ rsp + 0xd8 ]
mov r9, [ rsp + 0xc8 ]
lea r8, [ r8 + r9 ]
mov r9, 0x1eabfffeb153ffff 
mov rdx, r9
mulx rdi, r9, r14
mov r13, 0xb9feffffffffaaab 
mov rdx, r14
mulx rcx, r14, r13
adox r8, rax
clc
adcx r9, rcx
seto al
mov rcx, -0x2 
inc rcx
adox r14, rbp
adox r9, rbx
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, rbp, [ rsi + 0x20 ]
mov rdx, 0x6730d2a0f6b0f624 
mulx r13, rcx, r14
adcx rcx, rdi
adox rcx, r12
mov r12, 0x64774b84f38512bf 
mov rdx, r12
mulx rdi, r12, r14
adcx r12, r13
adox r12, r10
mov r10, 0x4b1ba7b6434bacd7 
mov rdx, r10
mulx r13, r10, r14
adcx r10, rdi
adox r10, r15
mov r15, 0x1a0111ea397fe69a 
mov rdx, r14
mulx rdi, r14, r15
adcx r14, r13
mov rdx, [ rsi + 0x20 ]
mulx r15, r13, [ rsi + 0x8 ]
adox r14, r11
mov rdx, 0x0 
adcx rdi, rdx
adox rdi, r8
movzx r11, al
adox r11, rdx
xor rax, rax
adox r13, rbx
adox r15, [ rsp + 0x10 ]
adcx rbp, r9
adcx r13, rcx
mov rdx, 0x89f3fffcfffcfffd 
mulx r9, r8, rbp
mov rdx, [ rsi + 0x20 ]
mulx rbx, r9, rdx
adcx r15, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, [ rsi + 0x20 ]
adox rcx, [ rsp + 0x8 ]
adox r9, r12
adcx rcx, r10
mov rdx, [ rsi + 0x28 ]
mulx r12, r10, [ rsi + 0x20 ]
adox r10, rbx
adox r12, rax
adcx r9, r14
mov rdx, 0xb9feffffffffaaab 
mulx rbx, r14, r8
mov rdx, -0x3 
inc rdx
adox r14, rbp
adcx r10, rdi
mov r14, 0x1eabfffeb153ffff 
mov rdx, r8
mulx rdi, r8, r14
adcx r12, r11
mov r11, 0x6730d2a0f6b0f624 
mulx rax, rbp, r11
setc r14b
clc
adcx r8, rbx
adox r8, r13
mov r13, 0x64774b84f38512bf 
mulx r11, rbx, r13
adcx rbp, rdi
adox rbp, r15
adcx rbx, rax
adox rbx, rcx
mov r15, 0x4b1ba7b6434bacd7 
mulx rdi, rcx, r15
mov rax, 0x1a0111ea397fe69a 
mulx r13, r15, rax
adcx rcx, r11
adcx r15, rdi
adox rcx, r9
mov rdx, 0x0 
adcx r13, rdx
adox r15, r10
adox r13, r12
movzx r9, r14b
adox r9, rdx
xor r10, r10
adox r8, [ rsp + 0x18 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r12, r14, r8
adox rbp, [ rsp + 0x30 ]
mov r12, 0xb9feffffffffaaab 
mov rdx, r14
mulx r11, r14, r12
adox rbx, [ rsp + 0x40 ]
adox rcx, [ rsp + 0x98 ]
adox r15, [ rsp + 0x90 ]
mulx r10, rdi, rax
mov r12, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe8 ], r10
mulx r10, rax, rdx
movzx rdx, byte [ rsp + 0xa8 ]
mov [ rsp + 0xf0 ], rdi
mov rdi, -0x1 
adcx rdx, rdi
adcx rax, [ rsp - 0x48 ]
adox rax, r13
mov rdx, 0x0 
adcx r10, rdx
mov r13, 0x1eabfffeb153ffff 
mov rdx, r12
mulx rdi, r12, r13
clc
adcx r14, r8
adox r10, r9
mov r14, 0x6730d2a0f6b0f624 
mulx r8, r9, r14
seto r13b
mov r14, -0x2 
inc r14
adox r12, r11
mov r11, 0x64774b84f38512bf 
mov byte [ rsp + 0xf8 ], r13b
mulx r13, r14, r11
adcx r12, rbp
adox r9, rdi
adox r14, r8
adcx r9, rbx
adcx r14, rcx
mov rbp, 0x4b1ba7b6434bacd7 
mulx rcx, rbx, rbp
adox rbx, r13
adcx rbx, r15
adox rcx, [ rsp + 0xf0 ]
mov rdx, [ rsp + 0xe8 ]
mov r15, 0x0 
adox rdx, r15
adcx rcx, rax
adcx rdx, r10
movzx rax, byte [ rsp + 0xf8 ]
adc rax, 0x0
mov rdi, r12
mov r10, 0xb9feffffffffaaab 
sub rdi, r10
mov r8, r9
mov r13, 0x1eabfffeb153ffff 
sbb r8, r13
mov r15, r14
mov rbp, 0x6730d2a0f6b0f624 
sbb r15, rbp
mov r10, rbx
sbb r10, r11
mov r11, rcx
mov r13, 0x4b1ba7b6434bacd7 
sbb r11, r13
mov r13, rdx
mov rbp, 0x1a0111ea397fe69a 
sbb r13, rbp
sbb rax, 0x00000000
cmovc r8, r9
cmovc r15, r14
cmovc r13, rdx
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x8 ], r8
mov [ rax + 0x10 ], r15
cmovc r11, rcx
mov [ rax + 0x20 ], r11
cmovc rdi, r12
mov [ rax + 0x0 ], rdi
cmovc r10, rbx
mov [ rax + 0x28 ], r13
mov [ rax + 0x18 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 384
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 2.1422
; seed 2012572372430084 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5561706 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 131967 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.023727791436656306
; number reverted permutation / tried permutation: 62506 / 89629 =69.739%
; number reverted decision / tried decision: 58440 / 90370 =64.667%
; validated in 33.797s
