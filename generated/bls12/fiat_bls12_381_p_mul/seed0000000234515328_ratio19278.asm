SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 392
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
test al, al
adox r9, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rsi + 0x10 ]
adox r8, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r8
mulx r8, rbx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rcx
mov [ rsp - 0x30 ], rdi
mulx rdi, rcx, [ rax + 0x20 ]
adcx r10, r9
adcx rbx, r11
mov rdx, [ rsi + 0x10 ]
mulx r9, r11, [ rax + 0x18 ]
adcx r11, r8
adcx rcx, r9
mov rdx, [ rax + 0x18 ]
mulx r9, r8, [ rsi + 0x18 ]
adox r8, r15
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x28 ], r8
mulx r8, r15, [ rsi + 0x10 ]
adcx r15, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x20 ], r15
mulx r15, rdi, [ rax + 0x8 ]
adox r13, r9
mov rdx, 0x0 
adcx r8, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x18 ], r13
mulx r13, r9, [ rsi + 0x18 ]
adox r9, r14
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], r9
mulx r9, r14, [ rax + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x8 ], r14
mov [ rsp + 0x0 ], r8
mulx r8, r14, [ rax + 0x10 ]
clc
adcx rdi, r9
mov rdx, 0x0 
adox r13, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], rdi
mulx rdi, r9, [ rax + 0x20 ]
adcx r14, r15
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x10 ], r14
mulx r14, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x18 ], r13
mov [ rsp + 0x20 ], rcx
mulx rcx, r13, [ rax + 0x28 ]
adcx r15, r8
adcx r9, r14
mov rdx, [ rsi + 0x20 ]
mulx r14, r8, [ rax + 0x0 ]
adcx r13, rdi
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x28 ], r13
mulx r13, rdi, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x30 ], r9
mov [ rsp + 0x38 ], r15
mulx r15, r9, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x40 ], r8
mov [ rsp + 0x48 ], r11
mulx r11, r8, [ rsi + 0x8 ]
adc rcx, 0x0
xor rdx, rdx
adox r9, r14
adox rdi, r15
mov rdx, [ rax + 0x0 ]
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x50 ], rcx
mov [ rsp + 0x58 ], rdi
mulx rdi, rcx, [ rsi + 0x8 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], rbx
mulx rbx, r9, r14
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x70 ], r10
mulx r10, rbx, [ rsi + 0x8 ]
adcx rcx, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], rcx
mulx rcx, r11, [ rax + 0x20 ]
adcx rbp, rdi
adcx rbx, r12
adcx r11, r10
mov rdx, [ rsi + 0x8 ]
mulx rdi, r12, [ rax + 0x28 ]
adcx r12, rcx
mov rdx, 0x64774b84f38512bf 
mulx rcx, r10, r9
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x80 ], r12
mov [ rsp + 0x88 ], r11
mulx r11, r12, [ rsi + 0x20 ]
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x90 ], rdi
mov [ rsp + 0x98 ], rbx
mulx rbx, rdi, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xa0 ], rbp
mov [ rsp + 0xa8 ], r8
mulx r8, rbp, [ rsi + 0x0 ]
adox rdi, r13
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xb0 ], rdi
mulx rdi, r13, [ rsi + 0x0 ]
clc
adcx rbp, r15
adcx r13, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, r15, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], rcx
mov [ rsp + 0xc0 ], r13
mulx r13, rcx, [ rax + 0x20 ]
adcx r15, rdi
adox rcx, rbx
adox r12, r13
mov rdx, 0x0 
adox r11, rdx
mov rdx, [ rax + 0x28 ]
mulx rdi, rbx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xc8 ], r11
mulx r11, r13, [ rsi + 0x0 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xd0 ], r12
mov [ rsp + 0xd8 ], rcx
mulx rcx, r12, r9
adcx r13, r8
adcx rbx, r11
adc rdi, 0x0
test al, al
adox r12, r14
mov r12, 0x1eabfffeb153ffff 
mov rdx, r9
mulx r14, r9, r12
adcx r9, rcx
mov r8, 0x6730d2a0f6b0f624 
mulx rcx, r11, r8
adcx r11, r14
adcx r10, rcx
adox r9, rbp
adox r11, [ rsp + 0xc0 ]
mov rbp, 0x4b1ba7b6434bacd7 
mulx rcx, r14, rbp
adcx r14, [ rsp + 0xb8 ]
mov rbp, 0x1a0111ea397fe69a 
mulx r12, r8, rbp
adox r10, r15
adox r14, r13
adcx r8, rcx
adox r8, rbx
mov rdx, 0x0 
adcx r12, rdx
clc
adcx r9, [ rsp + 0xa8 ]
adcx r11, [ rsp + 0x78 ]
mov r15, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r13, r15, r9
mov r13, 0x1eabfffeb153ffff 
mov rdx, r15
mulx rbx, r15, r13
adcx r10, [ rsp + 0xa0 ]
adcx r14, [ rsp + 0x98 ]
adcx r8, [ rsp + 0x88 ]
adox r12, rdi
adcx r12, [ rsp + 0x80 ]
mov rdi, 0x64774b84f38512bf 
mulx rbp, rcx, rdi
setc r13b
movzx r13, r13b
adox r13, [ rsp + 0x90 ]
mov rdi, 0xb9feffffffffaaab 
mov [ rsp + 0xe0 ], r13
mov [ rsp + 0xe8 ], r12
mulx r12, r13, rdi
clc
adcx r15, r12
seto r12b
mov rdi, -0x2 
inc rdi
adox r13, r9
mov r13, 0x6730d2a0f6b0f624 
mulx rdi, r9, r13
adcx r9, rbx
adcx rcx, rdi
adox r15, r11
adox r9, r10
adox rcx, r14
mov r11, 0x4b1ba7b6434bacd7 
mulx r10, rbx, r11
adcx rbx, rbp
mov r14, 0x1a0111ea397fe69a 
mulx rdi, rbp, r14
adcx rbp, r10
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r15, [ rsp - 0x30 ]
adcx r9, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0x68 ]
adox rbx, r8
adox rbp, [ rsp + 0xe8 ]
adox rdi, [ rsp + 0xe0 ]
adcx rbx, [ rsp + 0x48 ]
adcx rbp, [ rsp + 0x20 ]
adcx rdi, [ rsp - 0x20 ]
mov r8, 0x89f3fffcfffcfffd 
mov rdx, r8
mulx r10, r8, r15
movzx r10, r12b
mov r14, 0x0 
adox r10, r14
mov rdx, r8
mulx r12, r8, r13
mov r14, 0xb9feffffffffaaab 
mulx r13, r11, r14
mov r14, -0x2 
inc r14
adox r11, r15
adcx r10, [ rsp + 0x0 ]
mov r11, 0x1eabfffeb153ffff 
mulx r14, r15, r11
setc r11b
clc
adcx r15, r13
adcx r8, r14
adox r15, r9
adox r8, rcx
mov r9, 0x64774b84f38512bf 
mulx r13, rcx, r9
adcx rcx, r12
mov r12, 0x4b1ba7b6434bacd7 
mulx r9, r14, r12
adox rcx, rbx
adcx r14, r13
adox r14, rbp
mov rbx, 0x1a0111ea397fe69a 
mulx r13, rbp, rbx
adcx rbp, r9
adox rbp, rdi
mov rdi, 0x0 
adcx r13, rdi
adox r13, r10
clc
adcx r15, [ rsp - 0x38 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r9, r10, r15
adcx r8, [ rsp - 0x48 ]
movzx r9, r11b
adox r9, rdi
mov r11, 0xb9feffffffffaaab 
mov rdx, r11
mulx rdi, r11, r10
mov rdx, r10
mulx rbx, r10, r12
adcx rcx, [ rsp - 0x40 ]
mov r12, -0x2 
inc r12
adox r11, r15
mov r11, 0x1eabfffeb153ffff 
mulx r12, r15, r11
adcx r14, [ rsp - 0x28 ]
adcx rbp, [ rsp - 0x18 ]
adcx r13, [ rsp - 0x10 ]
mov r11, 0x6730d2a0f6b0f624 
mov [ rsp + 0xf0 ], r13
mov [ rsp + 0xf8 ], rbx
mulx rbx, r13, r11
adcx r9, [ rsp + 0x18 ]
setc r11b
clc
adcx r15, rdi
adcx r13, r12
adox r15, r8
adox r13, rcx
mov r8, 0x64774b84f38512bf 
mulx rcx, rdi, r8
adcx rdi, rbx
adcx r10, rcx
adox rdi, r14
adox r10, rbp
mov r12, 0x1a0111ea397fe69a 
mulx rbp, r14, r12
adcx r14, [ rsp + 0xf8 ]
adox r14, [ rsp + 0xf0 ]
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r15, [ rsp + 0x40 ]
adox rbp, r9
adcx r13, [ rsp + 0x60 ]
adcx rdi, [ rsp + 0x58 ]
adcx r10, [ rsp + 0xb0 ]
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r9, r15, rbx
adcx r14, [ rsp + 0xd8 ]
movzx r9, r11b
mov rcx, 0x0 
adox r9, rcx
mov r11, 0xb9feffffffffaaab 
xchg rdx, r11
mulx r12, rcx, r15
adcx rbp, [ rsp + 0xd0 ]
adcx r9, [ rsp + 0xc8 ]
mov rdx, -0x2 
inc rdx
adox rcx, r11
mov rcx, 0x1eabfffeb153ffff 
mov rdx, r15
mulx r11, r15, rcx
setc cl
clc
adcx r15, r12
mov r12, 0x6730d2a0f6b0f624 
mulx rbx, r8, r12
adcx r8, r11
adox r15, r13
adox r8, rdi
mov r13, 0x64774b84f38512bf 
mulx r11, rdi, r13
adcx rdi, rbx
adox rdi, r10
mov r10, 0x4b1ba7b6434bacd7 
mulx r12, rbx, r10
adcx rbx, r11
mov r11, 0x1a0111ea397fe69a 
mulx r13, r10, r11
adcx r10, r12
mov rdx, 0x0 
adcx r13, rdx
adox rbx, r14
adox r10, rbp
adox r13, r9
movzx r14, cl
adox r14, rdx
add r15, [ rsp - 0x8 ]
adcx r8, [ rsp + 0x8 ]
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, rbp
mulx rcx, rbp, r15
mov rcx, 0xb9feffffffffaaab 
mov rdx, rbp
mulx r9, rbp, rcx
adcx rdi, [ rsp + 0x10 ]
adcx rbx, [ rsp + 0x38 ]
mov r12, 0x6730d2a0f6b0f624 
mulx rcx, r11, r12
adcx r10, [ rsp + 0x30 ]
mov r12, -0x2 
inc r12
adox rbp, r15
adcx r13, [ rsp + 0x28 ]
adcx r14, [ rsp + 0x50 ]
mov rbp, 0x1eabfffeb153ffff 
mulx r12, r15, rbp
setc bpl
clc
adcx r15, r9
adcx r11, r12
adox r15, r8
mov r8, 0x64774b84f38512bf 
mulx r12, r9, r8
adcx r9, rcx
adox r11, rdi
mov rdi, 0x4b1ba7b6434bacd7 
mulx r8, rcx, rdi
adox r9, rbx
adcx rcx, r12
mov rbx, 0x1a0111ea397fe69a 
mulx rdi, r12, rbx
adcx r12, r8
mov rdx, 0x0 
adcx rdi, rdx
adox rcx, r10
adox r12, r13
adox rdi, r14
movzx r10, bpl
adox r10, rdx
mov r13, r15
mov rbp, 0xb9feffffffffaaab 
sub r13, rbp
mov r14, r11
mov r8, 0x1eabfffeb153ffff 
sbb r14, r8
mov rdx, r9
mov rbx, 0x6730d2a0f6b0f624 
sbb rdx, rbx
mov rbx, rcx
mov r8, 0x64774b84f38512bf 
sbb rbx, r8
mov rbp, r12
mov r8, 0x4b1ba7b6434bacd7 
sbb rbp, r8
mov r8, rdi
mov [ rsp + 0x100 ], rbp
mov rbp, 0x1a0111ea397fe69a 
sbb r8, rbp
sbb r10, 0x00000000
cmovc rdx, r9
cmovc r13, r15
cmovc rbx, rcx
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x10 ], rdx
mov [ r10 + 0x18 ], rbx
cmovc r14, r11
mov [ r10 + 0x8 ], r14
cmovc r8, rdi
mov [ r10 + 0x28 ], r8
mov r15, [ rsp + 0x100 ]
cmovc r15, r12
mov [ r10 + 0x20 ], r15
mov [ r10 + 0x0 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 392
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.9278
; seed 1603769479677222 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7114374 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=31, initial num_batches=31): 181009 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.025442716393599775
; number reverted permutation / tried permutation: 67540 / 90199 =74.879%
; number reverted decision / tried decision: 59416 / 89800 =66.165%
; validated in 49.591s
