SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 384
mov rdx, [ rsi + 0x28 ]
mulx r10, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], rdi
mulx rdi, r10, [ rsi + 0x18 ]
test al, al
adox r10, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r10
mulx r10, rbx, [ rsi + 0x8 ]
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r12
mulx r12, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], rbx
mulx rbx, rcx, [ rsi + 0x18 ]
adcx r15, r10
adcx rcx, r12
adox r8, rdi
mov rdx, [ rsi + 0x0 ]
mulx r10, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r8
mulx r8, r12, rdx
adcx rdi, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], r8
mulx r8, rbx, rdx
adox rbx, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r12
mov [ rsp + 0x10 ], rdi
mulx rdi, r12, [ rsi + 0x0 ]
adox r9, r8
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x18 ], r9
mulx r9, r8, [ rsi + 0x18 ]
adcx r12, r10
adox r8, rbx
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r8
mov [ rsp + 0x28 ], rdi
mulx rdi, r8, [ rsi + 0x10 ]
mov rdx, 0x0 
adox r9, rdx
mov [ rsp + 0x30 ], r9
xor r9, r9
adox r8, r13
mov rdx, [ rsi + 0x20 ]
mulx r9, r13, [ rsi + 0x8 ]
adcx r13, rbp
adox r10, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbp, [ rsi + 0x20 ]
adcx rbp, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], rbp
mulx rbp, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], r13
mov [ rsp + 0x48 ], r10
mulx r10, r13, rdx
adox r11, rbx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x50 ], r11
mulx r11, rbx, r14
mov r11, 0xb9feffffffffaaab 
mov rdx, rbx
mov [ rsp + 0x58 ], r8
mulx r8, rbx, r11
adcx r9, rdi
adcx r13, rbp
mov rdi, 0x6730d2a0f6b0f624 
mulx r11, rbp, rdi
mov rdi, 0x1eabfffeb153ffff 
mov [ rsp + 0x60 ], r13
mov [ rsp + 0x68 ], r9
mulx r9, r13, rdi
adcx rax, r10
setc r10b
clc
adcx r13, r8
adcx rbp, r9
mov r8, 0x64774b84f38512bf 
mulx rdi, r9, r8
adcx r9, r11
mov r11, 0x4b1ba7b6434bacd7 
mov [ rsp + 0x70 ], rax
mulx rax, r8, r11
adcx r8, rdi
mov rdi, 0x1a0111ea397fe69a 
mov byte [ rsp + 0x78 ], r10b
mulx r10, r11, rdi
adcx r11, rax
mov rdx, 0x0 
adcx r10, rdx
clc
adcx rbx, r14
adcx r13, [ rsp - 0x18 ]
adcx rbp, r15
adcx r9, rcx
adcx r8, [ rsp + 0x10 ]
adcx r11, r12
mov rdx, [ rsi + 0x28 ]
mulx r14, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mulx rax, r12, [ rsi + 0x18 ]
adcx r10, [ rsp + 0x28 ]
setc dl
clc
adcx rbx, rcx
mov cl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
adcx rdi, r14
adcx r12, rbx
mov rdx, [ rsi + 0x28 ]
mulx rbx, r14, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x88 ], r12
mov [ rsp + 0x90 ], rdi
mulx rdi, r12, [ rsi + 0x20 ]
adcx r12, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x98 ], r12
mulx r12, rax, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa0 ], r15
mov byte [ rsp + 0xa8 ], cl
mulx rcx, r15, [ rsi + 0x20 ]
adox r15, [ rsp - 0x20 ]
adox rax, rcx
adcx r14, rdi
mov rdx, [ rsi + 0x0 ]
mulx rcx, rdi, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx rbx, rdx
adox r12, rdx
add rcx, [ rsp + 0x8 ]
mov [ rsp + 0xb0 ], rbx
mov rbx, -0x3 
inc rbx
adox rdi, r13
adox rcx, rbp
mov r13, 0x89f3fffcfffcfffd 
mov rdx, r13
mulx rbp, r13, rdi
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, [ rsi + 0x8 ]
adcx rbp, [ rsp - 0x8 ]
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0xb8 ], r14
mov [ rsp + 0xc0 ], r12
mulx r12, r14, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xc8 ], rax
mov [ rsp + 0xd0 ], r15
mulx r15, rax, [ rsi + 0x28 ]
adox rbp, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd8 ], r12
mulx r12, r9, [ rsi + 0x8 ]
adcx r9, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe0 ], r14
mulx r14, rbx, [ rsi + 0x8 ]
adcx rbx, r12
adcx rax, r14
adox r9, r8
mov rdx, 0xb9feffffffffaaab 
mulx r12, r8, r13
adox rbx, r11
mov r11, 0x1eabfffeb153ffff 
mov rdx, r13
mulx r14, r13, r11
setc r11b
clc
adcx r13, r12
adox rax, r10
movzx r10, r11b
lea r10, [ r10 + r15 ]
movzx r15, byte [ rsp + 0xa8 ]
adox r15, r10
mov r11, 0x6730d2a0f6b0f624 
mulx r10, r12, r11
seto r11b
mov [ rsp + 0xe8 ], r15
mov r15, -0x2 
inc r15
adox r8, rdi
adox r13, rcx
mov r8, 0x4b1ba7b6434bacd7 
mulx rcx, rdi, r8
adcx r12, r14
adox r12, rbp
adcx r10, [ rsp + 0xe0 ]
mov rbp, 0x1a0111ea397fe69a 
mulx r15, r14, rbp
adcx rdi, [ rsp + 0xd8 ]
adcx r14, rcx
mov rdx, 0x0 
adcx r15, rdx
adox r10, r9
adox rdi, rbx
adox r14, rax
clc
adcx r13, [ rsp - 0x28 ]
adcx r12, [ rsp + 0x58 ]
adcx r10, [ rsp + 0x48 ]
adcx rdi, [ rsp + 0x50 ]
adox r15, [ rsp + 0xe8 ]
adcx r14, [ rsp + 0xd0 ]
adcx r15, [ rsp + 0xc8 ]
movzx r9, r11b
adox r9, rdx
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx rax, rbx, r13
adcx r9, [ rsp + 0xc0 ]
mov rax, 0xb9feffffffffaaab 
mov rdx, rbx
mulx r11, rbx, rax
mov rcx, -0x2 
inc rcx
adox rbx, r13
mov rbx, 0x1eabfffeb153ffff 
mulx rcx, r13, rbx
setc bpl
clc
adcx r13, r11
adox r13, r12
mov r12, 0x6730d2a0f6b0f624 
mulx r8, r11, r12
adcx r11, rcx
adox r11, r10
mov r10, 0x4b1ba7b6434bacd7 
mulx rbx, rcx, r10
mov r10, 0x64774b84f38512bf 
mulx rax, r12, r10
adcx r12, r8
adcx rcx, rax
adox r12, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx rax, r8, rdi
adcx r8, rbx
adox rcx, r14
adox r8, r15
mov r14, 0x0 
adcx rax, r14
adox rax, r9
clc
adcx r13, [ rsp - 0x38 ]
movzx r15, bpl
adox r15, r14
adcx r11, [ rsp - 0x30 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r9, rbp, r13
mov r9, 0x1eabfffeb153ffff 
mov rdx, rbp
mulx rbx, rbp, r9
mulx rdi, r14, r10
adcx r12, [ rsp - 0x10 ]
adcx rcx, [ rsp + 0x0 ]
adcx r8, [ rsp + 0x18 ]
adcx rax, [ rsp + 0x20 ]
mov r10, 0xb9feffffffffaaab 
mov [ rsp + 0xf0 ], rax
mulx rax, r9, r10
mov r10, -0x2 
inc r10
adox rbp, rax
adcx r15, [ rsp + 0x30 ]
setc al
clc
adcx r9, r13
mov r9, 0x6730d2a0f6b0f624 
mulx r10, r13, r9
adcx rbp, r11
adox r13, rbx
adcx r13, r12
mov r11, 0x4b1ba7b6434bacd7 
mulx r12, rbx, r11
adox r14, r10
adcx r14, rcx
adox rbx, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r10, rcx, rdi
adox rcx, r12
adcx rbx, r8
mov rdx, 0x0 
adox r10, rdx
adcx rcx, [ rsp + 0xf0 ]
adcx r10, r15
movzx r8, al
adc r8, 0x0
movzx rax, byte [ rsp + 0x78 ]
add rax, [ rsp - 0x40 ]
add rbp, [ rsp - 0x48 ]
adcx r13, [ rsp + 0x40 ]
mov r15, 0x89f3fffcfffcfffd 
mov rdx, r15
mulx r12, r15, rbp
adcx r14, [ rsp + 0x38 ]
adcx rbx, [ rsp + 0x68 ]
adcx rcx, [ rsp + 0x60 ]
mov r12, 0xb9feffffffffaaab 
mov rdx, r12
mulx rdi, r12, r15
adcx r10, [ rsp + 0x70 ]
adcx rax, r8
mov r8, 0x1eabfffeb153ffff 
mov rdx, r15
mulx r11, r15, r8
mov r8, -0x2 
inc r8
adox r12, rbp
setc r12b
clc
adcx r15, rdi
adox r15, r13
mulx r13, rbp, r9
adcx rbp, r11
adox rbp, r14
mov r14, 0x64774b84f38512bf 
mulx r11, rdi, r14
adcx rdi, r13
adox rdi, rbx
mov rbx, 0x4b1ba7b6434bacd7 
mulx r8, r13, rbx
adcx r13, r11
adox r13, rcx
mov rcx, 0x1a0111ea397fe69a 
mulx rbx, r11, rcx
adcx r11, r8
adox r11, r10
mov rdx, 0x0 
adcx rbx, rdx
adox rbx, rax
movzx r10, r12b
adox r10, rdx
add r15, [ rsp + 0xa0 ]
adcx rbp, [ rsp + 0x80 ]
mov r12, 0x89f3fffcfffcfffd 
mov rdx, r12
mulx rax, r12, r15
adcx rdi, [ rsp + 0x90 ]
mov rdx, r12
mulx r12, rax, r9
mulx r14, r8, rcx
adcx r13, [ rsp + 0x88 ]
adcx r11, [ rsp + 0x98 ]
adcx rbx, [ rsp + 0xb8 ]
mov rcx, 0xb9feffffffffaaab 
mov [ rsp + 0xf8 ], rbx
mulx rbx, r9, rcx
adcx r10, [ rsp + 0xb0 ]
mov rcx, -0x2 
inc rcx
adox r9, r15
mov r9, 0x1eabfffeb153ffff 
mulx rcx, r15, r9
setc r9b
clc
adcx r15, rbx
adcx rax, rcx
adox r15, rbp
adox rax, rdi
mov rbp, 0x64774b84f38512bf 
mulx rbx, rdi, rbp
adcx rdi, r12
adox rdi, r13
mov r12, 0x4b1ba7b6434bacd7 
mulx rcx, r13, r12
adcx r13, rbx
adox r13, r11
adcx r8, rcx
mov rdx, 0x0 
adcx r14, rdx
adox r8, [ rsp + 0xf8 ]
adox r14, r10
movzx r11, r9b
adox r11, rdx
mov r9, r15
mov r10, 0xb9feffffffffaaab 
sub r9, r10
mov rbx, rax
mov rcx, 0x1eabfffeb153ffff 
sbb rbx, rcx
mov rdx, rdi
mov r12, 0x6730d2a0f6b0f624 
sbb rdx, r12
mov rcx, r13
sbb rcx, rbp
mov rbp, r8
mov r12, 0x4b1ba7b6434bacd7 
sbb rbp, r12
mov r12, r14
mov r10, 0x1a0111ea397fe69a 
sbb r12, r10
sbb r11, 0x00000000
cmovc rcx, r13
cmovc r12, r14
cmovc rbp, r8
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x20 ], rbp
cmovc rdx, rdi
mov [ r11 + 0x18 ], rcx
mov [ r11 + 0x10 ], rdx
cmovc r9, r15
mov [ r11 + 0x28 ], r12
cmovc rbx, rax
mov [ r11 + 0x0 ], r9
mov [ r11 + 0x8 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 384
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 2.0124
; seed 0152406734766564 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7970709 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=62, initial num_batches=31): 210522 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.026411954068326922
; number reverted permutation / tried permutation: 69153 / 89805 =77.004%
; number reverted decision / tried decision: 61151 / 90194 =67.799%
; validated in 57.78s
