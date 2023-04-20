SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 432
mov rax, rdx
mov rdx, [ rdx + 0x28 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r14
mulx r14, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rbp
mov [ rsp - 0x30 ], r13
mulx r13, rbp, [ rax + 0x0 ]
test al, al
adox r9, r13
adox rcx, rbx
mov rdx, [ rax + 0x20 ]
mulx r13, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r9
mulx r9, rcx, [ rax + 0x18 ]
adox rcx, r8
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], rcx
mulx rcx, r8, [ rax + 0x8 ]
adcx r8, r12
adox rbx, r9
mov rdx, [ rax + 0x10 ]
mulx r9, r12, [ rsi + 0x28 ]
adcx r12, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], r12
mulx r12, rcx, [ rax + 0x0 ]
adcx r15, r9
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x8 ], r15
mulx r15, r9, [ rsi + 0x28 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], rbx
mulx rbx, r8, rcx
adcx r9, rdi
mov rdx, [ rax + 0x28 ]
mulx rdi, rbx, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x10 ], r9
mov [ rsp + 0x18 ], rbp
mulx rbp, r9, [ rsi + 0x10 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0x20 ], r12
mov [ rsp + 0x28 ], rbp
mulx rbp, r12, r8
adcx rbx, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], rbx
mulx rbx, r15, [ rax + 0x8 ]
adox r10, r13
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r15, r14
mov rdx, [ rax + 0x18 ]
mulx r13, r14, [ rsi + 0x10 ]
adcx r9, rbx
mov rdx, 0x0 
adox r11, rdx
adcx r14, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x38 ], rdi
mulx rdi, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x40 ], r11
mov [ rsp + 0x48 ], r10
mulx r10, r11, [ rax + 0x28 ]
adcx rbx, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], rbx
mulx rbx, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], r14
mov [ rsp + 0x60 ], r9
mulx r9, r14, [ rax + 0x10 ]
adcx r11, rdi
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x68 ], r11
mulx r11, rdi, [ rax + 0x0 ]
adc r10, 0x0
xor rdx, rdx
adox r13, r11
adox r14, rbx
mov rbx, 0x1eabfffeb153ffff 
mov rdx, rbx
mulx r11, rbx, r8
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x70 ], r14
mov [ rsp + 0x78 ], r13
mulx r13, r14, r8
adcx rbx, rbp
adcx r14, r11
mov rbp, 0x4b1ba7b6434bacd7 
mov rdx, rbp
mulx r11, rbp, r8
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0x80 ], rdi
mov [ rsp + 0x88 ], r10
mulx r10, rdi, r8
adcx rdi, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r15
mulx r15, r13, [ rax + 0x18 ]
adox r13, r9
mov rdx, 0x1a0111ea397fe69a 
mov [ rsp + 0x98 ], r13
mulx r13, r9, r8
adcx rbp, r10
adcx r9, r11
mov rdx, [ rsi + 0x20 ]
mulx r11, r8, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xa0 ], r9
mulx r9, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xa8 ], rbp
mov [ rsp + 0xb0 ], rdi
mulx rdi, rbp, [ rsi + 0x8 ]
adox r8, r15
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xb8 ], r8
mulx r8, r15, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx rdi, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xc0 ], r13
mov [ rsp + 0xc8 ], rdi
mulx rdi, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xd0 ], rbp
mov [ rsp + 0xd8 ], r14
mulx r14, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe0 ], rbx
mov [ rsp + 0xe8 ], r12
mulx r12, rbx, [ rax + 0x18 ]
adcx r13, [ rsp - 0x40 ]
adcx rbx, rdi
adcx r15, r12
adcx rbp, r8
mov rdx, [ rsi + 0x0 ]
mulx rdi, r8, [ rax + 0x8 ]
mov rdx, 0x0 
adcx r14, rdx
adox r10, r11
clc
adcx r8, [ rsp + 0x20 ]
mov rdx, [ rax + 0x10 ]
mulx r12, r11, [ rsi + 0x0 ]
adcx r11, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], r10
mulx r10, rdi, [ rax + 0x18 ]
adcx rdi, r12
mov rdx, 0x0 
adox r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf8 ], r9
mulx r9, r12, [ rax + 0x20 ]
adcx r12, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x100 ], r14
mulx r14, r10, [ rax + 0x28 ]
adcx r10, r9
adc r14, 0x0
xor rdx, rdx
adox rcx, [ rsp + 0xe8 ]
adox r8, [ rsp + 0xe0 ]
adox r11, [ rsp + 0xd8 ]
adox rdi, [ rsp + 0xb0 ]
adox r12, [ rsp + 0xa8 ]
adox r10, [ rsp + 0xa0 ]
adcx r8, [ rsp + 0xd0 ]
adcx r11, [ rsp + 0xc8 ]
adcx r13, rdi
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r9, rcx, r8
mov r9, 0x64774b84f38512bf 
mov rdx, rcx
mulx rdi, rcx, r9
adcx rbx, r12
mov r12, 0xb9feffffffffaaab 
mov [ rsp + 0x108 ], rbx
mulx rbx, r9, r12
adcx r15, r10
adox r14, [ rsp + 0xc0 ]
seto r10b
mov r12, -0x2 
inc r12
adox r9, r8
adcx rbp, r14
movzx r10, r10b
movzx r9, r10b
adcx r9, [ rsp + 0x100 ]
mov r8, 0x1eabfffeb153ffff 
mulx r14, r10, r8
setc r12b
clc
adcx r10, rbx
adox r10, r11
mov r11, 0x6730d2a0f6b0f624 
mulx r8, rbx, r11
adcx rbx, r14
adox rbx, r13
adcx rcx, r8
mov r13, 0x4b1ba7b6434bacd7 
mulx r8, r14, r13
adcx r14, rdi
adox rcx, [ rsp + 0x108 ]
adox r14, r15
mov rdi, 0x1a0111ea397fe69a 
mulx r13, r15, rdi
adcx r15, r8
adox r15, rbp
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r10, [ rsp - 0x38 ]
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, rbp
mulx r8, rbp, r10
mov rdx, rbp
mulx rbp, r8, r11
adcx rbx, [ rsp + 0x90 ]
adcx rcx, [ rsp + 0x60 ]
adcx r14, [ rsp + 0x58 ]
adox r13, r9
movzx r9, r12b
mov rdi, 0x0 
adox r9, rdi
adcx r15, [ rsp + 0x50 ]
adcx r13, [ rsp + 0x68 ]
mov r12, 0xb9feffffffffaaab 
mulx r11, rdi, r12
mov r12, -0x2 
inc r12
adox rdi, r10
adcx r9, [ rsp + 0x88 ]
mov rdi, 0x1eabfffeb153ffff 
mulx r12, r10, rdi
setc dil
clc
adcx r10, r11
adcx r8, r12
mov r11, 0x64774b84f38512bf 
mov byte [ rsp + 0x110 ], dil
mulx rdi, r12, r11
adox r10, rbx
adox r8, rcx
adcx r12, rbp
adox r12, r14
mov rbp, 0x1a0111ea397fe69a 
mulx rcx, rbx, rbp
mov r14, 0x4b1ba7b6434bacd7 
mulx r11, rbp, r14
adcx rbp, rdi
adcx rbx, r11
adox rbp, r15
adox rbx, r13
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r10, [ rsp + 0x18 ]
adcx r8, [ rsp - 0x20 ]
adox rcx, r9
adcx r12, [ rsp - 0x28 ]
movzx r15, byte [ rsp + 0x110 ]
adox r15, rdx
adcx rbp, [ rsp - 0x18 ]
mov r13, 0x89f3fffcfffcfffd 
mov rdx, r13
mulx r9, r13, r10
mov r9, 0xb9feffffffffaaab 
mov rdx, r13
mulx rdi, r13, r9
adcx rbx, [ rsp + 0x8 ]
mov r11, 0x1eabfffeb153ffff 
mulx r9, r14, r11
mov r11, -0x2 
inc r11
adox r14, rdi
mov rdi, 0x6730d2a0f6b0f624 
mov [ rsp + 0x118 ], rbx
mulx rbx, r11, rdi
adox r11, r9
adcx rcx, [ rsp + 0x48 ]
adcx r15, [ rsp + 0x40 ]
setc r9b
clc
adcx r13, r10
adcx r14, r8
mov r13, 0x64774b84f38512bf 
mulx r8, r10, r13
adox r10, rbx
adcx r11, r12
adcx r10, rbp
mov r12, 0x4b1ba7b6434bacd7 
mulx rbx, rbp, r12
adox rbp, r8
adcx rbp, [ rsp + 0x118 ]
mov r8, 0x1a0111ea397fe69a 
mulx r12, r13, r8
adox r13, rbx
adcx r13, rcx
seto dl
mov rcx, -0x2 
inc rcx
adox r14, [ rsp + 0x80 ]
mov rbx, 0x89f3fffcfffcfffd 
xchg rdx, rbx
mulx r8, rcx, r14
adox r11, [ rsp + 0x78 ]
adox r10, [ rsp + 0x70 ]
mov r8, 0x1eabfffeb153ffff 
mov rdx, rcx
mulx rdi, rcx, r8
movzx r8, bl
lea r8, [ r8 + r12 ]
adox rbp, [ rsp + 0x98 ]
adcx r8, r15
adox r13, [ rsp + 0xb8 ]
adox r8, [ rsp + 0xf0 ]
mov r15, 0xb9feffffffffaaab 
mulx rbx, r12, r15
seto r15b
mov [ rsp + 0x120 ], r8
mov r8, -0x2 
inc r8
adox rcx, rbx
setc bl
clc
adcx r12, r14
mov r12, 0x6730d2a0f6b0f624 
mulx r8, r14, r12
adcx rcx, r11
adox r14, rdi
adcx r14, r10
mov r11, 0x64774b84f38512bf 
mulx rdi, r10, r11
adox r10, r8
adcx r10, rbp
mov rbp, 0x4b1ba7b6434bacd7 
mulx r11, r8, rbp
adox r8, rdi
adcx r8, r13
mov r13, 0x1a0111ea397fe69a 
mulx rbp, rdi, r13
movzx rdx, bl
movzx r9, r9b
lea rdx, [ rdx + r9 ]
adox rdi, r11
mov r9, 0x0 
adox rbp, r9
adcx rdi, [ rsp + 0x120 ]
dec r9
movzx r15, r15b
adox r15, r9
adox rdx, [ rsp + 0xf8 ]
adcx rbp, rdx
setc bl
clc
adcx rcx, [ rsp - 0x48 ]
adcx r14, [ rsp + 0x0 ]
mov r15, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r11, r15, rcx
mov r11, 0xb9feffffffffaaab 
mov rdx, r15
mulx r9, r15, r11
movzx r11, bl
mov r13, 0x0 
adox r11, r13
adcx r10, [ rsp - 0x10 ]
adcx r8, [ rsp - 0x8 ]
adcx rdi, [ rsp + 0x10 ]
adcx rbp, [ rsp + 0x30 ]
mov rbx, -0x3 
inc rbx
adox r15, rcx
mov r15, 0x1eabfffeb153ffff 
mulx r13, rcx, r15
adcx r11, [ rsp + 0x38 ]
setc bl
clc
adcx rcx, r9
adox rcx, r14
mulx r9, r14, r12
adcx r14, r13
adox r14, r10
mov r10, 0x64774b84f38512bf 
mulx r12, r13, r10
adcx r13, r9
adox r13, r8
mov r8, 0x4b1ba7b6434bacd7 
mulx r10, r9, r8
adcx r9, r12
adox r9, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r8, r12, rdi
adcx r12, r10
adox r12, rbp
mov rdx, 0x0 
adcx r8, rdx
adox r8, r11
movzx rbp, bl
adox rbp, rdx
mov rbx, rcx
mov r11, 0xb9feffffffffaaab 
sub rbx, r11
mov r10, r14
sbb r10, r15
mov rdx, r13
mov r11, 0x6730d2a0f6b0f624 
sbb rdx, r11
mov rdi, r9
mov r11, 0x64774b84f38512bf 
sbb rdi, r11
mov r11, r12
mov r15, 0x4b1ba7b6434bacd7 
sbb r11, r15
mov r15, r8
mov [ rsp + 0x128 ], rdx
mov rdx, 0x1a0111ea397fe69a 
sbb r15, rdx
sbb rbp, 0x00000000
cmovc r15, r8
cmovc r10, r14
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x8 ], r10
mov [ rbp + 0x28 ], r15
cmovc rbx, rcx
cmovc rdi, r9
mov [ rbp + 0x18 ], rdi
mov [ rbp + 0x0 ], rbx
cmovc r11, r12
mov [ rbp + 0x20 ], r11
mov rcx, [ rsp + 0x128 ]
cmovc rcx, r13
mov [ rbp + 0x10 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.8904
; seed 0191203497889724 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7581308 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 185104 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02441583958863035
; number reverted permutation / tried permutation: 69144 / 89797 =77.000%
; number reverted decision / tried decision: 62312 / 90202 =69.081%
; validated in 46.398s
