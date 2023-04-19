SECTION .text
	GLOBAL fiat_bls12_381_p_mul
fiat_bls12_381_p_mul:
sub rsp, 568
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rcx
mulx rcx, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], rcx
mulx rcx, r15, [ rax + 0x18 ]
test al, al
adox r13, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], r13
mulx r13, r8, [ rax + 0x10 ]
adcx r9, rdi
adcx r8, rbx
mov rdx, [ rsi + 0x0 ]
mulx rdi, rbx, [ rax + 0x0 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x20 ], r8
mov [ rsp - 0x18 ], r9
mulx r9, r8, rbx
adcx r15, r13
mov rdx, [ rax + 0x20 ]
mulx r13, r9, [ rsi + 0x8 ]
adcx r9, rcx
mov rdx, 0x4b1ba7b6434bacd7 
mov [ rsp - 0x10 ], r9
mulx r9, rcx, r8
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], r9
mulx r9, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x8 ], r9
mov [ rsp + 0x10 ], rcx
mulx rcx, r9, [ rax + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x18 ], rbp
mov [ rsp + 0x20 ], r12
mulx r12, rbp, [ rax + 0x10 ]
adox rbp, r14
adox r15, r12
mov rdx, 0xb9feffffffffaaab 
mulx r12, r14, r8
adcx r9, r13
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x28 ], r15
mulx r15, r13, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x30 ], rbp
mov [ rsp + 0x38 ], rcx
mulx rcx, rbp, [ rax + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r9
mov [ rsp + 0x48 ], r14
mulx r14, r9, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], r12
mov [ rsp + 0x58 ], r11
mulx r11, r12, [ rax + 0x18 ]
clc
adcx r13, rdi
adcx r9, r15
adcx r12, r14
mov rdx, [ rsi + 0x0 ]
mulx r15, rdi, [ rax + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x60 ], r12
mulx r12, r14, [ rax + 0x0 ]
adcx rdi, r11
adcx rbp, r15
mov rdx, [ rax + 0x0 ]
mulx r15, r11, [ rsi + 0x28 ]
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x68 ], r11
mov [ rsp + 0x70 ], r14
mulx r14, r11, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x78 ], rcx
mov [ rsp + 0x80 ], rbp
mulx rbp, rcx, [ rsi + 0x28 ]
clc
adcx r11, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x88 ], r11
mulx r11, r12, [ rax + 0x8 ]
seto dl
mov [ rsp + 0x90 ], rdi
mov rdi, -0x2 
inc rdi
adox r12, r15
adox rcx, r11
adcx r10, r14
mov r15b, dl
mov rdx, [ rax + 0x18 ]
mulx r11, r14, [ rsi + 0x20 ]
adcx r14, [ rsp + 0x58 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp + 0x98 ], rcx
mulx rcx, rdi, r8
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa0 ], r12
mov [ rsp + 0xa8 ], r14
mulx r14, r12, [ rax + 0x18 ]
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp + 0xb0 ], r10
mov [ rsp + 0xb8 ], r14
mulx r14, r10, r8
mov rdx, 0x64774b84f38512bf 
mov byte [ rsp + 0xc0 ], r15b
mov [ rsp + 0xc8 ], r9
mulx r9, r15, r8
adox r12, rbp
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xd0 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
seto dl
mov [ rsp + 0xd8 ], r13
mov r13, -0x2 
inc r13
adox r10, [ rsp + 0x50 ]
adox rdi, r14
adox r15, rcx
adcx rbp, r11
mov r11b, dl
mov rdx, [ rsi + 0x20 ]
mulx r14, rcx, [ rax + 0x28 ]
adcx rcx, r12
mov rdx, [ rsi + 0x18 ]
mulx r13, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xe0 ], rcx
mov [ rsp + 0xe8 ], rbp
mulx rbp, rcx, [ rax + 0x18 ]
mov rdx, 0x0 
adcx r14, rdx
mov rdx, 0x1a0111ea397fe69a 
mov [ rsp + 0xf0 ], r14
mov byte [ rsp + 0xf8 ], r11b
mulx r11, r14, r8
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x100 ], r15
mulx r15, r8, [ rsi + 0x18 ]
clc
adcx r12, [ rsp + 0x20 ]
adcx r13, [ rsp + 0x18 ]
adcx rcx, [ rsp - 0x30 ]
adox r9, [ rsp + 0x10 ]
adox r14, [ rsp + 0x0 ]
mov rdx, 0x0 
adox r11, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x108 ], rcx
mov [ rsp + 0x110 ], r13
mulx r13, rcx, [ rsi + 0x18 ]
adcx r8, rbp
adcx rcx, r15
mov rdx, [ rsi + 0x10 ]
mulx r15, rbp, [ rax + 0x28 ]
adc r13, 0x0
xor rdx, rdx
adox rbx, [ rsp + 0x48 ]
adox r10, [ rsp + 0xd8 ]
adox rdi, [ rsp + 0xc8 ]
mov rbx, [ rsp + 0x60 ]
adox rbx, [ rsp + 0x100 ]
adox r9, [ rsp + 0x90 ]
adox r14, [ rsp + 0x80 ]
adox r11, [ rsp + 0x78 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x118 ], r13
mov [ rsp + 0x120 ], rcx
mulx rcx, r13, [ rsi + 0x10 ]
movzx rdx, byte [ rsp + 0xc0 ]
mov [ rsp + 0x128 ], r8
mov r8, -0x1 
adcx rdx, r8
adcx r13, [ rsp + 0x8 ]
adcx rbp, rcx
seto dl
inc r8
adox r10, [ rsp - 0x38 ]
adox rdi, [ rsp - 0x18 ]
adox rbx, [ rsp - 0x20 ]
adox r9, [ rsp - 0x8 ]
adox r14, [ rsp - 0x10 ]
adox r11, [ rsp + 0x40 ]
adcx r15, r8
movzx rdx, dl
movzx rcx, dl
adox rcx, [ rsp + 0x38 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x130 ], r12
mulx r12, r8, [ rsi + 0x28 ]
movzx rdx, byte [ rsp + 0xf8 ]
clc
mov [ rsp + 0x138 ], r15
mov r15, -0x1 
adcx rdx, r15
adcx r8, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x140 ], r8
mulx r8, r15, [ rax + 0x28 ]
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0x148 ], rbp
mov [ rsp + 0x150 ], r13
mulx r13, rbp, r10
adcx r15, r12
mov r13, 0x1eabfffeb153ffff 
mov rdx, rbp
mulx r12, rbp, r13
mov r13, 0xb9feffffffffaaab 
mov [ rsp + 0x158 ], r15
mov [ rsp + 0x160 ], rcx
mulx rcx, r15, r13
setc r13b
clc
adcx rbp, rcx
seto cl
mov [ rsp + 0x168 ], r11
mov r11, -0x2 
inc r11
adox r15, r10
adox rbp, rdi
mov r15, 0x6730d2a0f6b0f624 
mulx rdi, r10, r15
adcx r10, r12
adox r10, rbx
mov rbx, 0x64774b84f38512bf 
mulx r11, r12, rbx
adcx r12, rdi
adox r12, r9
movzx r9, r13b
lea r9, [ r9 + r8 ]
mov r8, 0x1a0111ea397fe69a 
mulx rdi, r13, r8
mov r8, 0x4b1ba7b6434bacd7 
mulx r15, rbx, r8
adcx rbx, r11
adcx r13, r15
setc dl
clc
adcx rbp, [ rsp - 0x40 ]
movzx r11, dl
lea r11, [ r11 + rdi ]
adox rbx, r14
adox r13, [ rsp + 0x168 ]
mov r14, 0x89f3fffcfffcfffd 
mov rdx, r14
mulx rdi, r14, rbp
adcx r10, [ rsp - 0x28 ]
adcx r12, [ rsp + 0x30 ]
adcx rbx, [ rsp + 0x28 ]
adox r11, [ rsp + 0x160 ]
movzx rdi, cl
mov r15, 0x0 
adox rdi, r15
adcx r13, [ rsp + 0x150 ]
mov rdx, r14
mulx rcx, r14, r8
adcx r11, [ rsp + 0x148 ]
mov r15, 0x1eabfffeb153ffff 
mov [ rsp + 0x170 ], r9
mulx r9, r8, r15
mov r15, 0xb9feffffffffaaab 
mov [ rsp + 0x178 ], r11
mov [ rsp + 0x180 ], r13
mulx r13, r11, r15
mov r15, -0x2 
inc r15
adox r11, rbp
adcx rdi, [ rsp + 0x138 ]
mov r11, 0x6730d2a0f6b0f624 
mulx r15, rbp, r11
setc r11b
clc
adcx r8, r13
adcx rbp, r9
adox r8, r10
adox rbp, r12
mov r10, 0x64774b84f38512bf 
mulx r9, r12, r10
adcx r12, r15
mov r13, 0x1a0111ea397fe69a 
mulx r10, r15, r13
adcx r14, r9
adcx r15, rcx
adox r12, rbx
adox r14, [ rsp + 0x180 ]
mov rdx, 0x0 
adcx r10, rdx
adox r15, [ rsp + 0x178 ]
adox r10, rdi
movzx rbx, r11b
adox rbx, rdx
add r8, [ rsp - 0x48 ]
adcx rbp, [ rsp + 0x130 ]
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r11, rcx, r8
adcx r12, [ rsp + 0x110 ]
mov r11, 0x1eabfffeb153ffff 
mov rdx, rcx
mulx rdi, rcx, r11
mov r9, 0xb9feffffffffaaab 
mulx r11, r13, r9
mov r9, 0x1a0111ea397fe69a 
mov [ rsp + 0x188 ], r12
mov [ rsp + 0x190 ], rbp
mulx rbp, r12, r9
adcx r14, [ rsp + 0x108 ]
adcx r15, [ rsp + 0x128 ]
mov r9, -0x2 
inc r9
adox rcx, r11
adcx r10, [ rsp + 0x120 ]
mov r11, 0x6730d2a0f6b0f624 
mov [ rsp + 0x198 ], rbp
mulx rbp, r9, r11
adcx rbx, [ rsp + 0x118 ]
adox r9, rdi
setc dil
clc
adcx r13, r8
adcx rcx, [ rsp + 0x190 ]
adcx r9, [ rsp + 0x188 ]
mov r13, 0x64774b84f38512bf 
mulx r11, r8, r13
adox r8, rbp
adcx r8, r14
mov r14, 0x4b1ba7b6434bacd7 
mulx r13, rbp, r14
adox rbp, r11
adcx rbp, r15
adox r12, r13
adcx r12, r10
seto dl
mov r15, -0x2 
inc r15
adox rcx, [ rsp + 0x70 ]
adox r9, [ rsp + 0x88 ]
movzx r10, dl
mov r11, [ rsp + 0x198 ]
lea r10, [ r10 + r11 ]
mov r11, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r13, rcx, r11
mov r13, 0x1eabfffeb153ffff 
xchg rdx, rcx
mulx r14, r15, r13
mov r11, 0xb9feffffffffaaab 
mov [ rsp + 0x1a0 ], r9
mulx r9, r13, r11
adox r8, [ rsp + 0xb0 ]
adox rbp, [ rsp + 0xa8 ]
adcx r10, rbx
adox r12, [ rsp + 0xe8 ]
adox r10, [ rsp + 0xe0 ]
movzx rbx, dil
mov r11, 0x0 
adcx rbx, r11
adox rbx, [ rsp + 0xf0 ]
mov rdi, 0x6730d2a0f6b0f624 
mov [ rsp + 0x1a8 ], rbx
mulx rbx, r11, rdi
clc
adcx r15, r9
seto r9b
mov rdi, -0x2 
inc rdi
adox r13, rcx
mov r13, 0x64774b84f38512bf 
mulx rdi, rcx, r13
adcx r11, r14
adox r15, [ rsp + 0x1a0 ]
adox r11, r8
adcx rcx, rbx
adox rcx, rbp
mov r14, 0x1a0111ea397fe69a 
mulx rbp, r8, r14
mov rbx, 0x4b1ba7b6434bacd7 
mulx r13, r14, rbx
adcx r14, rdi
adcx r8, r13
adox r14, r12
adox r8, r10
mov rdx, 0x0 
adcx rbp, rdx
adox rbp, [ rsp + 0x1a8 ]
clc
adcx r15, [ rsp + 0x68 ]
movzx r12, r9b
adox r12, rdx
mov r10, 0x89f3fffcfffcfffd 
mov rdx, r10
mulx r9, r10, r15
mov r9, 0x6730d2a0f6b0f624 
mov rdx, r10
mulx rdi, r10, r9
mov r13, 0xb9feffffffffaaab 
mulx r9, rbx, r13
adcx r11, [ rsp + 0xa0 ]
adcx rcx, [ rsp + 0x98 ]
adcx r14, [ rsp + 0xd0 ]
adcx r8, [ rsp + 0x140 ]
adcx rbp, [ rsp + 0x158 ]
adcx r12, [ rsp + 0x170 ]
mov r13, -0x2 
inc r13
adox rbx, r15
mov rbx, 0x1eabfffeb153ffff 
mulx r13, r15, rbx
setc bl
clc
adcx r15, r9
adcx r10, r13
adox r15, r11
adox r10, rcx
mov r9, 0x64774b84f38512bf 
mulx rcx, r11, r9
adcx r11, rdi
adox r11, r14
mov rdi, 0x4b1ba7b6434bacd7 
mulx r13, r14, rdi
adcx r14, rcx
mov rcx, 0x1a0111ea397fe69a 
mulx r9, rdi, rcx
adcx rdi, r13
adox r14, r8
adox rdi, rbp
mov rdx, 0x0 
adcx r9, rdx
adox r9, r12
movzx r8, bl
adox r8, rdx
mov rbp, r15
mov rbx, 0xb9feffffffffaaab 
sub rbp, rbx
mov r12, r10
mov r13, 0x1eabfffeb153ffff 
sbb r12, r13
mov rdx, r11
mov rbx, 0x6730d2a0f6b0f624 
sbb rdx, rbx
mov rcx, r14
mov r13, 0x64774b84f38512bf 
sbb rcx, r13
mov r13, rdi
mov rbx, 0x4b1ba7b6434bacd7 
sbb r13, rbx
mov rbx, r9
mov [ rsp + 0x1b0 ], r13
mov r13, 0x1a0111ea397fe69a 
sbb rbx, r13
sbb r8, 0x00000000
cmovc rbx, r9
cmovc r12, r10
cmovc rdx, r11
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x10 ], rdx
cmovc rcx, r14
mov [ r8 + 0x18 ], rcx
mov [ r8 + 0x28 ], rbx
cmovc rbp, r15
mov r15, [ rsp + 0x1b0 ]
cmovc r15, rdi
mov [ r8 + 0x0 ], rbp
mov [ r8 + 0x8 ], r12
mov [ r8 + 0x20 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 568
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.8657
; seed 3939192994440261 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 9065641 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=65, initial num_batches=31): 216796 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.02391402880392021
; number reverted permutation / tried permutation: 72817 / 90029 =80.882%
; number reverted decision / tried decision: 64576 / 89970 =71.775%
; validated in 62.326s
