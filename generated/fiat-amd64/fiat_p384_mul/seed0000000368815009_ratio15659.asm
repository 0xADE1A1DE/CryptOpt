SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 416
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
test al, al
adox r10, r14
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x8 ]
adcx r14, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r12, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], r13
mulx r13, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r14
mov [ rsp - 0x30 ], rbp
mulx rbp, r14, [ rax + 0x20 ]
adox r12, r11
adox r10, rdi
adox r14, r13
adox rcx, rbp
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx rdi, r11, [ rax + 0x18 ]
adcx r9, r15
mov rdx, [ rsi + 0x10 ]
mulx r13, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r8
mulx r8, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], r14
mulx r14, rcx, [ rax + 0x0 ]
mov rdx, -0x2 
inc rdx
adox r15, r14
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], r15
mulx r15, r14, [ rsi + 0x18 ]
adcx rbp, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, rbx, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x0 ], rbx
mov [ rsp + 0x8 ], r10
mulx r10, rbx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x10 ], rbx
mov [ rsp + 0x18 ], r12
mulx r12, rbx, [ rsi + 0x18 ]
setc dl
clc
adcx r14, r10
mov r10b, dl
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x20 ], r14
mov [ rsp + 0x28 ], rbp
mulx rbp, r14, [ rsi + 0x20 ]
adcx rbx, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rbx
mulx rbx, r15, [ rax + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0x38 ], r8
mov byte [ rsp + 0x40 ], r10b
mulx r10, r8, [ rsp - 0x30 ]
setc r10b
clc
adcx r15, rcx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x48 ], r15
mulx r15, rcx, [ rsi + 0x10 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x50 ], rdi
mov [ rsp + 0x58 ], r12
mulx r12, rdi, r8
adcx r14, rbx
adcx r11, rbp
mov rdx, [ rax + 0x20 ]
mulx rbx, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], r11
mov [ rsp + 0x68 ], r14
mulx r14, r11, [ rax + 0x18 ]
adox rcx, r13
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x70 ], rcx
mulx rcx, r13, [ rsi + 0x10 ]
adox r11, r15
adox rbp, r14
adox r13, rbx
mov rdx, 0xffffffff 
mulx rbx, r15, r8
setc r14b
clc
adcx r15, [ rsp - 0x30 ]
mov r15, 0x0 
adox rcx, r15
mov rdx, -0x3 
inc rdx
adox rdi, rbx
adcx rdi, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mulx r15, rbx, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x78 ], rcx
mov [ rsp + 0x80 ], r13
mulx r13, rcx, [ rsi + 0x18 ]
mov rdx, 0xfffffffffffffffe 
mov [ rsp + 0x88 ], rbp
mov [ rsp + 0x90 ], r11
mulx r11, rbp, r8
adox rbp, r12
adcx rbp, r9
setc r9b
clc
mov r12, -0x1 
movzx r10, r10b
adcx r10, r12
adcx rbx, [ rsp + 0x58 ]
adcx rcx, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, r10, [ rax + 0x28 ]
adcx r10, r13
mov rdx, 0xffffffffffffffff 
mulx r12, r13, r8
mov r8, r13
adox r8, r11
mov r11, r13
adox r11, r12
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x98 ], r10
mov [ rsp + 0xa0 ], rcx
mulx rcx, r10, [ rsi + 0x28 ]
adox r13, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rbx
mov [ rsp + 0xb0 ], r13
mulx r13, rbx, [ rax + 0x0 ]
mov rdx, 0x0 
adox r12, rdx
adc r15, 0x0
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
test al, al
adox r10, r13
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xc8 ], r10
mulx r10, r13, [ rsi + 0x28 ]
adox r13, rcx
adox rbx, r10
mov rdx, [ rsi + 0x28 ]
mulx r10, rcx, [ rax + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xd0 ], rbx
mov [ rsp + 0xd8 ], r13
mulx r13, rbx, [ rsi + 0x28 ]
adox rbx, r15
adox rcx, r13
mov rdx, [ rax + 0x20 ]
mulx r13, r15, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r10, rdx
add r14b, 0xFF
adcx r15, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe0 ], r10
mulx r10, r14, [ rax + 0x28 ]
adcx r14, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe8 ], rcx
mulx rcx, r13, [ rax + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], rbx
mov [ rsp + 0xf8 ], r14
mulx r14, rbx, [ rax + 0x20 ]
adc r10, 0x0
add byte [ rsp + 0x40 ], 0xFF
adcx rbx, [ rsp + 0x38 ]
adcx r13, r14
adc rcx, 0x0
add r9b, 0xFF
adcx r8, [ rsp + 0x28 ]
adcx r11, rbx
adox rdi, [ rsp - 0x40 ]
adox rbp, [ rsp - 0x48 ]
adox r8, [ rsp + 0x18 ]
mov rdx, 0x100000001 
mulx r14, r9, rdi
adcx r13, [ rsp + 0xb0 ]
mov r14, 0xffffffff 
mov rdx, r9
mulx rbx, r9, r14
adox r11, [ rsp + 0x8 ]
adox r13, [ rsp - 0x18 ]
adcx r12, rcx
adox r12, [ rsp - 0x20 ]
setc cl
movzx rcx, cl
adox rcx, [ rsp - 0x28 ]
mov r14, 0xffffffff00000000 
mov [ rsp + 0x100 ], r10
mov [ rsp + 0x108 ], r15
mulx r15, r10, r14
clc
adcx r9, rdi
setc r9b
clc
adcx r10, rbx
seto dil
mov rbx, 0x0 
dec rbx
movzx r9, r9b
adox r9, rbx
adox rbp, r10
mov r9, 0xfffffffffffffffe 
mulx rbx, r10, r9
adcx r10, r15
adox r10, r8
mov r8, 0xffffffffffffffff 
mulx r9, r15, r8
mov rdx, r15
adcx rdx, rbx
mov rbx, r15
adcx rbx, r9
adox rdx, r11
adcx r15, r9
adox rbx, r13
adox r15, r12
setc r11b
clc
adcx rbp, [ rsp - 0x8 ]
movzx r13, r11b
lea r13, [ r13 + r9 ]
adox r13, rcx
mov r12, 0x100000001 
xchg rdx, r12
mulx r9, rcx, rbp
mov r9, 0xffffffff 
mov rdx, rcx
mulx r11, rcx, r9
adcx r10, [ rsp - 0x10 ]
adcx r12, [ rsp + 0x70 ]
movzx r8, dil
mov r9, 0x0 
adox r8, r9
mov rdi, -0x3 
inc rdi
adox rcx, rbp
adcx rbx, [ rsp + 0x90 ]
adcx r15, [ rsp + 0x88 ]
adcx r13, [ rsp + 0x80 ]
adcx r8, [ rsp + 0x78 ]
mulx rbp, rcx, r14
setc dil
clc
adcx rcx, r11
adox rcx, r10
mov r11, 0xfffffffffffffffe 
mulx r9, r10, r11
adcx r10, rbp
adox r10, r12
mov r12, 0xffffffffffffffff 
mulx r11, rbp, r12
mov rdx, rbp
adcx rdx, r9
adox rdx, rbx
mov rbx, rbp
adcx rbx, r11
adox rbx, r15
adcx rbp, r11
adox rbp, r13
mov r15, 0x0 
adcx r11, r15
clc
adcx rcx, [ rsp + 0x10 ]
adox r11, r8
adcx r10, [ rsp + 0x20 ]
mov r13, 0x100000001 
xchg rdx, r13
mulx r9, r8, rcx
movzx r9, dil
adox r9, r15
mov rdx, r8
mulx rdi, r8, r14
mov r15, 0xffffffff 
mulx r14, r12, r15
mov r15, -0x2 
inc r15
adox r12, rcx
adcx r13, [ rsp + 0x30 ]
adcx rbx, [ rsp + 0xa8 ]
adcx rbp, [ rsp + 0xa0 ]
adcx r11, [ rsp + 0x98 ]
adcx r9, [ rsp + 0xc0 ]
setc r12b
clc
adcx r8, r14
mov rcx, 0xfffffffffffffffe 
mulx r15, r14, rcx
adcx r14, rdi
adox r8, r10
mov r10, 0xffffffffffffffff 
mulx rcx, rdi, r10
mov rdx, rdi
adcx rdx, r15
adox r14, r13
mov r13, rdi
adcx r13, rcx
adox rdx, rbx
adcx rdi, rcx
mov rbx, 0x0 
adcx rcx, rbx
adox r13, rbp
adox rdi, r11
adox rcx, r9
movzx rbp, r12b
adox rbp, rbx
test al, al
adox r8, [ rsp + 0x0 ]
mov r11, 0x100000001 
xchg rdx, r11
mulx r9, r12, r8
adox r14, [ rsp + 0x48 ]
mov r9, 0xffffffff00000000 
mov rdx, r12
mulx r15, r12, r9
adox r11, [ rsp + 0x68 ]
adox r13, [ rsp + 0x60 ]
adox rdi, [ rsp + 0x108 ]
mov rbx, 0xffffffff 
mulx r9, r10, rbx
adox rcx, [ rsp + 0xf8 ]
adox rbp, [ rsp + 0x100 ]
adcx r12, r9
seto r9b
mov rbx, -0x2 
inc rbx
adox r10, r8
adox r12, r14
mov r10, 0xfffffffffffffffe 
mulx r14, r8, r10
adcx r8, r15
mov r15, 0xffffffffffffffff 
mulx r10, rbx, r15
mov rdx, rbx
adcx rdx, r14
mov r14, rbx
adcx r14, r10
adox r8, r11
adox rdx, r13
adox r14, rdi
adcx rbx, r10
setc r11b
clc
adcx r12, [ rsp + 0xb8 ]
mov r13, 0x100000001 
xchg rdx, r13
mulx r15, rdi, r12
adcx r8, [ rsp + 0xc8 ]
adcx r13, [ rsp + 0xd8 ]
adox rbx, rcx
mov r15, 0xffffffff 
mov rdx, rdi
mulx rcx, rdi, r15
movzx r15, r11b
lea r15, [ r15 + r10 ]
adcx r14, [ rsp + 0xd0 ]
adox r15, rbp
movzx rbp, r9b
mov r10, 0x0 
adox rbp, r10
adcx rbx, [ rsp + 0xf0 ]
adcx r15, [ rsp + 0xe8 ]
mov r9, 0xffffffff00000000 
mulx r10, r11, r9
mov r9, -0x2 
inc r9
adox r11, rcx
mov rcx, 0xfffffffffffffffe 
mov [ rsp + 0x110 ], r15
mulx r15, r9, rcx
adcx rbp, [ rsp + 0xe0 ]
adox r9, r10
setc r10b
clc
adcx rdi, r12
adcx r11, r8
adcx r9, r13
mov rdi, 0xffffffffffffffff 
mulx r8, r12, rdi
mov rdx, r12
adox rdx, r15
mov r13, r12
adox r13, r8
adox r12, r8
adcx rdx, r14
adcx r13, rbx
mov r14, 0x0 
adox r8, r14
adcx r12, [ rsp + 0x110 ]
adcx r8, rbp
movzx rbx, r10b
adc rbx, 0x0
mov r15, 0xffffffff 
mov r10, r11
sub r10, r15
mov rbp, 0xffffffff00000000 
mov r14, r9
sbb r14, rbp
mov rdi, rdx
sbb rdi, rcx
mov rcx, 0xffffffffffffffff 
mov r15, r13
sbb r15, rcx
mov rbp, r12
sbb rbp, rcx
mov [ rsp + 0x118 ], r14
mov r14, r8
sbb r14, rcx
mov rcx, 0x0 
sbb rbx, rcx
cmovc rdi, rdx
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x10 ], rdi
cmovc r14, r8
cmovc r15, r13
mov [ rbx + 0x18 ], r15
cmovc r10, r11
mov [ rbx + 0x0 ], r10
cmovc rbp, r12
mov [ rbx + 0x20 ], rbp
mov r11, [ rsp + 0x118 ]
cmovc r11, r9
mov [ rbx + 0x8 ], r11
mov [ rbx + 0x28 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 416
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.5659
; seed 3441668849460505 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6728130 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=32, initial num_batches=31): 202357 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.030076261903381772
; number reverted permutation / tried permutation: 78957 / 94947 =83.159%
; number reverted decision / tried decision: 68042 / 95052 =71.584%
; validated in 55.389s
