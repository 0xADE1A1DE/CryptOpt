SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 440
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r8
mulx r8, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], rcx
mov [ rsp - 0x30 ], r12
mulx r12, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], rbp
mulx rbp, rcx, [ rax + 0x10 ]
xor rdx, rdx
adox r15, r12
adox rcx, r8
mov rdx, [ rax + 0x8 ]
mulx r12, r8, [ rsi + 0x10 ]
adcx r8, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x18 ], rcx
mulx rcx, rdi, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], r15
mov [ rsp - 0x8 ], r8
mulx r8, r15, [ rsi + 0x18 ]
adcx r9, r12
adox r15, rbp
mov rdx, [ rsi + 0x20 ]
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x0 ], r15
mov [ rsp + 0x8 ], r9
mulx r9, r15, [ rsi + 0x20 ]
setc dl
clc
adcx rbp, r9
adcx r13, r12
mov r12b, dl
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x10 ], r13
mulx r13, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], rbp
mov [ rsp + 0x20 ], r15
mulx r15, rbp, [ rax + 0x18 ]
adcx rbp, r14
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x28 ], rbp
mulx rbp, r14, [ rsi + 0x20 ]
adcx r14, r15
adcx r9, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, r15, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r9
mov [ rsp + 0x38 ], r14
mulx r14, r9, [ rax + 0x28 ]
mov rdx, 0x0 
adcx r13, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r13
mov [ rsp + 0x48 ], r15
mulx r15, r13, [ rsi + 0x18 ]
adox r13, r8
adox r9, r15
mov rdx, [ rax + 0x10 ]
mulx r15, r8, [ rsi + 0x8 ]
clc
adcx r10, rbp
adcx r8, r11
mov rdx, [ rax + 0x20 ]
mulx rbp, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x50 ], r9
mov [ rsp + 0x58 ], r13
mulx r13, r9, [ rax + 0x18 ]
adcx r9, r15
adcx r11, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, r15, [ rax + 0x28 ]
mov rdx, 0x0 
adox r14, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x60 ], r14
mov [ rsp + 0x68 ], r11
mulx r11, r14, [ rsi + 0x28 ]
adcx r15, rbp
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x70 ], r15
mulx r15, rbp, [ rsi + 0x28 ]
adc r13, 0x0
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x78 ], rbp
mov [ rsp + 0x80 ], r13
mulx r13, rbp, [ rax + 0x18 ]
add r12b, 0x7F
adox rbx, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbp, r12, [ rax + 0x8 ]
adcx r12, r15
adcx r14, rbp
mov rdx, [ rax + 0x20 ]
mulx rbp, r15, [ rsi + 0x10 ]
adcx r11, [ rsp - 0x20 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x88 ], r11
mov [ rsp + 0x90 ], r14
mulx r14, r11, [ rsi + 0x28 ]
adcx r11, [ rsp - 0x30 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x98 ], r11
mov [ rsp + 0xa0 ], r12
mulx r12, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa8 ], rbx
mov [ rsp + 0xb0 ], r9
mulx r9, rbx, [ rax + 0x10 ]
adcx r11, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], r11
mulx r11, r14, [ rax + 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xc0 ], r8
mov [ rsp + 0xc8 ], r10
mulx r10, r8, [ rsi + 0x10 ]
adox r15, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xd0 ], r15
mulx r15, r13, [ rax + 0x18 ]
mov rdx, 0x0 
adcx r12, rdx
adox r8, rbp
adox r10, rdx
add rcx, [ rsp - 0x38 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xd8 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
adcx rbx, [ rsp - 0x40 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0xe0 ], r10
mov [ rsp + 0xe8 ], r8
mulx r8, r10, rdi
adcx r13, r9
adcx rbp, r15
adcx r14, r12
adc r11, 0x0
mov r8, 0xb9feffffffffaaab 
mov rdx, r10
mulx r9, r10, r8
test al, al
adox r10, rdi
mov r10, 0x1eabfffeb153ffff 
mulx r15, rdi, r10
adcx rdi, r9
mov r12, 0x6730d2a0f6b0f624 
mulx r10, r9, r12
mov r12, 0x64774b84f38512bf 
mov [ rsp + 0xf0 ], r11
mulx r11, r8, r12
adcx r9, r15
adox rdi, rcx
mov rcx, 0x4b1ba7b6434bacd7 
mulx r12, r15, rcx
adcx r8, r10
adcx r15, r11
mov r10, 0x1a0111ea397fe69a 
mulx rcx, r11, r10
adox r9, rbx
adox r8, r13
adcx r11, r12
mov rbx, 0x0 
adcx rcx, rbx
clc
adcx rdi, [ rsp + 0x48 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r12, r13, rdi
adcx r9, [ rsp + 0xc8 ]
mov r12, 0x6730d2a0f6b0f624 
mov rdx, r12
mulx rbx, r12, r13
mov r10, 0x1eabfffeb153ffff 
mov rdx, r13
mov [ rsp + 0xf8 ], rbx
mulx rbx, r13, r10
adox r15, rbp
adox r11, r14
adox rcx, [ rsp + 0xf0 ]
adcx r8, [ rsp + 0xc0 ]
adcx r15, [ rsp + 0xb0 ]
adcx r11, [ rsp + 0x68 ]
adcx rcx, [ rsp + 0x70 ]
mov rbp, 0xb9feffffffffaaab 
mulx r10, r14, rbp
setc bpl
movzx rbp, bpl
adox rbp, [ rsp + 0x80 ]
clc
adcx r13, r10
seto r10b
mov [ rsp + 0x100 ], rbp
mov rbp, -0x2 
inc rbp
adox r14, rdi
mov r14, 0x64774b84f38512bf 
mulx rbp, rdi, r14
adcx r12, rbx
adox r13, r9
adox r12, r8
adcx rdi, [ rsp + 0xf8 ]
mov r9, 0x4b1ba7b6434bacd7 
mulx r8, rbx, r9
adcx rbx, rbp
adox rdi, r15
mov r15, 0x1a0111ea397fe69a 
mulx r9, rbp, r15
adox rbx, r11
adcx rbp, r8
mov rdx, 0x0 
adcx r9, rdx
adox rbp, rcx
adox r9, [ rsp + 0x100 ]
movzx r11, r10b
adox r11, rdx
xor rcx, rcx
adox r13, [ rsp - 0x48 ]
adox r12, [ rsp - 0x8 ]
adox rdi, [ rsp + 0x8 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r8, r10, r13
mov r8, 0x4b1ba7b6434bacd7 
mov rdx, r10
mulx rcx, r10, r8
adox rbx, [ rsp + 0xa8 ]
mov r15, 0x1eabfffeb153ffff 
mulx r14, r8, r15
adox rbp, [ rsp + 0xd0 ]
adox r9, [ rsp + 0xe8 ]
mov r15, 0xb9feffffffffaaab 
mov [ rsp + 0x108 ], r9
mov [ rsp + 0x110 ], rcx
mulx rcx, r9, r15
adcx r8, rcx
mov rcx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x118 ], rbp
mulx rbp, r15, rcx
adcx r15, r14
adox r11, [ rsp + 0xe0 ]
seto r14b
mov rcx, -0x2 
inc rcx
adox r9, r13
mov r9, 0x64774b84f38512bf 
mulx rcx, r13, r9
adox r8, r12
adox r15, rdi
adcx r13, rbp
adox r13, rbx
mov r12, 0x1a0111ea397fe69a 
mulx rbx, rdi, r12
adcx r10, rcx
adox r10, [ rsp + 0x118 ]
adcx rdi, [ rsp + 0x110 ]
adox rdi, [ rsp + 0x108 ]
mov rdx, 0x0 
adcx rbx, rdx
adox rbx, r11
clc
adcx r8, [ rsp - 0x28 ]
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, r8
mulx r11, r8, rbp
adcx r15, [ rsp - 0x10 ]
mov r11, 0xb9feffffffffaaab 
xchg rdx, r8
mulx r12, rcx, r11
movzx r9, r14b
mov r11, 0x0 
adox r9, r11
adcx r13, [ rsp - 0x18 ]
mov r14, -0x3 
inc r14
adox rcx, r8
adcx r10, [ rsp + 0x0 ]
adcx rdi, [ rsp + 0x58 ]
adcx rbx, [ rsp + 0x50 ]
mov rcx, 0x1eabfffeb153ffff 
mulx r11, r8, rcx
adcx r9, [ rsp + 0x60 ]
mov r14, 0x6730d2a0f6b0f624 
mulx rbp, rcx, r14
setc r14b
clc
adcx r8, r12
adox r8, r15
adcx rcx, r11
adox rcx, r13
mov r15, 0x64774b84f38512bf 
mulx r13, r12, r15
adcx r12, rbp
adox r12, r10
mov r10, 0x4b1ba7b6434bacd7 
mulx rbp, r11, r10
adcx r11, r13
adox r11, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r10, r13, rdi
adcx r13, rbp
mov rdx, 0x0 
adcx r10, rdx
adox r13, rbx
adox r10, r9
movzx rbx, r14b
adox rbx, rdx
xor r14, r14
adox r8, [ rsp + 0x20 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rbp, r9, r8
adox rcx, [ rsp + 0x18 ]
adox r12, [ rsp + 0x10 ]
mov rbp, 0x6730d2a0f6b0f624 
mov rdx, r9
mulx r14, r9, rbp
mov rdi, 0x1eabfffeb153ffff 
mulx rbp, r15, rdi
adox r11, [ rsp + 0x28 ]
adox r13, [ rsp + 0x38 ]
adox r10, [ rsp + 0x30 ]
mov rdi, 0xb9feffffffffaaab 
mov [ rsp + 0x120 ], r10
mov [ rsp + 0x128 ], r13
mulx r13, r10, rdi
adox rbx, [ rsp + 0x40 ]
adcx r10, r8
seto r10b
mov r8, -0x2 
inc r8
adox r15, r13
adox r9, rbp
adcx r15, rcx
adcx r9, r12
mov rcx, 0x4b1ba7b6434bacd7 
mulx rbp, r12, rcx
mov r13, 0x64774b84f38512bf 
mulx rcx, r8, r13
adox r8, r14
adcx r8, r11
adox r12, rcx
adcx r12, [ rsp + 0x128 ]
mov r14, 0x1a0111ea397fe69a 
mulx rcx, r11, r14
adox r11, rbp
adcx r11, [ rsp + 0x120 ]
mov rdx, 0x0 
adox rcx, rdx
adcx rcx, rbx
movzx rbx, r10b
adc rbx, 0x0
xor r10, r10
adox r15, [ rsp + 0x78 ]
adox r9, [ rsp + 0xa0 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r10, rbp, r15
adox r8, [ rsp + 0x90 ]
adox r12, [ rsp + 0x88 ]
mov rdx, rbp
mulx rbp, r10, rdi
adox r11, [ rsp + 0x98 ]
adox rcx, [ rsp + 0xb8 ]
adcx r10, r15
adox rbx, [ rsp + 0xd8 ]
mov r10, 0x1eabfffeb153ffff 
mulx r14, r15, r10
seto r13b
mov r10, -0x2 
inc r10
adox r15, rbp
mov rbp, 0x6730d2a0f6b0f624 
mulx rdi, r10, rbp
adox r10, r14
adcx r15, r9
adcx r10, r8
mov r9, 0x64774b84f38512bf 
mulx r14, r8, r9
adox r8, rdi
adcx r8, r12
mov r12, 0x4b1ba7b6434bacd7 
mulx r9, rdi, r12
adox rdi, r14
adcx rdi, r11
mov r11, 0x1a0111ea397fe69a 
mulx r12, r14, r11
adox r14, r9
adcx r14, rcx
mov rdx, 0x0 
adox r12, rdx
adcx r12, rbx
movzx rcx, r13b
adc rcx, 0x0
mov r13, r15
mov rbx, 0xb9feffffffffaaab 
sub r13, rbx
mov r9, r10
mov rdx, 0x1eabfffeb153ffff 
sbb r9, rdx
mov r11, r8
sbb r11, rbp
mov rbp, rdi
mov rdx, 0x64774b84f38512bf 
sbb rbp, rdx
mov rdx, r14
mov rbx, 0x4b1ba7b6434bacd7 
sbb rdx, rbx
mov rbx, r12
mov [ rsp + 0x130 ], r13
mov r13, 0x1a0111ea397fe69a 
sbb rbx, r13
sbb rcx, 0x00000000
cmovc r11, r8
cmovc rdx, r14
cmovc rbx, r12
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x28 ], rbx
cmovc r9, r10
mov [ rcx + 0x8 ], r9
mov [ rcx + 0x10 ], r11
cmovc rbp, rdi
mov r10, [ rsp + 0x130 ]
cmovc r10, r15
mov [ rcx + 0x20 ], rdx
mov [ rcx + 0x18 ], rbp
mov [ rcx + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 440
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8931
; seed 0398524151276258 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5605738 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 136427 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.024337027524297426
; number reverted permutation / tried permutation: 69005 / 90236 =76.472%
; number reverted decision / tried decision: 62009 / 89763 =69.081%
; validated in 46.898s
