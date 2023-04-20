SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 376
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r8
mov [ rsp - 0x38 ], rdi
mulx rdi, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r15
mov [ rsp - 0x28 ], r12
mulx r12, r15, [ rsi + 0x20 ]
xor rdx, rdx
adox r8, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r8
mulx r8, r12, [ rsi + 0x8 ]
adcx r12, r9
adcx rbx, r8
mov rdx, [ rsi + 0x28 ]
mulx r8, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r15
mov [ rsp - 0x10 ], rbx
mulx rbx, r15, [ rsi + 0x28 ]
seto dl
mov [ rsp - 0x8 ], r12
mov r12, -0x2 
inc r12
adox r15, r13
adcx rax, rbp
mov bpl, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, [ rsi + 0x28 ]
adox r9, rbx
adcx r11, r10
adox r13, r8
mov rdx, [ rsi + 0x20 ]
mulx r8, r10, [ rsi + 0x28 ]
adox r10, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rbx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x0 ], r10
mov [ rsp + 0x8 ], r13
mulx r13, r10, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x10 ], r9
mov [ rsp + 0x18 ], r15
mulx r15, r9, rdx
adcx rbx, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x20 ], rbx
mulx rbx, rcx, [ rsi + 0x20 ]
adox r9, r8
mov rdx, 0x0 
adcx r12, rdx
adox r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r15
mulx r15, r8, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], r9
mov [ rsp + 0x38 ], r12
mulx r12, r9, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x40 ], r11
mov [ rsp + 0x48 ], rax
mulx rax, r11, r10
add bpl, 0x7F
adox rdi, rcx
mov rdx, [ rsi + 0x8 ]
mulx rbp, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
adcx r8, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], r8
mulx r8, rbp, [ rsi + 0x8 ]
adox rcx, rbx
adox r9, rdi
adcx rbp, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, rbx, [ rsi + 0x8 ]
adcx rbx, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], rcx
mulx rcx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rbx
mov [ rsp + 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
adcx r14, r15
setc dl
clc
adcx r9, r13
adcx rdi, rcx
mov r13b, dl
mov rdx, [ rsi + 0x0 ]
mulx rcx, r15, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], r14
mov [ rsp + 0x88 ], rax
mulx rax, r14, [ rsi + 0x0 ]
adcx rbx, r8
adcx r15, rbp
adcx r14, rcx
mov rdx, [ rsi + 0x10 ]
mulx rbp, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], r14
mulx r14, rcx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x98 ], r15
mov [ rsp + 0xa0 ], rbx
mulx rbx, r15, [ rsi + 0x18 ]
setc dl
clc
adcx r8, [ rsp - 0x28 ]
adcx rcx, rbp
mov bpl, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], rcx
mov [ rsp + 0xb0 ], r8
mulx r8, rcx, [ rsi + 0x28 ]
movzx rdx, bpl
lea rdx, [ rdx + rax ]
adcx r15, r14
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rbp, [ rsi + 0x20 ]
adcx rbp, rbx
adcx rcx, r14
mov rdx, [ rsi + 0x28 ]
mulx r14, rbx, [ rsi + 0x20 ]
adox rbx, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xb8 ], rbx
mulx rbx, r12, [ rsi + 0x8 ]
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp + 0xc0 ], rcx
mov [ rsp + 0xc8 ], rbp
mulx rbp, rcx, r11
mov rdx, 0x0 
adox r14, rdx
adc r8, 0x0
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xd0 ], r14
mov [ rsp + 0xd8 ], r8
mulx r8, r14, r11
add r13b, 0x7F
adox r12, [ rsp - 0x30 ]
mov r13, 0x6730d2a0f6b0f624 
mov rdx, r13
mov [ rsp + 0xe0 ], r15
mulx r15, r13, r11
mov rdx, 0x0 
adox rbx, rdx
adcx rcx, r8
mov r8, -0x3 
inc r8
adox r14, r10
adox rcx, r9
mov r14, 0x4b1ba7b6434bacd7 
mov rdx, r11
mulx r10, r11, r14
adcx r13, rbp
adox r13, rdi
mov r9, 0x64774b84f38512bf 
mulx rbp, rdi, r9
mov r8, 0x1a0111ea397fe69a 
mulx r14, r9, r8
adcx rdi, r15
adcx r11, rbp
adcx r9, r10
mov rdx, 0x0 
adcx r14, rdx
clc
adcx rcx, [ rsp + 0x88 ]
mov r15, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r10, r15, rcx
adcx r13, [ rsp + 0x58 ]
adox rdi, [ rsp + 0xa0 ]
mov r10, 0xb9feffffffffaaab 
mov rdx, r15
mulx rbp, r15, r10
adox r11, [ rsp + 0x98 ]
adox r9, [ rsp + 0x90 ]
adox r14, rax
adcx rdi, [ rsp + 0x78 ]
adcx r11, [ rsp + 0x70 ]
adcx r9, [ rsp + 0x80 ]
adcx r12, r14
setc al
movzx rax, al
adox rax, rbx
mov rbx, 0x1eabfffeb153ffff 
mulx r8, r14, rbx
clc
adcx r14, rbp
seto bpl
mov r10, -0x2 
inc r10
adox r15, rcx
adox r14, r13
mov r15, 0x6730d2a0f6b0f624 
mulx r13, rcx, r15
adcx rcx, r8
adox rcx, rdi
mov rdi, 0x64774b84f38512bf 
mulx r10, r8, rdi
adcx r8, r13
adox r8, r11
mov r11, 0x4b1ba7b6434bacd7 
mulx rdi, r13, r11
adcx r13, r10
adox r13, r9
mov r9, 0x1a0111ea397fe69a 
mulx r11, r10, r9
adcx r10, rdi
mov rdx, 0x0 
adcx r11, rdx
adox r10, r12
adox r11, rax
movzx r12, bpl
adox r12, rdx
xor rax, rax
adox r14, [ rsp - 0x38 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rdi, rbp, r14
mov rdx, rbp
mulx rbp, rdi, r15
mulx r9, rax, rbx
adox rcx, [ rsp + 0xb0 ]
adox r8, [ rsp + 0xa8 ]
adox r13, [ rsp + 0xe0 ]
adox r10, [ rsp + 0xc8 ]
adox r11, [ rsp + 0xc0 ]
mov r15, 0xb9feffffffffaaab 
mov [ rsp + 0xe8 ], r11
mulx r11, rbx, r15
adcx rbx, r14
adox r12, [ rsp + 0xd8 ]
seto bl
mov r14, -0x2 
inc r14
adox rax, r11
adox rdi, r9
adcx rax, rcx
adcx rdi, r8
mov r9, 0x64774b84f38512bf 
mulx r8, rcx, r9
adox rcx, rbp
adcx rcx, r13
mov rbp, 0x4b1ba7b6434bacd7 
mulx r11, r13, rbp
adox r13, r8
mov r8, 0x1a0111ea397fe69a 
mulx r9, r14, r8
adox r14, r11
adcx r13, r10
adcx r14, [ rsp + 0xe8 ]
mov rdx, 0x0 
adox r9, rdx
adcx r9, r12
movzx r10, bl
adc r10, 0x0
add rax, [ rsp - 0x40 ]
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx r12, rbx, rax
mov r12, 0x1eabfffeb153ffff 
mov rdx, rbx
mulx r11, rbx, r12
mulx rbp, r8, r15
adcx rdi, [ rsp - 0x8 ]
adcx rcx, [ rsp - 0x10 ]
adcx r13, [ rsp + 0x48 ]
adcx r14, [ rsp + 0x40 ]
adcx r9, [ rsp + 0x20 ]
adcx r10, [ rsp + 0x38 ]
mov r15, -0x2 
inc r15
adox r8, rax
setc r8b
clc
adcx rbx, rbp
adox rbx, rdi
mov rax, 0x6730d2a0f6b0f624 
mulx rdi, rbp, rax
adcx rbp, r11
adox rbp, rcx
mov r11, 0x64774b84f38512bf 
mulx r15, rcx, r11
adcx rcx, rdi
adox rcx, r13
mov r13, 0x4b1ba7b6434bacd7 
mulx r11, rdi, r13
adcx rdi, r15
adox rdi, r14
mov r14, 0x1a0111ea397fe69a 
mulx r13, r15, r14
adcx r15, r11
mov rdx, 0x0 
adcx r13, rdx
adox r15, r9
adox r13, r10
clc
adcx rbx, [ rsp - 0x18 ]
mov r9, 0x89f3fffcfffcfffd 
mov rdx, r9
mulx r10, r9, rbx
adcx rbp, [ rsp - 0x20 ]
adcx rcx, [ rsp + 0x50 ]
adcx rdi, [ rsp + 0x68 ]
adcx r15, [ rsp + 0x60 ]
adcx r13, [ rsp + 0xb8 ]
movzx r10, r8b
mov r11, 0x0 
adox r10, r11
mov r8, 0xb9feffffffffaaab 
mov rdx, r9
mulx r11, r9, r8
adcx r10, [ rsp + 0xd0 ]
mov r14, -0x2 
inc r14
adox r9, rbx
mulx rbx, r9, r12
setc r14b
clc
adcx r9, r11
mulx r8, r11, rax
adcx r11, rbx
mov rbx, 0x64774b84f38512bf 
mulx r12, rax, rbx
adox r9, rbp
adcx rax, r8
mov rbp, 0x4b1ba7b6434bacd7 
mulx rbx, r8, rbp
adox r11, rcx
adox rax, rdi
adcx r8, r12
adox r8, r15
mov rcx, 0x1a0111ea397fe69a 
mulx r15, rdi, rcx
adcx rdi, rbx
mov rdx, 0x0 
adcx r15, rdx
adox rdi, r13
adox r15, r10
clc
adcx r9, [ rsp - 0x48 ]
movzx r13, r14b
adox r13, rdx
adcx r11, [ rsp + 0x18 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r9
mulx r10, r9, r14
mov r10, 0xb9feffffffffaaab 
xchg rdx, r9
mulx rbx, r12, r10
mulx r10, rcx, rbp
adcx rax, [ rsp + 0x10 ]
adcx r8, [ rsp + 0x8 ]
mov rbp, 0x6730d2a0f6b0f624 
mov [ rsp + 0xf0 ], r10
mulx r10, r14, rbp
mov rbp, -0x2 
inc rbp
adox r12, r9
adcx rdi, [ rsp + 0x0 ]
adcx r15, [ rsp + 0x30 ]
mov r12, 0x1eabfffeb153ffff 
mulx rbp, r9, r12
adcx r13, [ rsp + 0x28 ]
setc r12b
clc
adcx r9, rbx
adcx r14, rbp
adox r9, r11
adox r14, rax
mov r11, 0x64774b84f38512bf 
mulx rax, rbx, r11
adcx rbx, r10
adcx rcx, rax
mov r10, 0x1a0111ea397fe69a 
mulx rax, rbp, r10
adox rbx, r8
adox rcx, rdi
adcx rbp, [ rsp + 0xf0 ]
adox rbp, r15
mov rdx, 0x0 
adcx rax, rdx
adox rax, r13
movzx r8, r12b
adox r8, rdx
mov rdi, r9
mov r15, 0xb9feffffffffaaab 
sub rdi, r15
mov r12, r14
mov r13, 0x1eabfffeb153ffff 
sbb r12, r13
mov rdx, rbx
mov r10, 0x6730d2a0f6b0f624 
sbb rdx, r10
mov r10, rcx
sbb r10, r11
mov r11, rbp
mov r15, 0x4b1ba7b6434bacd7 
sbb r11, r15
mov r15, rax
mov r13, 0x1a0111ea397fe69a 
sbb r15, r13
sbb r8, 0x00000000
cmovc r11, rbp
cmovc rdi, r9
cmovc r10, rcx
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x18 ], r10
cmovc rdx, rbx
cmovc r15, rax
mov [ r8 + 0x20 ], r11
mov [ r8 + 0x0 ], rdi
cmovc r12, r14
mov [ r8 + 0x8 ], r12
mov [ r8 + 0x28 ], r15
mov [ r8 + 0x10 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 376
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.9088
; seed 1069887652241038 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5538096 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=36, initial num_batches=31): 132513 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.023927537550811687
; number reverted permutation / tried permutation: 70142 / 90181 =77.779%
; number reverted decision / tried decision: 63155 / 89818 =70.314%
; validated in 39.61s
