SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 392
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
xor rdx, rdx
adox r14, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r10, [ rsi + 0x18 ]
adox r10, r15
adox r8, rdi
mov rdx, [ rsi + 0x0 ]
mulx rdi, r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r11
mov [ rsp - 0x40 ], r8
mulx r8, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r10
mov [ rsp - 0x30 ], r14
mulx r14, r10, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x28 ], rax
mov [ rsp - 0x20 ], r11
mulx r11, rax, r15
adcx r10, r8
adcx r12, r14
mov rdx, [ rsi + 0x8 ]
mulx r8, r11, [ rsi + 0x18 ]
adcx r11, r13
mov rdx, [ rsi + 0x20 ]
mulx r14, r13, [ rsi + 0x8 ]
adcx r13, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r13
mulx r13, r8, [ rsi + 0x28 ]
adcx r8, r14
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x10 ], r13
mulx r13, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r8
mov [ rsp + 0x0 ], r11
mulx r11, r8, [ rsi + 0x20 ]
setc dl
clc
adcx r8, rcx
mov cl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r8
mov [ rsp + 0x10 ], r12
mulx r12, r8, [ rsi + 0x18 ]
adox r14, r9
adox r8, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ rsi + 0x10 ]
adcx r9, r11
mov rdx, 0x0 
adox r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r9
mulx r9, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], r12
mov [ rsp + 0x28 ], r8
mulx r8, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], r14
mov [ rsp + 0x38 ], r12
mulx r12, r14, rdx
mov rdx, -0x2 
inc rdx
adox r11, r8
adox r14, r9
mov rdx, [ rsi + 0x20 ]
mulx r8, r9, rdx
adox rbx, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], rbx
mulx rbx, r12, [ rsi + 0x20 ]
adcx r12, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x48 ], r12
mulx r12, r13, [ rsi + 0x20 ]
adox r13, rbp
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r13
mulx r13, rbp, [ rsi + 0x10 ]
adcx r9, rbx
adox rbp, r12
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x58 ], r9
mov [ rsp + 0x60 ], rbp
mulx rbp, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x68 ], r14
mov [ rsp + 0x70 ], r11
mulx r11, r14, [ rsi + 0x10 ]
adcx r9, r8
mov rdx, 0x0 
adcx rbp, rdx
adox r13, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], rbp
mulx rbp, r8, [ rsi + 0x18 ]
test al, al
adox rbx, rdi
adox r14, r12
adox r8, r11
mov rdx, [ rsi + 0x0 ]
mulx r12, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x80 ], r9
mulx r9, r11, [ rsi + 0x0 ]
adox r11, rbp
adox rdi, r9
mov rdx, 0x1eabfffeb153ffff 
mulx r9, rbp, rax
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0x88 ], r13
mov byte [ rsp + 0x90 ], cl
mulx rcx, r13, rax
adcx rbp, rcx
mov rcx, 0x6730d2a0f6b0f624 
mov rdx, rax
mov [ rsp + 0x98 ], r12
mulx r12, rax, rcx
adcx rax, r9
seto r9b
mov rcx, -0x2 
inc rcx
adox r13, r15
adox rbp, rbx
adox rax, r14
mov r13, 0x64774b84f38512bf 
mulx rbx, r15, r13
adcx r15, r12
adox r15, r8
mov r14, 0x1a0111ea397fe69a 
mulx r12, r8, r14
mov rcx, 0x4b1ba7b6434bacd7 
mulx r13, r14, rcx
adcx r14, rbx
adcx r8, r13
adox r14, r11
adox r8, rdi
mov rdx, 0x0 
adcx r12, rdx
clc
adcx rbp, [ rsp - 0x20 ]
mov r11, 0x89f3fffcfffcfffd 
mov rdx, r11
mulx rdi, r11, rbp
adcx r10, rax
mov rdi, 0x6730d2a0f6b0f624 
mov rdx, rdi
mulx rax, rdi, r11
adcx r15, [ rsp + 0x10 ]
adcx r14, [ rsp + 0x0 ]
movzx rbx, r9b
mov r13, [ rsp + 0x98 ]
lea rbx, [ rbx + r13 ]
adox r12, rbx
mov r13, 0xb9feffffffffaaab 
mov rdx, r11
mulx r9, r11, r13
mov rbx, 0x1eabfffeb153ffff 
mulx r13, rcx, rbx
seto bl
mov [ rsp + 0xa0 ], r14
mov r14, -0x2 
inc r14
adox rcx, r9
adcx r8, [ rsp - 0x18 ]
adcx r12, [ rsp - 0x8 ]
movzx r9, byte [ rsp + 0x90 ]
mov r14, [ rsp - 0x10 ]
lea r9, [ r9 + r14 ]
movzx r14, bl
adcx r14, r9
setc bl
clc
adcx r11, rbp
adcx rcx, r10
adox rdi, r13
mov r11, 0x64774b84f38512bf 
mulx r10, rbp, r11
adox rbp, rax
mov rax, 0x4b1ba7b6434bacd7 
mulx r9, r13, rax
adcx rdi, r15
mov r15, 0x1a0111ea397fe69a 
mulx r11, rax, r15
adox r13, r10
adcx rbp, [ rsp + 0xa0 ]
adox rax, r9
adcx r13, r8
adcx rax, r12
mov rdx, 0x0 
adox r11, rdx
adcx r11, r14
movzx r8, bl
adc r8, 0x0
xor r12, r12
adox rcx, [ rsp + 0x38 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r14, rbx, rcx
adox rdi, [ rsp + 0x70 ]
adox rbp, [ rsp + 0x68 ]
adox r13, [ rsp + 0x40 ]
mov r14, 0x4b1ba7b6434bacd7 
mov rdx, r14
mulx r10, r14, rbx
mov r9, 0xb9feffffffffaaab 
mov rdx, rbx
mulx r12, rbx, r9
mov r15, 0x1eabfffeb153ffff 
mov [ rsp + 0xa8 ], r10
mulx r10, r9, r15
adox rax, [ rsp + 0x50 ]
adox r11, [ rsp + 0x60 ]
mov r15, 0x6730d2a0f6b0f624 
mov [ rsp + 0xb0 ], r11
mov [ rsp + 0xb8 ], rax
mulx rax, r11, r15
adcx r9, r12
adox r8, [ rsp + 0x88 ]
adcx r11, r10
seto r12b
mov r10, -0x2 
inc r10
adox rbx, rcx
adox r9, rdi
mov rbx, 0x64774b84f38512bf 
mulx rdi, rcx, rbx
adcx rcx, rax
adox r11, rbp
adox rcx, r13
mov rbp, 0x1a0111ea397fe69a 
mulx rax, r13, rbp
adcx r14, rdi
adox r14, [ rsp + 0xb8 ]
adcx r13, [ rsp + 0xa8 ]
adox r13, [ rsp + 0xb0 ]
mov rdx, 0x0 
adcx rax, rdx
adox rax, r8
clc
adcx r9, [ rsp - 0x28 ]
movzx r8, r12b
adox r8, rdx
adcx r11, [ rsp - 0x30 ]
adcx rcx, [ rsp - 0x38 ]
adcx r14, [ rsp - 0x40 ]
mov r12, 0x89f3fffcfffcfffd 
mov rdx, r9
mulx rdi, r9, r12
xchg rdx, r15
mulx r10, rdi, r9
adcx r13, [ rsp + 0x30 ]
mov r12, 0x1eabfffeb153ffff 
mov rdx, r12
mulx rbp, r12, r9
adcx rax, [ rsp + 0x28 ]
mov rbx, 0xb9feffffffffaaab 
mov rdx, r9
mov [ rsp + 0xc0 ], rax
mulx rax, r9, rbx
adcx r8, [ rsp + 0x20 ]
mov rbx, -0x2 
inc rbx
adox r9, r15
setc r9b
clc
adcx r12, rax
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rax, [ rsi + 0x28 ]
adcx rdi, rbp
adox r12, r11
mov rdx, 0x64774b84f38512bf 
mulx rbp, r11, r15
mov rdx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xc8 ], rbx
mov [ rsp + 0xd0 ], rax
mulx rax, rbx, r15
adcx r11, r10
adcx rbx, rbp
mov r10, 0x1a0111ea397fe69a 
mov rdx, r15
mulx rbp, r15, r10
adcx r15, rax
adox rdi, rcx
adox r11, r14
setc cl
clc
adcx r12, [ rsp - 0x48 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r12
mulx rax, r12, r14
adcx rdi, [ rsp + 0x8 ]
adcx r11, [ rsp + 0x18 ]
movzx rax, cl
lea rax, [ rax + rbp ]
mov rbp, rdx
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, [ rsi + 0x0 ]
adox rbx, r13
adcx rbx, [ rsp + 0x48 ]
adox r15, [ rsp + 0xc0 ]
adox rax, r8
movzx rdx, r9b
mov r13, 0x0 
adox rdx, r13
adcx r15, [ rsp + 0x58 ]
adcx rax, [ rsp + 0x80 ]
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r8, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r8, r14
adcx r9, [ rsp + 0x78 ]
adox r13, [ rsp + 0xd0 ]
mov r14, 0x1eabfffeb153ffff 
mov rdx, r12
mulx r10, r12, r14
mov r14, 0xb9feffffffffaaab 
mov [ rsp + 0xd8 ], r13
mov [ rsp + 0xe0 ], r8
mulx r8, r13, r14
seto r14b
mov [ rsp + 0xe8 ], rcx
mov rcx, -0x2 
inc rcx
adox r13, rbp
setc r13b
clc
adcx r12, r8
mov rbp, 0x6730d2a0f6b0f624 
mulx rcx, r8, rbp
adcx r8, r10
adox r12, rdi
adox r8, r11
mov rdi, 0x4b1ba7b6434bacd7 
mulx r10, r11, rdi
mov rdi, 0x1a0111ea397fe69a 
mov byte [ rsp + 0xf0 ], r13b
mulx r13, rbp, rdi
mov rdi, 0x64774b84f38512bf 
mov [ rsp + 0xf8 ], r8
mov [ rsp + 0x100 ], r12
mulx r12, r8, rdi
adcx r8, rcx
adcx r11, r12
adcx rbp, r10
mov rdx, 0x0 
adcx r13, rdx
adox r8, rbx
adox r11, r15
adox rbp, rax
adox r13, r9
mov rdx, [ rsi + 0x18 ]
mulx r15, rbx, [ rsi + 0x28 ]
clc
mov rdx, -0x1 
movzx r14, r14b
adcx r14, rdx
adcx rbx, [ rsp + 0xc8 ]
mov rax, [ rsp + 0x100 ]
seto r9b
inc rdx
adox rax, [ rsp + 0xe8 ]
mov r14, [ rsp + 0xf8 ]
adox r14, [ rsp + 0xe0 ]
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, rax
mulx r10, rax, rcx
movzx r10, r9b
movzx r12, byte [ rsp + 0xf0 ]
lea r10, [ r10 + r12 ]
adox r8, [ rsp + 0xd8 ]
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r9, [ rsi + 0x28 ]
adcx r9, r15
mov rdx, [ rsi + 0x28 ]
mulx rdi, r15, rdx
adox rbx, r11
adcx r15, rcx
adox r9, rbp
adox r15, r13
mov rdx, 0x0 
adcx rdi, rdx
mov r11, 0xb9feffffffffaaab 
mov rdx, rax
mulx rbp, rax, r11
adox rdi, r10
clc
adcx rax, r12
mov rax, 0x1eabfffeb153ffff 
mulx r12, r13, rax
seto r10b
mov rcx, -0x2 
inc rcx
adox r13, rbp
mov rbp, 0x6730d2a0f6b0f624 
mulx r11, rcx, rbp
adox rcx, r12
adcx r13, r14
adcx rcx, r8
mov r14, 0x64774b84f38512bf 
mulx r12, r8, r14
adox r8, r11
adcx r8, rbx
mov rbx, 0x4b1ba7b6434bacd7 
mulx r14, r11, rbx
adox r11, r12
adcx r11, r9
mov r9, 0x1a0111ea397fe69a 
mulx rbx, r12, r9
adox r12, r14
mov rdx, 0x0 
adox rbx, rdx
adcx r12, r15
adcx rbx, rdi
movzx r15, r10b
adc r15, 0x0
mov r10, r13
mov rdi, 0xb9feffffffffaaab 
sub r10, rdi
mov r14, rcx
sbb r14, rax
mov rdx, r8
sbb rdx, rbp
mov r9, r11
mov rbp, 0x64774b84f38512bf 
sbb r9, rbp
mov rbp, r12
mov rdi, 0x4b1ba7b6434bacd7 
sbb rbp, rdi
mov rdi, rbx
mov rax, 0x1a0111ea397fe69a 
sbb rdi, rax
sbb r15, 0x00000000
cmovc rdi, rbx
cmovc r9, r11
cmovc rdx, r8
cmovc r14, rcx
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x8 ], r14
cmovc rbp, r12
mov [ r15 + 0x28 ], rdi
mov [ r15 + 0x20 ], rbp
cmovc r10, r13
mov [ r15 + 0x18 ], r9
mov [ r15 + 0x10 ], rdx
mov [ r15 + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 392
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 2.1165
; seed 0608551777498226 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5418968 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=38, initial num_batches=31): 130334 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02405144300538405
; number reverted permutation / tried permutation: 62385 / 90056 =69.274%
; number reverted decision / tried decision: 57781 / 89943 =64.242%
; validated in 39.603s
