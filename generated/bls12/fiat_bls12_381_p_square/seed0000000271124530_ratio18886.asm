SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 360
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
test al, al
adox r12, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r8
mov [ rsp - 0x40 ], rax
mulx rax, r8, [ rsi + 0x8 ]
adox r8, r13
adcx r11, r9
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r8
mulx r8, r11, [ rsi + 0x20 ]
adcx r9, rcx
adcx r11, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, rcx, rdx
adcx rcx, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rcx
mulx rcx, r8, [ rsi + 0x8 ]
adcx rbx, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], rbx
mulx rbx, r13, [ rsi + 0x8 ]
adox r8, rax
adox r13, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r9
mulx r9, r11, [ rsi + 0x8 ]
adox r11, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x8 ], r11
mulx r11, rbx, [ rsi + 0x10 ]
setc dl
clc
adcx rax, r11
movzx r11, dl
lea r11, [ r11 + rbp ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], r11
mulx r11, rbp, rdx
adcx rbp, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x8 ], rbp
mulx rbp, rcx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], rax
mov [ rsp + 0x18 ], rbx
mulx rbx, rax, [ rsi + 0x18 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x20 ], r13
mov [ rsp + 0x28 ], r8
mulx r8, r13, rcx
adcx rax, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, r8, [ rsi + 0x20 ]
adcx r8, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x30 ], r8
mulx r8, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], rax
mov [ rsp + 0x40 ], r12
mulx r12, rax, [ rsi + 0x10 ]
mov rdx, 0x0 
adox r9, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r14
mulx r14, r9, rdx
mov rdx, -0x2 
inc rdx
adox rbx, r10
adox rax, r8
mov rdx, [ rsi + 0x28 ]
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], rax
mov [ rsp + 0x60 ], rbx
mulx rbx, rax, [ rsi + 0x28 ]
adcx rax, r11
adox r9, r12
mov rdx, [ rsi + 0x28 ]
mulx r12, r11, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx rbx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], r11
mov [ rsp + 0x70 ], r9
mulx r9, r11, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x78 ], rbx
mov [ rsp + 0x80 ], rax
mulx rax, rbx, [ rsi + 0x18 ]
clc
adcx r10, r12
adcx r15, r8
adcx rbx, rdi
mov rdx, [ rsi + 0x20 ]
mulx r8, rdi, [ rsi + 0x28 ]
adcx rdi, rax
mov rdx, [ rsi + 0x18 ]
mulx rax, r12, [ rsi + 0x20 ]
adcx r11, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r11
mulx r11, r8, [ rsi + 0x28 ]
adox r12, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x90 ], rdi
mulx rdi, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r15
mulx r15, rbx, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r14, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], r9
mulx r9, rbp, [ rsi + 0x0 ]
adcx rbp, rdi
adcx rbx, r9
mov rdx, [ rsi + 0x20 ]
mulx r9, rdi, [ rsi + 0x0 ]
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0xb0 ], r10
mov [ rsp + 0xb8 ], r12
mulx r12, r10, r13
adcx rdi, r15
adcx r8, r9
setc r15b
clc
adcx r10, rcx
mov r10, 0x1eabfffeb153ffff 
mov rdx, r13
mulx rcx, r13, r10
setc r9b
clc
adcx r13, r12
mov r12, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc0 ], r8
mulx r8, r10, [ rsi + 0x18 ]
movzx rdx, r15b
lea rdx, [ rdx + r11 ]
adox r10, rax
mov rax, 0x0 
adox r8, rax
dec rax
movzx r9, r9b
adox r9, rax
adox r14, r13
mov r11, 0x6730d2a0f6b0f624 
xchg rdx, r12
mulx r9, r15, r11
adcx r15, rcx
mov rcx, 0x64774b84f38512bf 
mulx rax, r13, rcx
mov rcx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xc8 ], r8
mulx r8, r11, rcx
adcx r13, r9
adcx r11, rax
adox r15, rbp
mov rbp, 0x1a0111ea397fe69a 
mulx rax, r9, rbp
adox r13, rbx
adcx r9, r8
mov rdx, 0x0 
adcx rax, rdx
clc
adcx r14, [ rsp + 0x50 ]
mov rbx, 0x89f3fffcfffcfffd 
mov rdx, rbx
mulx r8, rbx, r14
mov r8, 0x64774b84f38512bf 
mov rdx, r8
mulx rbp, r8, rbx
mov rcx, 0x1eabfffeb153ffff 
mov rdx, rbx
mov [ rsp + 0xd0 ], r10
mulx r10, rbx, rcx
adox r11, rdi
adcx r15, [ rsp + 0x40 ]
adox r9, [ rsp + 0xc0 ]
adcx r13, [ rsp - 0x30 ]
adox rax, r12
adcx r11, [ rsp + 0x28 ]
adcx r9, [ rsp + 0x20 ]
adcx rax, [ rsp - 0x8 ]
mov rdi, 0xb9feffffffffaaab 
mulx rcx, r12, rdi
setc dil
movzx rdi, dil
adox rdi, [ rsp + 0x48 ]
clc
adcx r12, r14
seto r12b
mov r14, -0x2 
inc r14
adox rbx, rcx
mov rcx, 0x6730d2a0f6b0f624 
mov byte [ rsp + 0xd8 ], r12b
mulx r12, r14, rcx
adox r14, r10
adcx rbx, r15
adox r8, r12
adcx r14, r13
mov r10, 0x4b1ba7b6434bacd7 
mulx r13, r15, r10
adcx r8, r11
adox r15, rbp
mov rbp, 0x1a0111ea397fe69a 
mulx r12, r11, rbp
adox r11, r13
mov rdx, 0x0 
adox r12, rdx
adcx r15, r9
adcx r11, rax
adcx r12, rdi
movzx r9, byte [ rsp + 0xd8 ]
adc r9, 0x0
test al, al
adox rbx, [ rsp + 0x18 ]
adox r14, [ rsp + 0x10 ]
mov rax, 0x89f3fffcfffcfffd 
mov rdx, rax
mulx rdi, rax, rbx
mov rdx, rax
mulx rdi, rax, rcx
mov r13, 0x1eabfffeb153ffff 
mulx r10, rbp, r13
adox r8, [ rsp + 0x8 ]
adox r15, [ rsp + 0x38 ]
adox r11, [ rsp + 0x30 ]
mov rcx, 0xb9feffffffffaaab 
mov [ rsp + 0xe0 ], r11
mulx r11, r13, rcx
adcx rbp, r11
adox r12, [ rsp + 0x80 ]
adcx rax, r10
adox r9, [ rsp + 0x78 ]
seto r10b
mov r11, -0x2 
inc r11
adox r13, rbx
adox rbp, r14
adox rax, r8
mov r13, 0x64774b84f38512bf 
mulx r14, rbx, r13
adcx rbx, rdi
adox rbx, r15
mov rdi, 0x4b1ba7b6434bacd7 
mulx r15, r8, rdi
adcx r8, r14
adox r8, [ rsp + 0xe0 ]
mov r14, 0x1a0111ea397fe69a 
mulx rdi, r11, r14
adcx r11, r15
mov rdx, 0x0 
adcx rdi, rdx
adox r11, r12
adox rdi, r9
movzx r12, r10b
adox r12, rdx
add rbp, [ rsp - 0x40 ]
mov r10, 0x89f3fffcfffcfffd 
mov rdx, r10
mulx r9, r10, rbp
mov rdx, r10
mulx r9, r10, rcx
mov r15, -0x2 
inc r15
adox r10, rbp
adcx rax, [ rsp + 0x60 ]
adcx rbx, [ rsp + 0x58 ]
adcx r8, [ rsp + 0x70 ]
adcx r11, [ rsp + 0xb8 ]
adcx rdi, [ rsp + 0xd0 ]
mov r10, 0x1eabfffeb153ffff 
mulx r15, rbp, r10
adcx r12, [ rsp + 0xc8 ]
mov r14, 0x6730d2a0f6b0f624 
mulx r10, r13, r14
setc r14b
clc
adcx rbp, r9
adcx r13, r15
adox rbp, rax
adox r13, rbx
mov r9, 0x64774b84f38512bf 
mulx rbx, rax, r9
adcx rax, r10
adox rax, r8
mov r8, 0x4b1ba7b6434bacd7 
mulx r10, r15, r8
adcx r15, rbx
adox r15, r11
mov r11, 0x1a0111ea397fe69a 
mulx r8, rbx, r11
adcx rbx, r10
mov rdx, 0x0 
adcx r8, rdx
clc
adcx rbp, [ rsp - 0x48 ]
adcx r13, [ rsp - 0x38 ]
adcx rax, [ rsp - 0x10 ]
adox rbx, rdi
adcx r15, [ rsp - 0x18 ]
adox r8, r12
movzx rdi, r14b
adox rdi, rdx
adcx rbx, [ rsp - 0x28 ]
adcx r8, [ rsp - 0x20 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r14
mulx r12, r14, rbp
adcx rdi, [ rsp + 0x0 ]
mov rdx, rcx
mulx r12, rcx, r14
mov r10, -0x2 
inc r10
adox rcx, rbp
mov rcx, 0x1eabfffeb153ffff 
mov rdx, rcx
mulx rbp, rcx, r14
setc r10b
clc
adcx rcx, r12
adox rcx, r13
mov r13, 0x6730d2a0f6b0f624 
mov rdx, r13
mulx r12, r13, r14
adcx r13, rbp
adox r13, rax
mov rdx, r14
mulx rax, r14, r9
adcx r14, r12
adox r14, r15
mov r15, 0x4b1ba7b6434bacd7 
mulx r12, rbp, r15
adcx rbp, rax
mulx r15, rax, r11
adox rbp, rbx
adcx rax, r12
adox rax, r8
mov rbx, 0x0 
adcx r15, rbx
clc
adcx rcx, [ rsp + 0x68 ]
adcx r13, [ rsp + 0xb0 ]
adcx r14, [ rsp + 0xa0 ]
adcx rbp, [ rsp + 0x98 ]
adox r15, rdi
movzx r8, r10b
adox r8, rbx
adcx rax, [ rsp + 0x90 ]
adcx r15, [ rsp + 0x88 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rdi, r10, rcx
mov rdi, 0x1eabfffeb153ffff 
mov rdx, rdi
mulx r12, rdi, r10
mov rbx, 0xb9feffffffffaaab 
mov rdx, r10
mulx r11, r10, rbx
mov r9, -0x2 
inc r9
adox rdi, r11
adcx r8, [ rsp + 0xa8 ]
mov r11, 0x6730d2a0f6b0f624 
mulx rbx, r9, r11
adox r9, r12
setc r12b
clc
adcx r10, rcx
adcx rdi, r13
adcx r9, r14
mov r10, 0x64774b84f38512bf 
mulx r13, rcx, r10
adox rcx, rbx
adcx rcx, rbp
mov r14, 0x4b1ba7b6434bacd7 
mulx rbx, rbp, r14
adox rbp, r13
adcx rbp, rax
mov rax, 0x1a0111ea397fe69a 
mulx r14, r13, rax
adox r13, rbx
mov rdx, 0x0 
adox r14, rdx
adcx r13, r15
adcx r14, r8
movzx r15, r12b
adc r15, 0x0
mov r12, rdi
mov r8, 0xb9feffffffffaaab 
sub r12, r8
mov rbx, r9
mov rdx, 0x1eabfffeb153ffff 
sbb rbx, rdx
mov rax, rcx
sbb rax, r11
mov r11, rbp
sbb r11, r10
mov r10, r13
mov rdx, 0x4b1ba7b6434bacd7 
sbb r10, rdx
mov rdx, r14
mov r8, 0x1a0111ea397fe69a 
sbb rdx, r8
sbb r15, 0x00000000
cmovc rax, rcx
cmovc r10, r13
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x20 ], r10
cmovc r12, rdi
mov [ r15 + 0x0 ], r12
cmovc rdx, r14
mov [ r15 + 0x10 ], rax
cmovc rbx, r9
mov [ r15 + 0x8 ], rbx
mov [ r15 + 0x28 ], rdx
cmovc r11, rbp
mov [ r15 + 0x18 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 360
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8886
; seed 4026940779029774 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5095752 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=32, initial num_batches=31): 129574 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02542784656710138
; number reverted permutation / tried permutation: 68873 / 90284 =76.285%
; number reverted decision / tried decision: 60603 / 89715 =67.551%
; validated in 42.691s
