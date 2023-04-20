SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 392
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
xor rdx, rdx
adox r12, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r10, [ rsi + 0x28 ]
adox r11, r13
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp - 0x48 ], r11
mulx r11, r13, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r12
mulx r12, r11, [ rsi + 0x8 ]
mov rdx, 0x6730d2a0f6b0f624 
mov [ rsp - 0x38 ], rax
mov [ rsp - 0x30 ], rdi
mulx rdi, rax, r13
adcx r11, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r10
mulx r10, r9, [ rsi + 0x10 ]
mov rdx, 0x1eabfffeb153ffff 
mov [ rsp - 0x20 ], r11
mov [ rsp - 0x18 ], rdi
mulx rdi, r11, r13
adcx r9, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], r9
mulx r9, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], rax
mov [ rsp + 0x0 ], rdi
mulx rdi, rax, [ rsi + 0x0 ]
adcx r12, r10
adcx rax, r9
mov rdx, [ rsi + 0x28 ]
mulx r9, r10, [ rsi + 0x0 ]
adcx r10, rdi
mov rdx, 0x0 
adcx r9, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x8 ], r9
mulx r9, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r10
mov [ rsp + 0x18 ], rax
mulx rax, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x20 ], r10
mov [ rsp + 0x28 ], r12
mulx r12, r10, [ rsi + 0x20 ]
adox rbx, rcx
clc
adcx rdi, rax
adox r10, rbp
adox r14, r12
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, rax, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x30 ], rdi
mov [ rsp + 0x38 ], r14
mulx r14, rdi, [ rsi + 0x0 ]
seto dl
mov [ rsp + 0x40 ], rdi
mov rdi, -0x2 
inc rdi
adox rax, r14
movzx r14, dl
lea r14, [ r14 + r15 ]
adcx rcx, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, r15, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x48 ], rax
mulx rax, rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], rcx
mov [ rsp + 0x58 ], r14
mulx r14, rcx, [ rsi + 0x28 ]
adcx r15, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x60 ], r15
mulx r15, rbp, [ rsi + 0x28 ]
adox rcx, r12
adox rbp, r14
mov rdx, [ rsi + 0x28 ]
mulx r14, r12, [ rsi + 0x20 ]
adox r12, r15
adox rdi, r14
mov rdx, [ rsi + 0x20 ]
mulx r14, r15, rdx
adcx r15, r9
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], rdi
mulx rdi, r9, [ rsi + 0x20 ]
adcx r9, r14
mov rdx, 0x64774b84f38512bf 
mov [ rsp + 0x70 ], r12
mulx r12, r14, r13
mov rdx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0x78 ], rbp
mov [ rsp + 0x80 ], rcx
mulx rcx, rbp, r13
mov rdx, 0x0 
adox rax, rdx
mov rdx, 0xb9feffffffffaaab 
mov [ rsp + 0x88 ], rax
mov [ rsp + 0x90 ], r9
mulx r9, rax, r13
mov rdx, -0x2 
inc rdx
adox r11, r9
mov r9, [ rsp + 0x0 ]
adox r9, [ rsp - 0x8 ]
adox r14, [ rsp - 0x18 ]
adox rbp, r12
setc r12b
clc
adcx rax, r8
mov rdx, [ rsi + 0x8 ]
mulx r8, rax, [ rsi + 0x0 ]
mov rdx, 0x1a0111ea397fe69a 
mov [ rsp + 0x98 ], r15
mov [ rsp + 0xa0 ], rdi
mulx rdi, r15, r13
adox r15, rcx
adcx r11, [ rsp - 0x20 ]
adcx r9, [ rsp - 0x10 ]
seto r13b
mov rcx, -0x2 
inc rcx
adox rax, r11
movzx r11, r13b
lea r11, [ r11 + rdi ]
adcx r14, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r13, rdi, [ rsi + 0x8 ]
adcx rbp, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0xa8 ], r12b
mulx r12, rcx, rdx
adcx r15, [ rsp + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r10
mov [ rsp + 0xb8 ], rbx
mulx rbx, r10, [ rsi + 0x8 ]
adcx r11, [ rsp + 0x8 ]
setc dl
clc
adcx rcx, r8
adox rcx, r9
adcx rdi, r12
adcx r10, r13
mov r8b, dl
mov rdx, [ rsi + 0x8 ]
mulx r13, r9, [ rsi + 0x20 ]
adcx r9, rbx
adcx r13, [ rsp - 0x28 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rbx, r12, rax
adox rdi, r14
mov rbx, 0x6730d2a0f6b0f624 
mov rdx, r12
mulx r14, r12, rbx
adox r10, rbp
adox r9, r15
adox r13, r11
mov rbp, 0xb9feffffffffaaab 
mulx r11, r15, rbp
setc bl
clc
adcx r15, rax
movzx r15, bl
mov rax, [ rsp - 0x30 ]
lea r15, [ r15 + rax ]
mov rax, 0x1eabfffeb153ffff 
mulx rbp, rbx, rax
movzx rax, r8b
adox rax, r15
seto r8b
mov r15, -0x2 
inc r15
adox rbx, r11
adcx rbx, rcx
adox r12, rbp
adcx r12, rdi
mov rcx, 0x64774b84f38512bf 
mulx r11, rdi, rcx
mov rbp, 0x4b1ba7b6434bacd7 
mulx rcx, r15, rbp
adox rdi, r14
adox r15, r11
adcx rdi, r10
adcx r15, r9
mov r14, 0x1a0111ea397fe69a 
mulx r9, r10, r14
adox r10, rcx
adcx r10, r13
mov rdx, 0x0 
adox r9, rdx
adcx r9, rax
movzx r13, r8b
adc r13, 0x0
test al, al
adox rbx, [ rsp - 0x38 ]
mov r8, 0x89f3fffcfffcfffd 
mov rdx, r8
mulx rax, r8, rbx
mov rax, 0x1eabfffeb153ffff 
mov rdx, r8
mulx r11, r8, rax
mulx rax, rcx, rbp
adox r12, [ rsp - 0x40 ]
adox rdi, [ rsp - 0x48 ]
adox r15, [ rsp + 0xb8 ]
adox r10, [ rsp + 0xb0 ]
mov r14, 0x6730d2a0f6b0f624 
mov [ rsp + 0xc0 ], r10
mulx r10, rbp, r14
mov r14, 0xb9feffffffffaaab 
mov [ rsp + 0xc8 ], rax
mov [ rsp + 0xd0 ], r15
mulx r15, rax, r14
adox r9, [ rsp + 0x38 ]
adcx r8, r15
adox r13, [ rsp + 0x58 ]
seto r15b
mov r14, -0x2 
inc r14
adox rax, rbx
adox r8, r12
adcx rbp, r11
mov rax, 0x64774b84f38512bf 
mulx r11, rbx, rax
adox rbp, rdi
adcx rbx, r10
adcx rcx, r11
mov r12, 0x1a0111ea397fe69a 
mulx r10, rdi, r12
adox rbx, [ rsp + 0xd0 ]
adcx rdi, [ rsp + 0xc8 ]
mov rdx, 0x0 
adcx r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r11, [ rsi + 0x10 ]
adox rcx, [ rsp + 0xc0 ]
adox rdi, r9
adox r10, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, [ rsi + 0x18 ]
movzx rdx, r15b
mov r12, 0x0 
adox rdx, r12
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mulx rax, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd8 ], r15
mov [ rsp + 0xe0 ], r10
mulx r10, r15, rdx
test al, al
adox r12, r13
adox r11, rax
adox r15, r14
adcx r9, r8
adcx r12, rbp
adcx r11, rbx
adcx r15, rcx
mov rdx, [ rsi + 0x20 ]
mulx rbp, r8, [ rsi + 0x18 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r14, rbx, r9
mov r14, 0x1eabfffeb153ffff 
mov rdx, rbx
mulx rcx, rbx, r14
mov r13, 0xb9feffffffffaaab 
mulx r14, rax, r13
adox r8, r10
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xe8 ], r15
mulx r15, r13, [ rsi + 0x28 ]
adox r13, rbp
mov rdx, 0x4b1ba7b6434bacd7 
mov [ rsp + 0xf0 ], r11
mulx r11, rbp, r10
mov rdx, 0x0 
adox r15, rdx
mov [ rsp + 0xf8 ], r11
mov r11, -0x3 
inc r11
adox rbx, r14
mov r14, 0x6730d2a0f6b0f624 
mov rdx, r10
mulx r11, r10, r14
adcx r8, rdi
adcx r13, [ rsp + 0xe0 ]
adox r10, rcx
mov rdi, 0x64774b84f38512bf 
mulx r14, rcx, rdi
adox rcx, r11
adcx r15, [ rsp + 0xd8 ]
adox rbp, r14
setc r11b
clc
adcx rax, r9
adcx rbx, r12
adcx r10, [ rsp + 0xf0 ]
mov rax, 0x1a0111ea397fe69a 
mulx r12, r9, rax
movzx rdx, byte [ rsp + 0xa8 ]
mov r14, [ rsp + 0xa0 ]
lea rdx, [ rdx + r14 ]
adcx rcx, [ rsp + 0xe8 ]
adcx rbp, r8
adox r9, [ rsp + 0xf8 ]
adcx r9, r13
mov r14, 0x0 
adox r12, r14
mov r8, -0x3 
inc r8
adox rbx, [ rsp + 0x20 ]
adox r10, [ rsp + 0x30 ]
mov r13, 0x89f3fffcfffcfffd 
xchg rdx, r13
mulx r8, r14, rbx
adox rcx, [ rsp + 0x50 ]
adox rbp, [ rsp + 0x60 ]
adox r9, [ rsp + 0x98 ]
adcx r12, r15
adox r12, [ rsp + 0x90 ]
movzx r8, r11b
mov r15, 0x0 
adcx r8, r15
mov r11, 0xb9feffffffffaaab 
mov rdx, r14
mulx r15, r14, r11
adox r13, r8
clc
adcx r14, rbx
mov r14, 0x1eabfffeb153ffff 
mulx r8, rbx, r14
seto r14b
mov rax, -0x2 
inc rax
adox rbx, r15
adcx rbx, r10
mov r10, 0x6730d2a0f6b0f624 
mulx rax, r15, r10
adox r15, r8
adcx r15, rcx
mulx r8, rcx, rdi
adox rcx, rax
adcx rcx, rbp
mov rbp, 0x4b1ba7b6434bacd7 
mulx r10, rax, rbp
adox rax, r8
adcx rax, r9
mov r9, 0x1a0111ea397fe69a 
mulx r11, r8, r9
adox r8, r10
mov rdx, 0x0 
adox r11, rdx
mov r10, -0x3 
inc r10
adox rbx, [ rsp + 0x40 ]
adox r15, [ rsp + 0x48 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx r9, r10, rbx
mov r9, 0xb9feffffffffaaab 
mov rdx, r9
mulx rbp, r9, r10
adcx r8, r12
mov rdx, r10
mulx r12, r10, rdi
adox rcx, [ rsp + 0x80 ]
adox rax, [ rsp + 0x78 ]
adox r8, [ rsp + 0x70 ]
adcx r11, r13
movzx r13, r14b
mov rdi, 0x0 
adcx r13, rdi
adox r11, [ rsp + 0x68 ]
mov r14, 0x1eabfffeb153ffff 
mov [ rsp + 0x100 ], r11
mulx r11, rdi, r14
adox r13, [ rsp + 0x88 ]
clc
adcx rdi, rbp
seto bpl
mov r14, -0x2 
inc r14
adox r9, rbx
mov r9, 0x6730d2a0f6b0f624 
mulx r14, rbx, r9
adcx rbx, r11
adox rdi, r15
adcx r10, r14
adox rbx, rcx
adox r10, rax
mov r15, 0x4b1ba7b6434bacd7 
mulx rax, rcx, r15
adcx rcx, r12
adox rcx, r8
mov r12, 0x1a0111ea397fe69a 
mulx r11, r8, r12
adcx r8, rax
mov rdx, 0x0 
adcx r11, rdx
adox r8, [ rsp + 0x100 ]
adox r11, r13
movzx r13, bpl
adox r13, rdx
mov rbp, rdi
mov r14, 0xb9feffffffffaaab 
sub rbp, r14
mov rax, rbx
mov rdx, 0x1eabfffeb153ffff 
sbb rax, rdx
mov rdx, r10
sbb rdx, r9
mov r9, rcx
mov r12, 0x64774b84f38512bf 
sbb r9, r12
mov r14, r8
sbb r14, r15
mov r15, r11
mov r12, 0x1a0111ea397fe69a 
sbb r15, r12
sbb r13, 0x00000000
cmovc r14, r8
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x20 ], r14
cmovc r9, rcx
cmovc rbp, rdi
mov [ r13 + 0x18 ], r9
cmovc rdx, r10
mov [ r13 + 0x10 ], rdx
cmovc rax, rbx
cmovc r15, r11
mov [ r13 + 0x28 ], r15
mov [ r13 + 0x0 ], rbp
mov [ r13 + 0x8 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 392
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 2.1362
; seed 1979050131100719 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5419187 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=38, initial num_batches=31): 130531 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.024086823355606662
; number reverted permutation / tried permutation: 62640 / 89964 =69.628%
; number reverted decision / tried decision: 58958 / 90035 =65.483%
; validated in 37.141s
