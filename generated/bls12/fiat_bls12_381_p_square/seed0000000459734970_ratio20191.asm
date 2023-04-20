SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 400
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], rax
mulx rax, rdi, [ rsi + 0x8 ]
xor rdx, rdx
adox rdi, r14
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, r14, [ rsi + 0x10 ]
adox r14, rax
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], r14
mulx r14, rax, rdx
adox rbx, rdi
adox rax, rbp
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rax
mov [ rsp - 0x18 ], rbx
mulx rbx, rax, rdx
adcx rbp, r15
adox r11, r14
mov rdx, 0x0 
adox rcx, rdx
adcx rax, rdi
mov rdx, [ rsi + 0x8 ]
mulx r14, r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x10 ], rcx
mulx rcx, rdi, [ rsi + 0x10 ]
adcx rdi, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r11
mulx r11, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], rdi
mov [ rsp + 0x8 ], rax
mulx rax, rdi, [ rsi + 0x20 ]
mov rdx, -0x2 
inc rdx
adox r15, r10
adox rbx, r14
mov rdx, [ rsi + 0x8 ]
mulx r14, r10, [ rsi + 0x20 ]
adcx rdi, rcx
adox r12, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rsi + 0x28 ]
adox r10, r13
adox r8, r14
adcx rcx, rax
mov rdx, [ rsi + 0x0 ]
mulx rax, r13, [ rsi + 0x28 ]
mov rdx, 0x0 
adcx r11, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], r13
mulx r13, r14, [ rsi + 0x28 ]
clc
adcx r14, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x18 ], r14
mulx r14, rax, [ rsi + 0x28 ]
mov rdx, 0x0 
adox r9, rdx
adcx rax, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x20 ], rax
mulx rax, r13, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x28 ], r11
mov [ rsp + 0x30 ], rcx
mulx rcx, r11, [ rsi + 0x18 ]
adcx r13, r14
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r13
mulx r13, r14, [ rsi + 0x20 ]
adcx r14, rax
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], r14
mulx r14, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], rdi
mov [ rsp + 0x50 ], rbp
mulx rbp, rdi, [ rsi + 0x0 ]
mov rdx, -0x2 
inc rdx
adox rax, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], rax
mulx rax, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x60 ], rdi
mov [ rsp + 0x68 ], r9
mulx r9, rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r8
mov [ rsp + 0x78 ], r10
mulx r10, r8, rdx
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x80 ], r12
mov [ rsp + 0x88 ], rbx
mulx rbx, r12, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
adox r11, r14
adox rdi, rcx
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, rdx
adox rbp, r9
adox rbx, rax
mov rdx, [ rsi + 0x8 ]
mulx r9, rax, [ rsi + 0x0 ]
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], rbp
mulx rbp, rbx, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], rdi
mov [ rsp + 0xb0 ], r11
mulx r11, rdi, [ rsi + 0x0 ]
mov rdx, 0x0 
adox r15, rdx
adcx rcx, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], rcx
mulx rcx, r13, [ rsi + 0x20 ]
adc r14, 0x0
add rax, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc0 ], r14
mulx r14, r10, [ rsi + 0x10 ]
adcx r10, r9
adcx rdi, r14
adcx r13, r11
mov rdx, [ rsi + 0x28 ]
mulx r11, r9, [ rsi + 0x0 ]
adcx r9, rcx
mov rdx, 0x1eabfffeb153ffff 
mulx r14, rcx, r12
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xc8 ], r15
mov [ rsp + 0xd0 ], r9
mulx r9, r15, r12
adc r11, 0x0
test al, al
adox r15, r8
adcx rcx, r9
adox rcx, rax
mov r15, 0x6730d2a0f6b0f624 
mov rdx, r12
mulx r8, r12, r15
adcx r12, r14
mov rax, 0x1a0111ea397fe69a 
mulx r9, r14, rax
adcx rbx, r8
mov r8, 0x4b1ba7b6434bacd7 
mulx r15, rax, r8
adcx rax, rbp
adox r12, r10
adox rbx, rdi
adcx r14, r15
mov rdx, 0x0 
adcx r9, rdx
clc
adcx rcx, [ rsp - 0x38 ]
adcx r12, [ rsp + 0x90 ]
adox rax, r13
adcx rbx, [ rsp + 0x88 ]
adcx rax, [ rsp + 0x80 ]
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, rbp
mulx r10, rbp, rcx
mov r10, 0x1eabfffeb153ffff 
mov rdx, rbp
mulx rdi, rbp, r10
adox r14, [ rsp + 0xd0 ]
adox r9, r11
adcx r14, [ rsp + 0x78 ]
mov r13, 0xb9feffffffffaaab 
mulx r15, r11, r13
seto r8b
mov r13, -0x2 
inc r13
adox rbp, r15
adcx r9, [ rsp + 0x70 ]
mov r15, 0x6730d2a0f6b0f624 
mulx r10, r13, r15
movzx r8, r8b
movzx r15, r8b
adcx r15, [ rsp + 0x68 ]
setc r8b
clc
adcx r11, rcx
adcx rbp, r12
adox r13, rdi
adcx r13, rbx
mov r11, 0x64774b84f38512bf 
mulx r12, rcx, r11
adox rcx, r10
adcx rcx, rax
mov rbx, 0x1a0111ea397fe69a 
mulx rdi, rax, rbx
mov r10, 0x4b1ba7b6434bacd7 
mulx r11, rbx, r10
adox rbx, r12
adox rax, r11
mov rdx, 0x0 
adox rdi, rdx
adcx rbx, r14
adcx rax, r9
adcx rdi, r15
movzx r14, r8b
adc r14, 0x0
xor r9, r9
adox rbp, [ rsp - 0x48 ]
adox r13, [ rsp + 0x50 ]
adox rcx, [ rsp + 0x8 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r15, r8, rbp
mov r15, 0xb9feffffffffaaab 
mov rdx, r8
mulx r12, r8, r15
mov r11, 0x6730d2a0f6b0f624 
mulx r10, r9, r11
mov r11, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xd8 ], rcx
mulx rcx, r15, r11
mov r11, 0x1eabfffeb153ffff 
mov [ rsp + 0xe0 ], rcx
mov [ rsp + 0xe8 ], r15
mulx r15, rcx, r11
adox rbx, [ rsp + 0x0 ]
adox rax, [ rsp + 0x48 ]
adcx rcx, r12
adcx r9, r15
adox rdi, [ rsp + 0x30 ]
adox r14, [ rsp + 0x28 ]
seto r12b
mov r15, -0x2 
inc r15
adox r8, rbp
adox rcx, r13
mov r8, 0x64774b84f38512bf 
mulx r13, rbp, r8
adcx rbp, r10
mov r10, 0x1a0111ea397fe69a 
mulx r11, r15, r10
adcx r13, [ rsp + 0xe8 ]
adox r9, [ rsp + 0xd8 ]
adox rbp, rbx
adcx r15, [ rsp + 0xe0 ]
adox r13, rax
mov rdx, 0x0 
adcx r11, rdx
adox r15, rdi
clc
adcx rcx, [ rsp + 0x60 ]
adcx r9, [ rsp + 0x58 ]
adcx rbp, [ rsp + 0xb0 ]
adox r11, r14
movzx rbx, r12b
adox rbx, rdx
adcx r13, [ rsp + 0xa8 ]
adcx r15, [ rsp + 0xa0 ]
mov rax, 0x89f3fffcfffcfffd 
mov rdx, rax
mulx rdi, rax, rcx
mov rdi, 0x6730d2a0f6b0f624 
mov rdx, rdi
mulx r12, rdi, rax
mov r14, 0xb9feffffffffaaab 
mov rdx, rax
mulx r10, rax, r14
mov r14, -0x2 
inc r14
adox rax, rcx
adcx r11, [ rsp + 0x98 ]
mov rax, 0x1eabfffeb153ffff 
mulx r14, rcx, rax
adcx rbx, [ rsp + 0xc8 ]
setc al
clc
adcx rcx, r10
adcx rdi, r14
adox rcx, r9
adox rdi, rbp
mulx rbp, r9, r8
adcx r9, r12
mov r12, 0x4b1ba7b6434bacd7 
mulx r14, r10, r12
adcx r10, rbp
adox r9, r13
adox r10, r15
mov r13, 0x1a0111ea397fe69a 
mulx rbp, r15, r13
adcx r15, r14
adox r15, r11
mov rdx, 0x0 
adcx rbp, rdx
adox rbp, rbx
clc
adcx rcx, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x30 ]
movzx r11, al
adox r11, rdx
adcx r9, [ rsp - 0x28 ]
mov rax, 0x89f3fffcfffcfffd 
mov rdx, rax
mulx rbx, rax, rcx
mov rdx, rax
mulx rbx, rax, r8
mov r14, 0xb9feffffffffaaab 
mulx r13, r12, r14
mov r14, -0x2 
inc r14
adox r12, rcx
mov r12, 0x6730d2a0f6b0f624 
mulx r14, rcx, r12
adcx r10, [ rsp - 0x18 ]
adcx r15, [ rsp - 0x20 ]
adcx rbp, [ rsp - 0x8 ]
mov r12, 0x1eabfffeb153ffff 
mov [ rsp + 0xf0 ], rbp
mulx rbp, r8, r12
adcx r11, [ rsp - 0x10 ]
setc r12b
clc
adcx r8, r13
adox r8, rdi
adcx rcx, rbp
adcx rax, r14
adox rcx, r9
adox rax, r10
mov rdi, 0x4b1ba7b6434bacd7 
mulx r13, r9, rdi
adcx r9, rbx
adox r9, r15
mov rbx, 0x1a0111ea397fe69a 
mulx r10, r14, rbx
adcx r14, r13
mov rdx, 0x0 
adcx r10, rdx
adox r14, [ rsp + 0xf0 ]
clc
adcx r8, [ rsp + 0x10 ]
adcx rcx, [ rsp + 0x18 ]
adox r10, r11
movzx r15, r12b
adox r15, rdx
adcx rax, [ rsp + 0x20 ]
adcx r9, [ rsp + 0x38 ]
adcx r14, [ rsp + 0x40 ]
mov rbp, 0x89f3fffcfffcfffd 
mov rdx, rbp
mulx r12, rbp, r8
mov r12, 0x6730d2a0f6b0f624 
mov rdx, rbp
mulx r11, rbp, r12
mulx rbx, r13, rdi
adcx r10, [ rsp + 0xb8 ]
mov rdi, 0xb9feffffffffaaab 
mov [ rsp + 0xf8 ], r10
mulx r10, r12, rdi
mov rdi, -0x2 
inc rdi
adox r12, r8
mov r12, 0x1eabfffeb153ffff 
mulx rdi, r8, r12
adcx r15, [ rsp + 0xc0 ]
setc r12b
clc
adcx r8, r10
mov r10, 0x64774b84f38512bf 
mov byte [ rsp + 0x100 ], r12b
mov [ rsp + 0x108 ], r15
mulx r15, r12, r10
adox r8, rcx
adcx rbp, rdi
adox rbp, rax
adcx r12, r11
adox r12, r9
mov rcx, 0x1a0111ea397fe69a 
mulx r9, rax, rcx
adcx r13, r15
adcx rax, rbx
mov rdx, 0x0 
adcx r9, rdx
adox r13, r14
adox rax, [ rsp + 0xf8 ]
adox r9, [ rsp + 0x108 ]
movzx r14, byte [ rsp + 0x100 ]
adox r14, rdx
mov r11, r8
mov rbx, 0xb9feffffffffaaab 
sub r11, rbx
mov rdi, rbp
mov r15, 0x1eabfffeb153ffff 
sbb rdi, r15
mov rdx, r12
mov rcx, 0x6730d2a0f6b0f624 
sbb rdx, rcx
mov rcx, r13
sbb rcx, r10
mov rbx, rax
mov r15, 0x4b1ba7b6434bacd7 
sbb rbx, r15
mov r15, r9
mov r10, 0x1a0111ea397fe69a 
sbb r15, r10
sbb r14, 0x00000000
cmovc rcx, r13
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x18 ], rcx
cmovc rbx, rax
cmovc r15, r9
mov [ r14 + 0x28 ], r15
cmovc r11, r8
mov [ r14 + 0x0 ], r11
cmovc rdi, rbp
cmovc rdx, r12
mov [ r14 + 0x10 ], rdx
mov [ r14 + 0x8 ], rdi
mov [ r14 + 0x20 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 400
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 2.0191
; seed 3192173116842330 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 7815424 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=58, initial num_batches=31): 202389 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.025896099814930067
; number reverted permutation / tried permutation: 69848 / 89848 =77.740%
; number reverted decision / tried decision: 61818 / 90151 =68.572%
; validated in 62.529s
