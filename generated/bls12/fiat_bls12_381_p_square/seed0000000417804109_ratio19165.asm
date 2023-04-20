SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 368
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], r15
mulx r15, rbx, rdx
test al, al
adox rax, rbp
adox r12, r10
adox r11, r13
adox r14, rcx
mov rdx, [ rsi + 0x28 ]
mulx rcx, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], r11
mulx r11, r14, rdx
adcx rbp, r9
adcx rdi, r13
adcx r14, r8
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rsi + 0x20 ]
adcx r9, r11
adox r10, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x8 ]
mulx r11, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], r14
mulx r14, r9, [ rsi + 0x28 ]
mov rdx, 0x0 
adox rcx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x10 ], r9
mov [ rsp - 0x8 ], rdi
mulx rdi, r9, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r9, r14
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], r9
mulx r9, r14, [ rsi + 0x10 ]
adox r14, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r14
mulx r14, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], rbp
mov [ rsp + 0x18 ], rcx
mulx rcx, rbp, rdx
adcx rdi, r8
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x20 ], rdi
mulx rdi, r8, [ rsi + 0x8 ]
setc dl
clc
adcx rbp, r11
adcx r8, rcx
movzx r11, dl
lea r11, [ r11 + r14 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rsi + 0x28 ]
adox r14, r9
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r14
mulx r14, r9, [ rsi + 0x20 ]
adox r9, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r9
mulx r9, rcx, [ rsi + 0x8 ]
adcx rcx, rdi
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r11
mulx r11, rdi, [ rsi + 0x8 ]
adcx rdi, r9
adox rbx, r14
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], rbx
mov [ rsp + 0x48 ], r10
mulx r10, rbx, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r15, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x50 ], r15
mov [ rsp + 0x58 ], r12
mulx r12, r15, r14
adcx rbx, r11
mov rdx, [ rsi + 0x20 ]
mulx r11, r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x60 ], rax
mov [ rsp + 0x68 ], rbx
mulx rbx, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rdi
mov [ rsp + 0x78 ], rcx
mulx rcx, rdi, [ rsi + 0x20 ]
adc r10, 0x0
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x80 ], rdi
mov [ rsp + 0x88 ], r10
mulx r10, rdi, [ rsi + 0x20 ]
xor rdx, rdx
adox rax, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], rax
mulx rax, rcx, [ rsi + 0x20 ]
adox rdi, rbx
adox rcx, r10
adox r12, rax
mov rdx, [ rsi + 0x8 ]
mulx r10, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], r12
mulx r12, rax, [ rsi + 0x10 ]
adcx rbx, r9
adcx rax, r10
mov rdx, [ rsi + 0x28 ]
mulx r10, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa0 ], rcx
mov [ rsp + 0xa8 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
adcx rcx, r12
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb0 ], r8
mulx r8, r12, [ rsi + 0x0 ]
adcx r12, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], rbp
mulx rbp, rdi, [ rsi + 0x28 ]
adcx rdi, r8
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0xc0 ], rdi
mulx rdi, r8, r15
mov rdx, 0x0 
adcx rbp, rdx
adox r9, r11
mov r11, 0xb9feffffffffaaab 
mov rdx, r15
mov [ rsp + 0xc8 ], r9
mulx r9, r15, r11
mov r11, 0x0 
adox r10, r11
mov r11, 0x1eabfffeb153ffff 
mov [ rsp + 0xd0 ], r10
mov [ rsp + 0xd8 ], rbp
mulx rbp, r10, r11
test al, al
adox r15, r14
adcx r10, r9
adox r10, rbx
mov r15, 0x6730d2a0f6b0f624 
mulx rbx, r14, r15
adcx r14, rbp
adox r14, rax
adcx r8, rbx
adox r8, rcx
mov rax, 0x1a0111ea397fe69a 
mulx r9, rcx, rax
mov rbp, 0x4b1ba7b6434bacd7 
mulx rax, rbx, rbp
adcx rbx, rdi
adcx rcx, rax
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r13, r10
mov rdi, 0x89f3fffcfffcfffd 
mov rdx, rdi
mulx r10, rdi, r13
mov r10, 0xb9feffffffffaaab 
mov rdx, rdi
mulx rax, rdi, r10
adox rbx, r12
adcx r14, [ rsp + 0xb8 ]
adcx r8, [ rsp + 0xb0 ]
adcx rbx, [ rsp + 0x78 ]
adox rcx, [ rsp + 0xc0 ]
adox r9, [ rsp + 0xd8 ]
adcx rcx, [ rsp + 0x70 ]
mulx rbp, r12, r15
seto r15b
mov r11, -0x2 
inc r11
adox rdi, r13
adcx r9, [ rsp + 0x68 ]
mov rdi, 0x1eabfffeb153ffff 
mulx r11, r13, rdi
movzx r15, r15b
movzx rdi, r15b
adcx rdi, [ rsp + 0x88 ]
setc r15b
clc
adcx r13, rax
adcx r12, r11
adox r13, r14
adox r12, r8
mov rax, 0x64774b84f38512bf 
mulx r8, r14, rax
mov r11, 0x4b1ba7b6434bacd7 
mulx rax, r10, r11
adcx r14, rbp
adox r14, rbx
adcx r10, r8
mov rbx, 0x1a0111ea397fe69a 
mulx r8, rbp, rbx
adcx rbp, rax
mov rdx, 0x0 
adcx r8, rdx
adox r10, rcx
adox rbp, r9
clc
adcx r13, [ rsp - 0x40 ]
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r9, rcx, r13
mov r9, 0xb9feffffffffaaab 
mov rdx, rcx
mulx rax, rcx, r9
adcx r12, [ rsp + 0x60 ]
adcx r14, [ rsp + 0x58 ]
adcx r10, [ rsp - 0x28 ]
adcx rbp, [ rsp - 0x30 ]
mulx r9, r11, rbx
adox r8, rdi
adcx r8, [ rsp + 0x48 ]
movzx rdi, r15b
mov rbx, 0x0 
adox rdi, rbx
mov r15, -0x3 
inc r15
adox rcx, r13
adcx rdi, [ rsp + 0x18 ]
mov rcx, 0x1eabfffeb153ffff 
mulx rbx, r13, rcx
setc r15b
clc
adcx r13, rax
mov rax, 0x6730d2a0f6b0f624 
mov byte [ rsp + 0xe0 ], r15b
mulx r15, rcx, rax
adox r13, r12
adcx rcx, rbx
adox rcx, r14
mov r12, 0x64774b84f38512bf 
mulx rbx, r14, r12
adcx r14, r15
mov r15, 0x4b1ba7b6434bacd7 
mulx r12, rax, r15
adcx rax, rbx
adcx r11, r12
adox r14, r10
adox rax, rbp
adox r11, r8
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r13, [ rsp - 0x48 ]
adcx rcx, [ rsp + 0x10 ]
adcx r14, [ rsp - 0x8 ]
adcx rax, [ rsp - 0x18 ]
adox r9, rdi
adcx r11, [ rsp - 0x20 ]
adcx r9, [ rsp + 0x20 ]
movzx r10, byte [ rsp + 0xe0 ]
adox r10, rdx
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, rbp
mulx r8, rbp, r13
mov r8, 0xb9feffffffffaaab 
mov rdx, rbp
mulx rdi, rbp, r8
mulx r12, rbx, r15
adcx r10, [ rsp + 0x38 ]
mov r15, 0x1eabfffeb153ffff 
mov [ rsp + 0xe8 ], r10
mulx r10, r8, r15
mov r15, -0x2 
inc r15
adox rbp, r13
setc bpl
clc
adcx r8, rdi
adox r8, rcx
mov r13, 0x6730d2a0f6b0f624 
mulx rdi, rcx, r13
adcx rcx, r10
mov r10, 0x64774b84f38512bf 
mulx r13, r15, r10
adcx r15, rdi
adox rcx, r14
adcx rbx, r13
mov r14, 0x1a0111ea397fe69a 
mulx r13, rdi, r14
adcx rdi, r12
mov rdx, 0x0 
adcx r13, rdx
adox r15, rax
adox rbx, r11
adox rdi, r9
clc
adcx r8, [ rsp + 0x80 ]
adox r13, [ rsp + 0xe8 ]
movzx rax, bpl
adox rax, rdx
adcx rcx, [ rsp + 0x90 ]
adcx r15, [ rsp + 0xa8 ]
mov r11, 0x89f3fffcfffcfffd 
mov rdx, r11
mulx r9, r11, r8
adcx rbx, [ rsp + 0xa0 ]
adcx rdi, [ rsp + 0x98 ]
adcx r13, [ rsp + 0xc8 ]
adcx rax, [ rsp + 0xd0 ]
mov r9, 0xb9feffffffffaaab 
mov rdx, r11
mulx r12, r11, r9
mov rbp, 0x1eabfffeb153ffff 
mulx r9, r14, rbp
mov rbp, -0x2 
inc rbp
adox r11, r8
setc r11b
clc
adcx r14, r12
adox r14, rcx
mov r8, 0x6730d2a0f6b0f624 
mulx r12, rcx, r8
mulx r8, rbp, r10
adcx rcx, r9
adcx rbp, r12
adox rcx, r15
adox rbp, rbx
mov r15, 0x1a0111ea397fe69a 
mulx r9, rbx, r15
mov r12, 0x4b1ba7b6434bacd7 
mulx r10, r15, r12
adcx r15, r8
adcx rbx, r10
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r14, [ rsp - 0x10 ]
adox r15, rdi
adox rbx, r13
mov rdi, 0x89f3fffcfffcfffd 
mov rdx, rdi
mulx r13, rdi, r14
adcx rcx, [ rsp + 0x0 ]
adcx rbp, [ rsp + 0x8 ]
adox r9, rax
mov r13, 0xb9feffffffffaaab 
mov rdx, rdi
mulx rax, rdi, r13
adcx r15, [ rsp + 0x28 ]
adcx rbx, [ rsp + 0x30 ]
adcx r9, [ rsp + 0x40 ]
movzx r8, r11b
mov r10, 0x0 
adox r8, r10
mov r11, -0x3 
inc r11
adox rdi, r14
adcx r8, [ rsp + 0x50 ]
mov rdi, 0x1eabfffeb153ffff 
mulx r10, r14, rdi
setc r11b
clc
adcx r14, rax
adox r14, rcx
mov rcx, 0x64774b84f38512bf 
mulx r12, rax, rcx
mov rdi, 0x6730d2a0f6b0f624 
mulx rcx, r13, rdi
adcx r13, r10
adox r13, rbp
adcx rax, rcx
mov rbp, 0x4b1ba7b6434bacd7 
mulx rcx, r10, rbp
adox rax, r15
adcx r10, r12
adox r10, rbx
mov r15, 0x1a0111ea397fe69a 
mulx r12, rbx, r15
adcx rbx, rcx
mov rdx, 0x0 
adcx r12, rdx
adox rbx, r9
adox r12, r8
movzx r9, r11b
adox r9, rdx
mov r11, r14
mov r8, 0xb9feffffffffaaab 
sub r11, r8
mov rcx, r13
mov rdx, 0x1eabfffeb153ffff 
sbb rcx, rdx
mov rbp, rax
sbb rbp, rdi
mov r15, r10
mov rdi, 0x64774b84f38512bf 
sbb r15, rdi
mov rdx, rbx
mov r8, 0x4b1ba7b6434bacd7 
sbb rdx, r8
mov r8, r12
mov rdi, 0x1a0111ea397fe69a 
sbb r8, rdi
sbb r9, 0x00000000
cmovc r15, r10
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x18 ], r15
cmovc r11, r14
cmovc r8, r12
mov [ r9 + 0x28 ], r8
cmovc rdx, rbx
mov [ r9 + 0x20 ], rdx
mov [ r9 + 0x0 ], r11
cmovc rcx, r13
mov [ r9 + 0x8 ], rcx
cmovc rbp, rax
mov [ r9 + 0x10 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 368
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.9165
; seed 0614215590366963 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7132546 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 176620 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02476254622122311
; number reverted permutation / tried permutation: 68433 / 90128 =75.929%
; number reverted decision / tried decision: 60241 / 89871 =67.031%
; validated in 41.694s
