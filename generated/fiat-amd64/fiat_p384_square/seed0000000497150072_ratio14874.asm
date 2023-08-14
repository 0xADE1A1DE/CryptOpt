SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 416
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
test al, al
adox rax, r9
adox r12, r10
mov rdx, [ rsi + 0x8 ]
mulx r9, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, [ rsi + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp - 0x40 ], rax
mov [ rsp - 0x38 ], r8
mulx r8, rax, r14
adox rdi, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r8, [ rsi + 0x28 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x30 ], r8
mov [ rsp - 0x28 ], rdi
mulx rdi, r8, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x20 ], r12
mov [ rsp - 0x18 ], rbp
mulx rbp, r12, [ rsi + 0x18 ]
adcx r10, r13
adcx r11, r9
mov rdx, [ rsi + 0x8 ]
mulx r13, r9, [ rsi + 0x10 ]
adcx r12, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], r12
mulx r12, rcx, [ rsi + 0x10 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x8 ], r11
mov [ rsp + 0x0 ], r10
mulx r10, r11, rax
seto dl
mov [ rsp + 0x8 ], rcx
mov rcx, -0x2 
inc rcx
adox r11, r14
seto r11b
inc rcx
adox r9, r12
mov r14b, dl
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r9
mov byte [ rsp + 0x18 ], r11b
mulx r11, r9, rdx
mov rdx, [ rsi + 0x28 ]
mov byte [ rsp + 0x20 ], r14b
mov [ rsp + 0x28 ], rbx
mulx rbx, r14, [ rsi + 0x20 ]
adox r9, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], r9
mulx r9, r13, [ rsi + 0x18 ]
adox r13, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r13
mulx r13, r11, [ rsi + 0x10 ]
adcx r14, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r14
mulx r14, rbp, [ rsi + 0x20 ]
setc dl
clc
adcx r12, r14
adcx r11, rcx
setc cl
clc
adcx r8, r10
mov r10b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], r11
mulx r11, r14, [ rsi + 0x10 ]
adox r14, r9
mov rdx, 0xfffffffffffffffe 
mov [ rsp + 0x50 ], r12
mulx r12, r9, rax
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x58 ], rbp
mov [ rsp + 0x60 ], r14
mulx r14, rbp, rax
adcx r9, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, [ rsi + 0x28 ]
mov rdx, rbp
adcx rdx, r12
mov r12, rbp
adcx r12, r14
adcx rbp, r14
adox rax, r11
mov r11, 0x0 
adcx r14, r11
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], rax
mov [ rsp + 0x70 ], r14
mulx r14, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], rbp
mov [ rsp + 0x80 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x88 ], rbp
mov [ rsp + 0x90 ], r11
mulx r11, rbp, [ rsi + 0x20 ]
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x98 ], rdi
mov [ rsp + 0xa0 ], r9
mulx r9, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r8
mov [ rsp + 0xb0 ], rbx
mulx rbx, r8, rdx
xor rdx, rdx
adox rax, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], rax
mulx rax, r12, [ rsi + 0x8 ]
adox rdi, r14
adox r8, r9
adox rbp, rbx
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc0 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
adox rbx, r11
adcx r12, r15
adcx r14, rax
adcx r9, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mulx r11, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc8 ], rbx
mulx rbx, rax, [ rsi + 0x20 ]
adcx rax, [ rsp - 0x18 ]
adcx r15, rbx
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd8 ], r8
mov [ rsp + 0xe0 ], rdi
mulx rdi, r8, rdx
adc r11, 0x0
add cl, 0xFF
adcx r13, rbx
adcx r8, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbx, rcx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe8 ], r8
mulx r8, rbp, [ rsi + 0x20 ]
adcx rbp, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf0 ], rbp
mulx rbp, rdi, [ rsi + 0x20 ]
adc r8, 0x0
add r10b, 0xFF
adcx rcx, [ rsp + 0xb0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xf8 ], rcx
mulx rcx, r10, [ rsi + 0x8 ]
adc rbx, 0x0
add byte [ rsp + 0x20 ], 0xFF
adcx rdi, [ rsp - 0x20 ]
adcx r10, rbp
adc rcx, 0x0
add byte [ rsp + 0x18 ], 0xFF
adcx r12, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xa0 ]
adcx r9, [ rsp + 0x90 ]
adox r12, [ rsp - 0x38 ]
adox r14, [ rsp - 0x40 ]
mov rdx, 0x100000001 
mov [ rsp + 0x100 ], rbx
mulx rbx, rbp, r12
adcx rax, [ rsp + 0x80 ]
adcx r15, [ rsp + 0x78 ]
mov rbx, 0xfffffffffffffffe 
mov rdx, rbp
mov [ rsp + 0x108 ], r8
mulx r8, rbp, rbx
adox r9, [ rsp - 0x48 ]
adox rax, [ rsp - 0x28 ]
mov rbx, 0xffffffff00000000 
mov [ rsp + 0x110 ], r13
mov [ rsp + 0x118 ], rax
mulx rax, r13, rbx
adcx r11, [ rsp + 0x70 ]
adox rdi, r15
adox r10, r11
mov r15, 0xffffffff 
mulx rbx, r11, r15
setc r15b
movzx r15, r15b
adox r15, rcx
clc
adcx r11, r12
mov r11, 0xffffffffffffffff 
mulx r12, rcx, r11
seto dl
mov r11, -0x2 
inc r11
adox r13, rbx
adcx r13, r14
adox rbp, rax
mov r14, rcx
adox r14, r8
mov r8, rcx
adox r8, r12
adox rcx, r12
adcx rbp, r9
mov r9, 0x0 
adox r12, r9
mov rax, -0x3 
inc rax
adox r13, [ rsp + 0x8 ]
adcx r14, [ rsp + 0x118 ]
adcx r8, rdi
adcx rcx, r10
adcx r12, r15
adox rbp, [ rsp + 0x10 ]
adox r14, [ rsp + 0x30 ]
adox r8, [ rsp + 0x38 ]
adox rcx, [ rsp + 0x60 ]
movzx rdi, dl
adcx rdi, r9
adox r12, [ rsp + 0x68 ]
mov r10, 0x100000001 
mov rdx, r13
mulx rbx, r13, r10
mov rbx, 0xffffffff 
xchg rdx, rbx
mulx r9, r15, r13
clc
adcx r15, rbx
adox rdi, [ rsp + 0x98 ]
mov r15, 0xffffffff00000000 
mov rdx, r13
mulx rbx, r13, r15
seto al
inc r11
adox r13, r9
mov r9, 0xfffffffffffffffe 
mulx r15, r11, r9
adox r11, rbx
adcx r13, rbp
adcx r11, r14
mov rbp, 0xffffffffffffffff 
mulx rbx, r14, rbp
mov rdx, r14
adox rdx, r15
adcx rdx, r8
mov r8, r14
adox r8, rbx
adcx r8, rcx
adox r14, rbx
adcx r14, r12
mov rcx, 0x0 
adox rbx, rcx
adcx rbx, rdi
movzx r12, al
adc r12, 0x0
add r13, [ rsp + 0x88 ]
xchg rdx, r10
mulx rdi, rax, r13
mov rdi, 0xffffffff 
mov rdx, rax
mulx r15, rax, rdi
adcx r11, [ rsp + 0xb8 ]
mov rdi, -0x3 
inc rdi
adox rax, r13
adcx r10, [ rsp + 0xe0 ]
adcx r8, [ rsp + 0xd8 ]
adcx r14, [ rsp + 0xc0 ]
adcx rbx, [ rsp + 0xc8 ]
mov rax, 0xffffffff00000000 
mulx rcx, r13, rax
adcx r12, [ rsp + 0xd0 ]
setc dil
clc
adcx r13, r15
adox r13, r11
mulx r11, r15, r9
adcx r15, rcx
adox r15, r10
mulx rcx, r10, rbp
mov rdx, r10
adcx rdx, r11
adox rdx, r8
mov r8, r10
adcx r8, rcx
adcx r10, rcx
adox r8, r14
adox r10, rbx
mov r14, 0x0 
adcx rcx, r14
adox rcx, r12
clc
adcx r13, [ rsp + 0x58 ]
adcx r15, [ rsp + 0x50 ]
mov rbx, 0x100000001 
xchg rdx, rbx
mulx r11, r12, r13
adcx rbx, [ rsp + 0x48 ]
adcx r8, [ rsp + 0x110 ]
adcx r10, [ rsp + 0xe8 ]
adcx rcx, [ rsp + 0xf0 ]
movzx r11, dil
adox r11, r14
mov rdi, 0xffffffff 
mov rdx, r12
mulx r14, r12, rdi
mov rdi, -0x2 
inc rdi
adox r12, r13
mulx r13, r12, rax
adcx r11, [ rsp + 0x108 ]
setc dil
clc
adcx r12, r14
adox r12, r15
mulx r14, r15, r9
adcx r15, r13
adox r15, rbx
mulx r13, rbx, rbp
mov rdx, rbx
adcx rdx, r14
mov r14, rbx
adcx r14, r13
adcx rbx, r13
adox rdx, r8
adox r14, r10
adox rbx, rcx
mov r8, 0x0 
adcx r13, r8
adox r13, r11
movzx r10, dil
adox r10, r8
test al, al
adox r12, [ rsp - 0x30 ]
adox r15, [ rsp + 0x0 ]
mov rcx, 0x100000001 
xchg rdx, rcx
mulx r11, rdi, r12
mov r11, 0xffffffff 
mov rdx, rdi
mulx r8, rdi, r11
adox rcx, [ rsp - 0x8 ]
adox r14, [ rsp - 0x10 ]
adcx rdi, r12
adox rbx, [ rsp + 0x40 ]
adox r13, [ rsp + 0xf8 ]
mulx r12, rdi, rax
adox r10, [ rsp + 0x100 ]
seto r11b
mov rax, -0x2 
inc rax
adox rdi, r8
adcx rdi, r15
mulx r8, r15, r9
adox r15, r12
mulx rax, r12, rbp
mov rdx, r12
adox rdx, r8
mov r8, r12
adox r8, rax
adcx r15, rcx
adcx rdx, r14
adcx r8, rbx
adox r12, rax
mov rcx, 0x0 
adox rax, rcx
adcx r12, r13
adcx rax, r10
movzx r14, r11b
adc r14, 0x0
mov rbx, 0xffffffff 
mov r13, rdi
sub r13, rbx
mov r11, 0xffffffff00000000 
mov r10, r15
sbb r10, r11
mov rcx, rdx
sbb rcx, r9
mov rbx, r8
sbb rbx, rbp
mov r11, r12
sbb r11, rbp
mov r9, rax
sbb r9, rbp
mov rbp, 0x0 
sbb r14, rbp
cmovc rcx, rdx
cmovc r11, r12
cmovc rbx, r8
cmovc r10, r15
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x8 ], r10
cmovc r13, rdi
mov [ r14 + 0x0 ], r13
mov [ r14 + 0x10 ], rcx
cmovc r9, rax
mov [ r14 + 0x20 ], r11
mov [ r14 + 0x28 ], r9
mov [ r14 + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 416
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4874
; seed 2825156871209326 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4915414 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 140396 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028562395761577763
; number reverted permutation / tried permutation: 82114 / 95057 =86.384%
; number reverted decision / tried decision: 70297 / 94942 =74.042%
; validated in 42.609s
