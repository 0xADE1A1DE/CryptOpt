SECTION .text
	GLOBAL fiat_bls12_381_p_square
fiat_bls12_381_p_square:
sub rsp, 376
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
test al, al
adox r11, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, [ rsi + 0x18 ]
adox rbp, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r14
mulx r14, rcx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r11
mulx r11, rbp, [ rsi + 0x0 ]
adox rcx, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], rbp
mulx rbp, rdi, [ rsi + 0x20 ]
adcx rdi, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], rdi
mulx rdi, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], rbx
mulx rbx, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x10 ], r12
mov [ rsp - 0x8 ], r8
mulx r8, r12, [ rsi + 0x20 ]
adcx rcx, rbp
adcx r12, rbx
setc dl
clc
adcx r11, r15
mov r15b, dl
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], r11
mov [ rsp + 0x8 ], r12
mulx r12, r11, [ rsi + 0x10 ]
adcx r11, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x10 ], r11
mulx r11, rdi, [ rsi + 0x20 ]
adox rax, r14
adcx rbp, r12
mov rdx, [ rsi + 0x28 ]
mulx r12, r14, [ rsi + 0x18 ]
adcx rdi, rbx
adox r14, r10
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r12, rdx
mov [ rsp + 0x18 ], rdi
mov rdi, -0x3 
inc rdi
adox r10, r9
mov rdx, [ rsi + 0x0 ]
mulx rdi, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], rbp
mov [ rsp + 0x28 ], rcx
mulx rcx, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], r12
mov [ rsp + 0x38 ], r14
mulx r14, r12, [ rsi + 0x0 ]
adox r9, rbx
adox rbp, rdi
adox r12, rcx
mov rdx, [ rsi + 0x28 ]
mulx rdi, rbx, rdx
adcx rbx, r11
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], rbx
mov [ rsp + 0x48 ], rax
mulx rax, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x50 ], rbx
mov [ rsp + 0x58 ], r12
mulx r12, rbx, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx rbx, rax
adcx r11, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x60 ], rdi
mov [ rsp + 0x68 ], r11
mulx r11, rdi, [ rsi + 0x10 ]
adcx rax, rcx
adcx rdi, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, rcx, [ rsi + 0x28 ]
adcx rcx, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rcx
mulx rcx, r11, [ rsi + 0x28 ]
adox r11, r14
mov rdx, 0x0 
adox rcx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], rdi
mulx rdi, r14, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], rax
mov [ rsp + 0x88 ], rbx
mulx rbx, rax, [ rsi + 0x8 ]
adc r12, 0x0
add r15b, 0xFF
adcx r8, r14
mov rdx, [ rsi + 0x8 ]
mulx r14, r15, rdx
adox r15, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], r8
mulx r8, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r12
mov [ rsp + 0xa0 ], r15
mulx r15, r12, [ rsi + 0x10 ]
adox r12, r14
adox r13, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, r14, [ rsi + 0x28 ]
adcx r14, rdi
mov rdx, 0x89f3fffcfffcfffd 
mov [ rsp + 0xa8 ], r14
mulx r14, rdi, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb0 ], r13
mulx r13, r14, [ rsi + 0x20 ]
adox r14, r8
adox rax, r13
mov rdx, 0x0 
adox rbx, rdx
mov r8, 0x6730d2a0f6b0f624 
mov rdx, rdi
mulx r13, rdi, r8
mov r8, 0xb9feffffffffaaab 
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], rax
mulx rax, rbx, r8
adc r15, 0x0
test al, al
adox rbx, [ rsp - 0x8 ]
mov rbx, 0x64774b84f38512bf 
mov [ rsp + 0xc8 ], r15
mulx r15, r8, rbx
mov rbx, 0x1eabfffeb153ffff 
mov [ rsp + 0xd0 ], r14
mov [ rsp + 0xd8 ], r12
mulx r12, r14, rbx
adcx r14, rax
adcx rdi, r12
adox r14, r10
adox rdi, r9
adcx r8, r13
adox r8, rbp
mov r10, 0x4b1ba7b6434bacd7 
mulx rbp, r9, r10
adcx r9, r15
mov r13, 0x1a0111ea397fe69a 
mulx r15, rax, r13
adox r9, [ rsp + 0x58 ]
adcx rax, rbp
adox rax, r11
mov r11, 0x0 
adcx r15, r11
clc
adcx r14, [ rsp - 0x10 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rbp, r12, r14
mov rbp, 0xb9feffffffffaaab 
mov rdx, r12
mulx r11, r12, rbp
mulx r10, r13, rbx
adox r15, rcx
adcx rdi, [ rsp + 0xa0 ]
adcx r8, [ rsp + 0xd8 ]
adcx r9, [ rsp + 0xb0 ]
adcx rax, [ rsp + 0xd0 ]
adcx r15, [ rsp + 0xc0 ]
setc cl
movzx rcx, cl
adox rcx, [ rsp + 0xb8 ]
clc
adcx r12, r14
seto r12b
mov r14, -0x2 
inc r14
adox r13, r11
mov r11, 0x6730d2a0f6b0f624 
mulx rbx, r14, r11
adox r14, r10
adcx r13, rdi
mov r10, 0x64774b84f38512bf 
mulx rbp, rdi, r10
adcx r14, r8
mov r8, 0x4b1ba7b6434bacd7 
mulx r11, r10, r8
adox rdi, rbx
adcx rdi, r9
adox r10, rbp
adcx r10, rax
mov r9, 0x1a0111ea397fe69a 
mulx rbx, rax, r9
adox rax, r11
adcx rax, r15
mov rdx, 0x0 
adox rbx, rdx
adcx rbx, rcx
movzx r15, r12b
adc r15, 0x0
xor rcx, rcx
adox r13, [ rsp + 0x50 ]
adox r14, [ rsp + 0x88 ]
adox rdi, [ rsp + 0x68 ]
adox r10, [ rsp + 0x80 ]
adox rax, [ rsp + 0x78 ]
adox rbx, [ rsp + 0x70 ]
mov rdx, 0x89f3fffcfffcfffd 
mulx rbp, r12, r13
mov rbp, 0x1eabfffeb153ffff 
mov rdx, r12
mulx r11, r12, rbp
mulx r9, rcx, r8
mov r8, 0xb9feffffffffaaab 
mov [ rsp + 0xe0 ], rbx
mulx rbx, rbp, r8
adox r15, [ rsp + 0x98 ]
adcx r12, rbx
seto bl
mov r8, -0x2 
inc r8
adox rbp, r13
mov rbp, 0x6730d2a0f6b0f624 
mulx r8, r13, rbp
adox r12, r14
adcx r13, r11
adox r13, rdi
mov r14, 0x64774b84f38512bf 
mulx r11, rdi, r14
adcx rdi, r8
adcx rcx, r11
adox rdi, r10
adox rcx, rax
mov r10, 0x1a0111ea397fe69a 
mulx r8, rax, r10
adcx rax, r9
mov rdx, 0x0 
adcx r8, rdx
adox rax, [ rsp + 0xe0 ]
adox r8, r15
clc
adcx r12, [ rsp - 0x18 ]
mov r9, 0x89f3fffcfffcfffd 
mov rdx, r9
mulx r15, r9, r12
adcx r13, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x20 ]
movzx r15, bl
mov r11, 0x0 
adox r15, r11
mov rbx, 0xb9feffffffffaaab 
mov rdx, r9
mulx r11, r9, rbx
mov r10, -0x2 
inc r10
adox r9, r12
adcx rax, [ rsp + 0x48 ]
adcx r8, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x30 ]
mov r9, 0x1eabfffeb153ffff 
mulx r10, r12, r9
setc r9b
clc
adcx r12, r11
mulx r14, r11, rbp
adox r12, r13
adcx r11, r10
mov r13, 0x64774b84f38512bf 
mulx rbx, r10, r13
adcx r10, r14
mov r14, 0x4b1ba7b6434bacd7 
mulx rbp, r13, r14
adcx r13, rbx
adox r11, rdi
mov rdi, 0x1a0111ea397fe69a 
mulx r14, rbx, rdi
adox r10, rcx
adox r13, rax
adcx rbx, rbp
adox rbx, r8
mov rdx, 0x0 
adcx r14, rdx
clc
adcx r12, [ rsp - 0x30 ]
mov rcx, 0x89f3fffcfffcfffd 
mov rdx, r12
mulx rax, r12, rcx
mov rax, 0xb9feffffffffaaab 
xchg rdx, rax
mulx rbp, r8, r12
adcx r11, [ rsp - 0x28 ]
adcx r10, [ rsp + 0x28 ]
adcx r13, [ rsp + 0x8 ]
adcx rbx, [ rsp + 0x90 ]
adox r14, r15
movzx r15, r9b
mov rdi, 0x0 
adox r15, rdi
mov r9, 0x1a0111ea397fe69a 
mov rdx, r12
mulx rdi, r12, r9
adcx r14, [ rsp + 0xa8 ]
adcx r15, [ rsp + 0xc8 ]
mov r9, 0x1eabfffeb153ffff 
mov [ rsp + 0xe8 ], r15
mulx r15, rcx, r9
mov r9, -0x2 
inc r9
adox r8, rax
setc r8b
clc
adcx rcx, rbp
mov rax, 0x6730d2a0f6b0f624 
mulx r9, rbp, rax
adcx rbp, r15
adox rcx, r11
mov r11, 0x64774b84f38512bf 
mulx rax, r15, r11
adcx r15, r9
adox rbp, r10
mov r10, 0x4b1ba7b6434bacd7 
mulx r11, r9, r10
adcx r9, rax
adcx r12, r11
setc dl
clc
adcx rcx, [ rsp - 0x48 ]
movzx rax, dl
lea rax, [ rax + rdi ]
adcx rbp, [ rsp + 0x0 ]
mov rdi, 0x89f3fffcfffcfffd 
mov rdx, rcx
mulx r11, rcx, rdi
mov r11, 0x6730d2a0f6b0f624 
xchg rdx, rcx
mulx rdi, r10, r11
adox r15, r13
adox r9, rbx
adox r12, r14
adcx r15, [ rsp + 0x10 ]
adcx r9, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x18 ]
adox rax, [ rsp + 0xe8 ]
movzx r13, r8b
mov rbx, 0x0 
adox r13, rbx
adcx rax, [ rsp + 0x40 ]
mov r14, 0x1eabfffeb153ffff 
mulx rbx, r8, r14
mov r14, 0xb9feffffffffaaab 
mov [ rsp + 0xf0 ], rax
mulx rax, r11, r14
mov r14, -0x2 
inc r14
adox r11, rcx
adcx r13, [ rsp + 0x60 ]
setc r11b
clc
adcx r8, rax
adox r8, rbp
adcx r10, rbx
mov rcx, 0x64774b84f38512bf 
mulx rbx, rbp, rcx
adox r10, r15
mov r15, 0x4b1ba7b6434bacd7 
mulx r14, rax, r15
adcx rbp, rdi
adcx rax, rbx
adox rbp, r9
adox rax, r12
mov rdi, 0x1a0111ea397fe69a 
mulx r12, r9, rdi
adcx r9, r14
mov rdx, 0x0 
adcx r12, rdx
adox r9, [ rsp + 0xf0 ]
adox r12, r13
movzx r13, r11b
adox r13, rdx
mov r11, r8
mov rbx, 0xb9feffffffffaaab 
sub r11, rbx
mov r14, r10
mov rdx, 0x1eabfffeb153ffff 
sbb r14, rdx
mov rdi, rbp
mov r15, 0x6730d2a0f6b0f624 
sbb rdi, r15
mov rdx, rax
sbb rdx, rcx
mov rcx, r9
mov rbx, 0x4b1ba7b6434bacd7 
sbb rcx, rbx
mov rbx, r12
mov r15, 0x1a0111ea397fe69a 
sbb rbx, r15
sbb r13, 0x00000000
cmovc rcx, r9
cmovc r14, r10
cmovc rdi, rbp
cmovc rbx, r12
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x28 ], rbx
mov [ r13 + 0x20 ], rcx
cmovc rdx, rax
mov [ r13 + 0x10 ], rdi
mov [ r13 + 0x18 ], rdx
cmovc r11, r8
mov [ r13 + 0x8 ], r14
mov [ r13 + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 376
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8772
; seed 0140119783424225 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 5151291 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 129116 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.025064784730662662
; number reverted permutation / tried permutation: 69659 / 89863 =77.517%
; number reverted decision / tried decision: 62340 / 90136 =69.162%
; validated in 42.86s
