SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 408
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
test al, al
adox r10, r8
adox r13, r11
mov rdx, [ rax + 0x8 ]
mulx r8, r11, [ rsi + 0x28 ]
adox rbp, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rsi + 0x20 ]
adcx r9, r15
adox rdi, r12
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, [ rax + 0x10 ]
adcx r12, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], rdi
mulx rdi, rbx, [ rax + 0x0 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r10
mulx r10, r13, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rcx
mulx rcx, r10, [ rax + 0x18 ]
adcx r10, r15
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x20 ], r10
mulx r10, r15, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r9
mulx r9, r12, [ rsi + 0x10 ]
adcx r12, rcx
adcx r15, r9
mov rdx, 0x0 
adcx r10, rdx
mov rdx, [ rsi + 0x28 ]
mulx r9, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], r15
mulx r15, r10, [ rax + 0x0 ]
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp + 0x8 ], r10
mov [ rsp + 0x10 ], r12
mulx r12, r10, r13
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0x18 ], r14
mov [ rsp + 0x20 ], rdi
mulx rdi, r14, r13
clc
adcx r10, rdi
seto dil
mov rdx, -0x2 
inc rdx
adox r11, r15
adox rcx, r8
mov r8, 0x6730d2a0f6b0f624 
mov rdx, r8
mulx r15, r8, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], rcx
mov [ rsp + 0x30 ], r11
mulx r11, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r10
mov [ rsp + 0x40 ], r14
mulx r14, r10, [ rax + 0x20 ]
adox rcx, r9
adox r10, r11
adcx r8, r12
mov rdx, [ rsi + 0x28 ]
mulx r12, r9, [ rax + 0x28 ]
adox r9, r14
mov rdx, 0x64774b84f38512bf 
mulx r14, r11, r13
mov rdx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r10
mulx r10, r9, r13
mov rdx, 0x0 
adox r12, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x58 ], r12
mov [ rsp + 0x60 ], rcx
mulx rcx, r12, [ rsi + 0x18 ]
mov rdx, 0x1a0111ea397fe69a 
mov [ rsp + 0x68 ], r12
mov [ rsp + 0x70 ], r8
mulx r8, r12, r13
adcx r11, r15
adcx r9, r14
mov rdx, [ rsi + 0x18 ]
mulx r15, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], r9
mulx r9, r14, [ rax + 0x10 ]
adcx r12, r10
adc r8, 0x0
xor rdx, rdx
adox r13, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r10, [ rax + 0x0 ]
adox r14, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r14
mulx r14, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x88 ], r13
mov [ rsp + 0x90 ], r8
mulx r8, r13, [ rsi + 0x18 ]
adox r15, r9
adox r13, r14
mov rdx, [ rax + 0x28 ]
mulx r14, r9, [ rsi + 0x18 ]
adox r9, r8
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x98 ], r9
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xa0 ], r13
mov [ rsp + 0xa8 ], r15
mulx r15, r13, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r14, rdx
add dil, 0x7F
adox rbp, r13
adcx r8, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, rdi, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb0 ], rbp
mulx rbp, r13, [ rsi + 0x8 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xb8 ], r14
mov [ rsp + 0xc0 ], r12
mulx r12, r14, [ rsi + 0x8 ]
adcx rdi, r9
mov rdx, 0x0 
adox r15, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xc8 ], r15
mulx r15, r9, [ rsi + 0x8 ]
adcx r13, rcx
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xd0 ], r13
mulx r13, rcx, [ rsi + 0x0 ]
adcx r9, rbp
adcx r14, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, rbp, [ rax + 0x10 ]
adc r12, 0x0
xor rdx, rdx
adox rbx, [ rsp + 0x40 ]
adcx rcx, [ rsp + 0x20 ]
adcx rbp, r13
adox rcx, [ rsp + 0x38 ]
mov rdx, [ rax + 0x18 ]
mulx r13, rbx, [ rsi + 0x0 ]
adcx rbx, r15
adox rbp, [ rsp + 0x70 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xd8 ], r12
mulx r12, r15, [ rax + 0x20 ]
adcx r15, r13
adox r11, rbx
adox r15, [ rsp + 0x78 ]
mov rdx, [ rax + 0x28 ]
mulx rbx, r13, [ rsi + 0x0 ]
adcx r13, r12
mov rdx, 0x0 
adcx rbx, rdx
clc
adcx r10, rcx
adcx r8, rbp
adcx rdi, r11
adcx r15, [ rsp + 0xd0 ]
adox r13, [ rsp + 0xc0 ]
adcx r9, r13
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, r10
mulx rbp, r10, rcx
mov rbp, 0x6730d2a0f6b0f624 
xchg rdx, rbp
mulx r11, r12, r10
mov r13, 0x1eabfffeb153ffff 
mov rdx, r10
mulx rcx, r10, r13
adox rbx, [ rsp + 0x90 ]
adcx r14, rbx
seto bl
movzx rbx, bl
adcx rbx, [ rsp + 0xd8 ]
mov r13, 0xb9feffffffffaaab 
mov [ rsp + 0xe0 ], rbx
mov [ rsp + 0xe8 ], r14
mulx r14, rbx, r13
mov r13, -0x2 
inc r13
adox r10, r14
adox r12, rcx
mov rcx, 0x64774b84f38512bf 
mulx r13, r14, rcx
adox r14, r11
setc r11b
clc
adcx rbx, rbp
adcx r10, r8
adcx r12, rdi
mov rbx, 0x4b1ba7b6434bacd7 
mulx r8, rbp, rbx
adox rbp, r13
adcx r14, r15
adcx rbp, r9
mov rdi, 0x1a0111ea397fe69a 
mulx r9, r15, rdi
adox r15, r8
mov rdx, 0x0 
adox r9, rdx
adcx r15, [ rsp + 0xe8 ]
adcx r9, [ rsp + 0xe0 ]
movzx r13, r11b
adc r13, 0x0
xor r11, r11
adox r10, [ rsp + 0x18 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r11, r8, r10
mov r11, 0xb9feffffffffaaab 
mov rdx, r8
mulx rdi, r8, r11
adcx r8, r10
mov r8, 0x1eabfffeb153ffff 
mulx rbx, r10, r8
adox r12, [ rsp - 0x10 ]
adox r14, [ rsp - 0x18 ]
adox rbp, [ rsp - 0x20 ]
adox r15, [ rsp + 0x10 ]
adox r9, [ rsp + 0x0 ]
adox r13, [ rsp - 0x8 ]
seto cl
mov r11, -0x2 
inc r11
adox r10, rdi
adcx r10, r12
mov rdi, 0x6730d2a0f6b0f624 
mulx r11, r12, rdi
adox r12, rbx
adcx r12, r14
mov rbx, 0x64774b84f38512bf 
mulx rdi, r14, rbx
adox r14, r11
adcx r14, rbp
mov rbp, 0x4b1ba7b6434bacd7 
mulx rbx, r11, rbp
adox r11, rdi
adcx r11, r15
mov r15, 0x1a0111ea397fe69a 
mulx rbp, rdi, r15
adox rdi, rbx
mov rdx, 0x0 
adox rbp, rdx
adcx rdi, r9
mov r9, -0x3 
inc r9
adox r10, [ rsp + 0x68 ]
adox r12, [ rsp + 0x88 ]
adox r14, [ rsp + 0x80 ]
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx r9, rbx, r10
adox r11, [ rsp + 0xa8 ]
adox rdi, [ rsp + 0xa0 ]
mov rdx, rbx
mulx rbx, r9, r8
mov r15, 0xb9feffffffffaaab 
mov [ rsp + 0xf0 ], rdi
mulx rdi, r8, r15
adcx rbp, r13
adox rbp, [ rsp + 0x98 ]
setc r13b
clc
adcx r8, r10
movzx r8, r13b
movzx rcx, cl
lea r8, [ r8 + rcx ]
adox r8, [ rsp + 0xb8 ]
seto cl
mov r10, -0x2 
inc r10
adox r9, rdi
adcx r9, r12
mov r12, 0x6730d2a0f6b0f624 
mulx r13, rdi, r12
adox rdi, rbx
adcx rdi, r14
mov r14, 0x64774b84f38512bf 
mulx r10, rbx, r14
adox rbx, r13
adcx rbx, r11
mov r11, 0x4b1ba7b6434bacd7 
mulx r14, r13, r11
adox r13, r10
adcx r13, [ rsp + 0xf0 ]
mov r10, 0x1a0111ea397fe69a 
mulx r12, r11, r10
adox r11, r14
adcx r11, rbp
mov rdx, 0x0 
adox r12, rdx
mov rbp, -0x3 
inc rbp
adox r9, [ rsp - 0x28 ]
adcx r12, r8
adox rdi, [ rsp - 0x30 ]
movzx r8, cl
adcx r8, rdx
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r14, rcx, r9
adox rbx, [ rsp - 0x38 ]
adox r13, [ rsp - 0x48 ]
mov rdx, rcx
mulx r14, rcx, r15
clc
adcx rcx, r9
adox r11, [ rsp - 0x40 ]
mov rcx, 0x1eabfffeb153ffff 
mulx rbp, r9, rcx
seto cl
mov r10, -0x2 
inc r10
adox r9, r14
adcx r9, rdi
mov rdi, 0x6730d2a0f6b0f624 
mulx r10, r14, rdi
adox r14, rbp
mov rbp, 0x64774b84f38512bf 
mulx r15, rdi, rbp
adcx r14, rbx
adox rdi, r10
mov rbx, 0x1a0111ea397fe69a 
mulx rbp, r10, rbx
adcx rdi, r13
mov r13, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xf8 ], rdi
mulx rdi, rbx, r13
adox rbx, r15
adox r10, rdi
mov rdx, 0x0 
adox rbp, rdx
dec rdx
movzx rcx, cl
adox rcx, rdx
adox r12, [ rsp + 0xb0 ]
adox r8, [ rsp + 0xc8 ]
seto cl
inc rdx
adox r9, [ rsp + 0x8 ]
mov r15, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx rdi, r15, r9
adcx rbx, r11
adcx r10, r12
adcx rbp, r8
adox r14, [ rsp + 0x30 ]
mov rdi, [ rsp + 0xf8 ]
adox rdi, [ rsp + 0x28 ]
adox rbx, [ rsp + 0x60 ]
movzx r11, cl
mov r12, 0x0 
adcx r11, r12
mov rdx, r15
mulx rcx, r15, r13
adox r10, [ rsp + 0x50 ]
mov r8, 0xb9feffffffffaaab 
mulx r13, r12, r8
clc
adcx r12, r9
adox rbp, [ rsp + 0x48 ]
mov r12, 0x1eabfffeb153ffff 
mulx r8, r9, r12
adox r11, [ rsp + 0x58 ]
seto r12b
mov [ rsp + 0x100 ], r11
mov r11, -0x2 
inc r11
adox r9, r13
mov r13, 0x6730d2a0f6b0f624 
mov byte [ rsp + 0x108 ], r12b
mulx r12, r11, r13
adcx r9, r14
adox r11, r8
adcx r11, rdi
mov r14, 0x64774b84f38512bf 
mulx r8, rdi, r14
adox rdi, r12
adcx rdi, rbx
adox r15, r8
mov rbx, 0x1a0111ea397fe69a 
mulx r8, r12, rbx
adox r12, rcx
adcx r15, r10
mov rdx, 0x0 
adox r8, rdx
adcx r12, rbp
adcx r8, [ rsp + 0x100 ]
movzx rcx, byte [ rsp + 0x108 ]
adc rcx, 0x0
mov r10, r9
mov rbp, 0xb9feffffffffaaab 
sub r10, rbp
mov rdx, r11
mov rbp, 0x1eabfffeb153ffff 
sbb rdx, rbp
mov rbp, rdi
sbb rbp, r13
mov r13, r15
sbb r13, r14
mov rbx, r12
mov r14, 0x4b1ba7b6434bacd7 
sbb rbx, r14
mov r14, r8
mov [ rsp + 0x110 ], r13
mov r13, 0x1a0111ea397fe69a 
sbb r14, r13
sbb rcx, 0x00000000
cmovc r14, r8
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x28 ], r14
cmovc r10, r9
cmovc rdx, r11
cmovc rbp, rdi
cmovc rbx, r12
mov [ rcx + 0x10 ], rbp
mov [ rcx + 0x0 ], r10
mov r9, [ rsp + 0x110 ]
cmovc r9, r15
mov [ rcx + 0x8 ], rdx
mov [ rcx + 0x20 ], rbx
mov [ rcx + 0x18 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 408
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.9041
; seed 3607723260331103 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7731414 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=36, initial num_batches=31): 187951 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.024310042121661057
; number reverted permutation / tried permutation: 69441 / 89817 =77.314%
; number reverted decision / tried decision: 62132 / 90182 =68.896%
; validated in 44.837s
