SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 424
mov rax, rdx
mov rdx, [ rsi + 0x28 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
add r9, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], r15
mulx r15, r10, [ rsi + 0x0 ]
mov rdx, -0x2 
inc rdx
adox r10, r8
mov r8, 0x100000001 
mov rdx, rcx
mov [ rsp - 0x30 ], r13
mulx r13, rcx, r8
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], r9
mulx r9, r8, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], r8
mulx r8, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r8
mov [ rsp - 0x8 ], rdi
mulx rdi, r8, [ rsi + 0x0 ]
adox r8, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], r12
mulx r12, r15, [ rax + 0x8 ]
adox rbp, rdi
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x8 ], rbp
mulx rbp, rdi, [ rsi + 0x18 ]
seto dl
mov [ rsp + 0x10 ], rdi
mov rdi, -0x2 
inc rdi
adox r15, rbp
mov bpl, dl
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x18 ], r15
mulx r15, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x20 ], r15
mov [ rsp + 0x28 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
adcx r15, rbx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x30 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
adox r9, r12
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r9
mulx r9, r12, [ rax + 0x8 ]
adcx rbx, rdi
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], rbx
mulx rbx, rdi, [ rsi + 0x28 ]
adcx rdi, r15
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x48 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
seto dl
mov byte [ rsp + 0x50 ], bpl
mov rbp, -0x2 
inc rbp
adox r12, r14
mov r14b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], r12
mulx r12, rbp, [ rax + 0x10 ]
adox rbp, r9
adox r11, r12
adcx r15, rbx
mov rdx, 0xffffffff00000000 
mulx rbx, r9, rcx
mov r12, 0x0 
adcx rdi, r12
mov r12, 0xfffffffffffffffe 
mov rdx, rcx
mov [ rsp + 0x60 ], rdi
mulx rdi, rcx, r12
mov r12, 0xffffffff 
mov [ rsp + 0x68 ], r15
mov [ rsp + 0x70 ], r11
mulx r11, r15, r12
clc
adcx r9, r11
adcx rcx, rbx
mov rbx, 0xffffffffffffffff 
mulx r12, r11, rbx
mov rdx, r11
adcx rdx, rdi
seto dil
mov rbx, -0x2 
inc rbx
adox r15, r13
adox r9, r10
adox rcx, r8
adox rdx, [ rsp + 0x8 ]
mov r15, r11
adcx r15, r12
adcx r11, r12
mov r13, [ rsp + 0x0 ]
setc r10b
movzx r8, byte [ rsp + 0x50 ]
clc
adcx r8, rbx
adcx r13, [ rsp - 0x8 ]
mov r8, rdx
mov rdx, [ rax + 0x28 ]
mov byte [ rsp + 0x78 ], dil
mulx rdi, rbx, [ rsi + 0x0 ]
adcx rbx, [ rsp - 0x28 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x80 ], rbp
mov byte [ rsp + 0x88 ], r14b
mulx r14, rbp, [ rsi + 0x8 ]
adox r15, r13
mov rdx, 0x0 
adcx rdi, rdx
adox r11, rbx
movzx r13, r10b
lea r13, [ r13 + r12 ]
mov rdx, [ rax + 0x10 ]
mulx r10, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x90 ], r11
mulx r11, rbx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r14
mov [ rsp + 0xa0 ], r15
mulx r15, r14, [ rax + 0x0 ]
clc
adcx rbx, r15
adcx r12, r11
adox r13, rdi
seto dl
mov rdi, -0x2 
inc rdi
adox r14, r9
adox rbx, rcx
mov r9b, dl
mov rdx, [ rax + 0x0 ]
mulx r11, rcx, [ rsi + 0x10 ]
adcx rbp, r10
adox r12, r8
mov rdx, 0x100000001 
mulx r10, r8, r14
mov rdx, [ rsi + 0x10 ]
mulx r15, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], rcx
mulx rcx, rdi, [ rax + 0x18 ]
adox rbp, [ rsp + 0xa0 ]
seto dl
mov [ rsp + 0xb0 ], rbp
mov rbp, -0x2 
inc rbp
adox r10, r11
adox r15, [ rsp - 0x18 ]
mov r11b, dl
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xb8 ], r15
mulx r15, rbp, [ rsi + 0x10 ]
adox rdi, [ rsp - 0x20 ]
adox rbp, rcx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xc0 ], rbp
mulx rbp, rcx, [ rsi + 0x10 ]
adox rcx, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xc8 ], rcx
mulx rcx, r15, [ rax + 0x20 ]
adcx r15, [ rsp + 0x98 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xd0 ], rdi
mov [ rsp + 0xd8 ], r10
mulx r10, rdi, [ rsi + 0x8 ]
mov rdx, 0x0 
adox rbp, rdx
adcx rdi, rcx
adc r10, 0x0
add r11b, 0x7F
adox r15, [ rsp + 0x90 ]
adox rdi, r13
mov r13, 0xffffffff 
mov rdx, r8
mulx r11, r8, r13
movzx rcx, r9b
adox rcx, r10
mov r9, 0xffffffff00000000 
mulx r13, r10, r9
adcx r8, r14
seto r8b
mov r14, -0x2 
inc r14
adox r10, r11
mov r11, 0xfffffffffffffffe 
mulx r9, r14, r11
adcx r10, rbx
adox r14, r13
mov rbx, 0xffffffffffffffff 
mulx r11, r13, rbx
adcx r14, r12
mov r12, r13
adox r12, r9
mov rdx, r13
adox rdx, r11
adcx r12, [ rsp + 0xb0 ]
adox r13, r11
adcx rdx, r15
setc r15b
clc
adcx r10, [ rsp + 0xa8 ]
mov r9, 0x100000001 
xchg rdx, r9
mov [ rsp + 0xe0 ], rbp
mulx rbp, rbx, r10
adcx r14, [ rsp + 0xd8 ]
adcx r12, [ rsp + 0xb8 ]
mov rbp, 0x0 
adox r11, rbp
dec rbp
movzx r15, r15b
adox r15, rbp
adox rdi, r13
adox r11, rcx
adcx r9, [ rsp + 0xd0 ]
movzx rcx, r8b
mov r13, 0x0 
adox rcx, r13
mov r8, 0xffffffff 
mov rdx, rbx
mulx r15, rbx, r8
adcx rdi, [ rsp + 0xc0 ]
mov r13, 0xffffffff00000000 
mulx r8, rbp, r13
mov r13, -0x2 
inc r13
adox rbp, r15
adcx r11, [ rsp + 0xc8 ]
mov r15, 0xfffffffffffffffe 
mov [ rsp + 0xe8 ], r11
mulx r11, r13, r15
adcx rcx, [ rsp + 0xe0 ]
adox r13, r8
setc r8b
clc
adcx rbx, r10
mov rbx, 0xffffffffffffffff 
mulx r15, r10, rbx
mov rdx, r10
adox rdx, r11
adcx rbp, r14
adcx r13, r12
mov r14, r10
adox r14, r15
adcx rdx, r9
adox r10, r15
mov r12, 0x0 
adox r15, r12
adcx r14, rdi
adcx r10, [ rsp + 0xe8 ]
adcx r15, rcx
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, rdi, [ rax + 0x18 ]
mov rdx, -0x3 
inc rdx
adox rbp, [ rsp + 0x10 ]
movzx rcx, r8b
adcx rcx, r12
adox r13, [ rsp + 0x18 ]
adox r9, [ rsp + 0x38 ]
movzx r8, byte [ rsp + 0x88 ]
clc
mov r12, -0x1 
adcx r8, r12
adcx rdi, [ rsp - 0x10 ]
adox rdi, r14
adcx r11, [ rsp + 0x28 ]
adox r11, r10
mov rdx, [ rsi + 0x18 ]
mulx r14, r8, [ rax + 0x28 ]
mov rdx, 0x100000001 
mulx r12, r10, rbp
adcx r8, [ rsp + 0x20 ]
mov r12, 0x0 
adcx r14, r12
mov r12, 0xffffffff 
mov rdx, r10
mulx rbx, r10, r12
adox r8, r15
mov r15, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xf0 ], r8
mulx r8, r12, [ rsi + 0x20 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0xf8 ], r8
mov [ rsp + 0x100 ], r12
mulx r12, r8, r15
clc
adcx r8, rbx
adox r14, rcx
seto cl
mov rbx, -0x2 
inc rbx
adox r10, rbp
adox r8, r13
mov r10, 0xfffffffffffffffe 
mov rdx, r10
mulx rbp, r10, r15
adcx r10, r12
adox r10, r9
mov r13, 0xffffffffffffffff 
mov rdx, r15
mulx r9, r15, r13
mov rdx, r15
adcx rdx, rbp
adox rdx, rdi
mov rdi, r15
adcx rdi, r9
adcx r15, r9
mov r12, 0x0 
adcx r9, r12
adox rdi, r11
adox r15, [ rsp + 0xf0 ]
adox r9, r14
mov r11, rdx
mov rdx, [ rax + 0x20 ]
mulx rbp, r14, [ rsi + 0x20 ]
clc
adcx r8, [ rsp - 0x30 ]
adcx r10, [ rsp + 0x58 ]
adcx r11, [ rsp + 0x80 ]
mov rdx, 0x100000001 
mulx rbx, r12, r8
movzx rbx, cl
mov rdx, 0x0 
adox rbx, rdx
movzx rcx, byte [ rsp + 0x78 ]
dec rdx
adox rcx, rdx
adox r14, [ rsp - 0x38 ]
adox rbp, [ rsp + 0x100 ]
mov rcx, [ rsp + 0xf8 ]
mov rdx, 0x0 
adox rcx, rdx
mov rdx, 0xffffffff 
mov [ rsp + 0x108 ], r11
mulx r11, r13, r12
adcx rdi, [ rsp + 0x70 ]
mov rdx, -0x2 
inc rdx
adox r13, r8
adcx r14, r15
adcx rbp, r9
mov r13, 0xffffffff00000000 
mov rdx, r12
mulx r15, r12, r13
adcx rcx, rbx
setc r9b
clc
adcx r12, r11
mov r8, 0xfffffffffffffffe 
mulx r11, rbx, r8
adox r12, r10
adcx rbx, r15
mov r10, 0xffffffffffffffff 
mulx r8, r15, r10
mov rdx, r15
adcx rdx, r11
adox rbx, [ rsp + 0x108 ]
adox rdx, rdi
mov rdi, r15
adcx rdi, r8
adox rdi, r14
adcx r15, r8
mov r14, 0x0 
adcx r8, r14
adox r15, rbp
adox r8, rcx
movzx rbp, r9b
adox rbp, r14
xor r9, r9
adox r12, [ rsp - 0x40 ]
mov r14, 0x100000001 
xchg rdx, r14
mulx r11, rcx, r12
mov r11, 0xffffffff 
mov rdx, r11
mulx r9, r11, rcx
adox rbx, [ rsp - 0x48 ]
mov rdx, rcx
mulx r13, rcx, r10
adox r14, [ rsp + 0x30 ]
adox rdi, [ rsp + 0x40 ]
adox r15, [ rsp + 0x48 ]
adox r8, [ rsp + 0x68 ]
mov r10, 0xffffffff00000000 
mov [ rsp + 0x110 ], r8
mov [ rsp + 0x118 ], r15
mulx r15, r8, r10
adcx r8, r9
setc r9b
clc
adcx r11, r12
adcx r8, rbx
mov r11, 0xfffffffffffffffe 
mulx rbx, r12, r11
adox rbp, [ rsp + 0x60 ]
seto dl
mov r11, 0x0 
dec r11
movzx r9, r9b
adox r9, r11
adox r15, r12
mov r9, rcx
adox r9, rbx
mov r12, rcx
adox r12, r13
adox rcx, r13
adcx r15, r14
adcx r9, rdi
adcx r12, [ rsp + 0x118 ]
adcx rcx, [ rsp + 0x110 ]
mov r14, 0x0 
adox r13, r14
adcx r13, rbp
movzx rdi, dl
adc rdi, 0x0
mov rbx, 0xffffffff 
mov rdx, r8
sub rdx, rbx
mov rbp, r15
sbb rbp, r10
mov r14, 0xfffffffffffffffe 
mov r11, r9
sbb r11, r14
mov rbx, 0xffffffffffffffff 
mov r14, r12
sbb r14, rbx
mov r10, rcx
sbb r10, rbx
mov [ rsp + 0x120 ], rbp
mov rbp, r13
sbb rbp, rbx
mov rbx, 0x0 
sbb rdi, rbx
cmovc rdx, r8
cmovc rbp, r13
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], rdx
cmovc r11, r9
cmovc r10, rcx
mov [ rdi + 0x10 ], r11
cmovc r14, r12
mov [ rdi + 0x28 ], rbp
mov [ rdi + 0x20 ], r10
mov r8, [ rsp + 0x120 ]
cmovc r8, r15
mov [ rdi + 0x18 ], r14
mov [ rdi + 0x8 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6188
; seed 0193494285639248 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4313588 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=37, initial num_batches=31): 129834 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03009884115033703
; number reverted permutation / tried permutation: 72843 / 94820 =76.822%
; number reverted decision / tried decision: 67965 / 95179 =71.408%
; validated in 42.055s
