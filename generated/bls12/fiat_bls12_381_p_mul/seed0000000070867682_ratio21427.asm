SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 432
mov rax, rdx
mov rdx, [ rdx + 0x20 ]
mulx r11, r10, [ rsi + 0x28 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
test al, al
adox r9, r8
adox r13, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ rax + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
adcx rbp, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r13
mulx r13, rdi, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], rcx
mulx rcx, r9, [ rax + 0x18 ]
adcx rdi, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, r12, [ rax + 0x18 ]
adox r12, r14
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x28 ], r12
mulx r12, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], rbp
mov [ rsp - 0x18 ], r11
mulx r11, rbp, [ rax + 0x28 ]
adox r14, rdi
adox rbp, r12
adcx r9, r13
mov rdx, [ rax + 0x20 ]
mulx rdi, r13, [ rsi + 0x0 ]
adcx r13, rcx
mov rdx, 0x0 
adox r11, rdx
mov rdx, [ rax + 0x8 ]
mulx r12, rcx, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r11
mov [ rsp - 0x8 ], rbp
mulx rbp, r11, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x0 ], r14
mov [ rsp + 0x8 ], r13
mulx r13, r14, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox rcx, r13
adox r11, r12
mov rdx, [ rsi + 0x8 ]
mulx r13, r12, [ rax + 0x18 ]
adox r12, rbp
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x10 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x18 ], r11
mov [ rsp + 0x20 ], rcx
mulx rcx, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x28 ], r9
mov [ rsp + 0x30 ], r14
mulx r14, r9, [ rsi + 0x28 ]
adcx r8, rdi
adox rbp, r13
setc dl
clc
adcx r11, r14
movzx rdi, dl
lea rdi, [ rdi + rbx ]
mov rdx, [ rsi + 0x28 ]
mulx r13, rbx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r11
mulx r11, r14, [ rax + 0x18 ]
adcx rbx, rcx
adcx r14, r13
adcx r10, r11
mov rdx, 0x89f3fffcfffcfffd 
mulx r13, rcx, r15
mov rdx, [ rax + 0x28 ]
mulx r11, r13, [ rsi + 0x8 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0x40 ], r10
mov [ rsp + 0x48 ], r14
mulx r14, r10, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], rbx
mov [ rsp + 0x58 ], r9
mulx r9, rbx, [ rax + 0x28 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], rdi
mulx rdi, r9, rcx
adox r13, r12
mov r12, 0x0 
adox r11, r12
mov r12, 0x1eabfffeb153ffff 
mov rdx, rcx
mov [ rsp + 0x70 ], r11
mulx r11, rcx, r12
adcx rbx, [ rsp - 0x18 ]
mov r12, -0x2 
inc r12
adox r10, r15
setc r10b
clc
adcx rcx, r14
adox rcx, [ rsp - 0x20 ]
adcx r9, r11
mov r15, 0x1a0111ea397fe69a 
mulx r11, r14, r15
mov r12, 0x64774b84f38512bf 
mov byte [ rsp + 0x78 ], r10b
mulx r10, r15, r12
adcx r15, rdi
mov rdi, 0x4b1ba7b6434bacd7 
mov [ rsp + 0x80 ], rbx
mulx rbx, r12, rdi
adcx r12, r10
adcx r14, rbx
setc dl
clc
adcx rcx, [ rsp + 0x30 ]
adox r9, [ rsp - 0x30 ]
movzx r10, dl
lea r10, [ r10 + r11 ]
mov r11, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx rbx, rcx, r11
adox r15, [ rsp + 0x28 ]
adcx r9, [ rsp + 0x20 ]
mov rbx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, rdi, [ rax + 0x28 ]
adcx r15, [ rsp + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x88 ], r15
mov [ rsp + 0x90 ], r9
mulx r9, r15, [ rsi + 0x20 ]
adox r12, [ rsp + 0x8 ]
adox r14, r8
adcx r12, [ rsp + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x98 ], r12
mulx r12, r8, [ rsi + 0x20 ]
adcx rbp, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xa0 ], rbp
mulx rbp, r14, [ rsi + 0x20 ]
adox r10, [ rsp + 0x68 ]
adcx r13, r10
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xa8 ], r14
mulx r14, r10, [ rsi + 0x20 ]
seto dl
mov [ rsp + 0xb0 ], r13
mov r13, -0x2 
inc r13
adox r8, rbp
adox r15, r12
movzx rdx, dl
movzx r12, dl
adcx r12, [ rsp + 0x70 ]
mov rdx, [ rsi + 0x20 ]
mulx r13, rbp, [ rax + 0x18 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xb8 ], r15
mov [ rsp + 0xc0 ], r8
mulx r8, r15, rcx
adox rbp, r9
adox r10, r13
mov r9, 0x1eabfffeb153ffff 
mov rdx, rcx
mulx r13, rcx, r9
setc r9b
clc
adcx rcx, r8
mov r8, 0x6730d2a0f6b0f624 
mov [ rsp + 0xc8 ], r10
mov [ rsp + 0xd0 ], rbp
mulx rbp, r10, r8
adox rdi, r14
adcx r10, r13
mov r14, 0x0 
adox r11, r14
mov r13, 0x4b1ba7b6434bacd7 
mulx r8, r14, r13
mov r13, -0x2 
inc r13
adox r15, rbx
adox rcx, [ rsp + 0x90 ]
adox r10, [ rsp + 0x88 ]
mov r15, 0x1a0111ea397fe69a 
mulx r13, rbx, r15
mov r15, 0x64774b84f38512bf 
mov [ rsp + 0xd8 ], r11
mov [ rsp + 0xe0 ], rdi
mulx rdi, r11, r15
adcx r11, rbp
adcx r14, rdi
adox r11, [ rsp + 0x98 ]
adox r14, [ rsp + 0xa0 ]
adcx rbx, r8
mov rdx, 0x0 
adcx r13, rdx
adox rbx, [ rsp + 0xb0 ]
adox r13, r12
mov rdx, [ rax + 0x0 ]
mulx rbp, r12, [ rsi + 0x10 ]
movzx rdx, r9b
mov r8, 0x0 
adox rdx, r8
test al, al
adox r12, rcx
mov r9, 0x89f3fffcfffcfffd 
xchg rdx, r9
mulx rdi, rcx, r12
mov rdx, [ rsi + 0x10 ]
mulx r8, rdi, [ rax + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r9
mulx r9, r15, [ rax + 0x8 ]
adcx r15, rbp
adcx rdi, r9
adox r15, r10
adox rdi, r11
mov rdx, [ rax + 0x18 ]
mulx r11, r10, [ rsi + 0x10 ]
adcx r10, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rbp, [ rax + 0x20 ]
adox r10, r14
adcx rbp, r11
mov rdx, [ rsi + 0x10 ]
mulx r9, r14, [ rax + 0x28 ]
adox rbp, rbx
adcx r14, r8
mov rdx, 0x0 
adcx r9, rdx
adox r14, r13
mov rbx, 0xb9feffffffffaaab 
mov rdx, rbx
mulx r13, rbx, rcx
clc
adcx rbx, r12
adox r9, [ rsp + 0xe8 ]
mov rbx, 0x1eabfffeb153ffff 
mov rdx, rcx
mulx r12, rcx, rbx
seto r11b
mov r8, -0x2 
inc r8
adox rcx, r13
mov r13, 0x6730d2a0f6b0f624 
mulx rbx, r8, r13
adox r8, r12
adcx rcx, r15
adcx r8, rdi
mov r15, 0x64774b84f38512bf 
mulx r12, rdi, r15
adox rdi, rbx
mov rbx, 0x4b1ba7b6434bacd7 
mulx r13, r15, rbx
adox r15, r12
adcx rdi, r10
mov r10, 0x1a0111ea397fe69a 
mulx rbx, r12, r10
adcx r15, rbp
adox r12, r13
mov rdx, 0x0 
adox rbx, rdx
mov rbp, -0x3 
inc rbp
adox rcx, [ rsp - 0x38 ]
adox r8, [ rsp - 0x40 ]
adox rdi, [ rsp - 0x48 ]
adcx r12, r14
adcx rbx, r9
adox r15, [ rsp - 0x28 ]
movzx r14, r11b
adcx r14, rdx
adox r12, [ rsp + 0x0 ]
mov r11, 0x89f3fffcfffcfffd 
mov rdx, r11
mulx r9, r11, rcx
mov r9, 0xb9feffffffffaaab 
mov rdx, r11
mulx r13, r11, r9
mov rbp, 0x6730d2a0f6b0f624 
mulx r9, r10, rbp
mov rbp, 0x1eabfffeb153ffff 
mov [ rsp + 0xf0 ], r12
mov [ rsp + 0xf8 ], r15
mulx r15, r12, rbp
clc
adcx r11, rcx
setc r11b
clc
adcx r12, r13
adcx r10, r15
adox rbx, [ rsp - 0x8 ]
adox r14, [ rsp - 0x10 ]
seto cl
mov r13, -0x1 
inc r13
mov r15, -0x1 
movzx r11, r11b
adox r11, r15
adox r8, r12
adox r10, rdi
mov rdi, 0x64774b84f38512bf 
mulx r12, r11, rdi
mov r13, 0x4b1ba7b6434bacd7 
mulx rdi, r15, r13
adcx r11, r9
adcx r15, r12
mov r9, 0x1a0111ea397fe69a 
mulx r13, r12, r9
adcx r12, rdi
adox r11, [ rsp + 0xf8 ]
adox r15, [ rsp + 0xf0 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r8, [ rsp + 0xa8 ]
adcx r10, [ rsp + 0xc0 ]
adox r12, rbx
adox r13, r14
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx r14, rbx, r8
mov rdx, rbx
mulx r14, rbx, r9
movzx rdi, cl
mov r9, 0x0 
adox rdi, r9
adcx r11, [ rsp + 0xb8 ]
adcx r15, [ rsp + 0xd0 ]
mulx r9, rcx, rbp
adcx r12, [ rsp + 0xc8 ]
adcx r13, [ rsp + 0xe0 ]
mov rbp, 0xb9feffffffffaaab 
mov [ rsp + 0x100 ], r13
mov [ rsp + 0x108 ], r12
mulx r12, r13, rbp
mov rbp, -0x2 
inc rbp
adox rcx, r12
mov r12, 0x6730d2a0f6b0f624 
mov [ rsp + 0x110 ], r15
mulx r15, rbp, r12
adox rbp, r9
adcx rdi, [ rsp + 0xd8 ]
setc r9b
clc
adcx r13, r8
adcx rcx, r10
mov r13, 0x64774b84f38512bf 
mulx r10, r8, r13
adcx rbp, r11
adox r8, r15
mov r11, 0x4b1ba7b6434bacd7 
mulx r13, r15, r11
adox r15, r10
adox rbx, r13
mov rdx, 0x0 
adox r14, rdx
adcx r8, [ rsp + 0x110 ]
adcx r15, [ rsp + 0x108 ]
adcx rbx, [ rsp + 0x100 ]
adcx r14, rdi
mov rdi, -0x3 
inc rdi
adox rcx, [ rsp + 0x58 ]
mov r10, 0x89f3fffcfffcfffd 
mov rdx, r10
mulx r13, r10, rcx
mov rdx, r10
mulx r13, r10, r12
mov rdi, 0xb9feffffffffaaab 
mulx r12, r11, rdi
adox rbp, [ rsp + 0x38 ]
adox r8, [ rsp + 0x50 ]
adox r15, [ rsp + 0x48 ]
adox rbx, [ rsp + 0x40 ]
adox r14, [ rsp + 0x80 ]
movzx rdi, r9b
mov [ rsp + 0x118 ], r14
mov r14, 0x0 
adcx rdi, r14
movzx r9, byte [ rsp + 0x78 ]
mov r14, [ rsp + 0x60 ]
lea r9, [ r9 + r14 ]
adox r9, rdi
mov r14, 0x1eabfffeb153ffff 
mov [ rsp + 0x120 ], r9
mulx r9, rdi, r14
clc
adcx rdi, r12
seto r12b
mov r14, -0x2 
inc r14
adox r11, rcx
adox rdi, rbp
adcx r10, r9
mov r11, 0x64774b84f38512bf 
mulx rbp, rcx, r11
adcx rcx, r13
adox r10, r8
mov r13, 0x1a0111ea397fe69a 
mulx r9, r8, r13
adox rcx, r15
mov r15, 0x4b1ba7b6434bacd7 
mulx r11, r14, r15
adcx r14, rbp
adcx r8, r11
adox r14, rbx
mov rdx, 0x0 
adcx r9, rdx
adox r8, [ rsp + 0x118 ]
adox r9, [ rsp + 0x120 ]
movzx rbx, r12b
adox rbx, rdx
mov r12, rdi
mov rbp, 0xb9feffffffffaaab 
sub r12, rbp
mov r11, r10
mov rdx, 0x1eabfffeb153ffff 
sbb r11, rdx
mov r15, rcx
mov r13, 0x6730d2a0f6b0f624 
sbb r15, r13
mov rdx, r14
mov r13, 0x64774b84f38512bf 
sbb rdx, r13
mov r13, r8
mov rbp, 0x4b1ba7b6434bacd7 
sbb r13, rbp
mov rbp, r9
mov [ rsp + 0x128 ], rdx
mov rdx, 0x1a0111ea397fe69a 
sbb rbp, rdx
sbb rbx, 0x00000000
cmovc rbp, r9
cmovc r12, rdi
cmovc r15, rcx
cmovc r11, r10
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x8 ], r11
cmovc r13, r8
mov [ rbx + 0x0 ], r12
mov [ rbx + 0x20 ], r13
mov rdi, [ rsp + 0x128 ]
cmovc rdi, r14
mov [ rbx + 0x18 ], rdi
mov [ rbx + 0x10 ], r15
mov [ rbx + 0x28 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 2.1427
; seed 1922523138361190 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5516197 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=38, initial num_batches=31): 129495 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.023475412498864708
; number reverted permutation / tried permutation: 63404 / 89913 =70.517%
; number reverted decision / tried decision: 59121 / 90086 =65.627%
; validated in 40.768s
