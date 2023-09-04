SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 416
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r15
mulx r15, rbp, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, r15
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r10
mulx r10, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rbp
mov [ rsp - 0x28 ], r10
mulx r10, rbp, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x20 ], rbp
mov [ rsp - 0x18 ], r8
mulx r8, rbp, [ rsi + 0x10 ]
adcx r9, r10
adcx rbp, rbx
adcx r15, r8
mov rdx, [ rax + 0x10 ]
mulx r10, rbx, [ rsi + 0x18 ]
adox rbx, r11
mov rdx, [ rax + 0x8 ]
mulx r8, r11, [ rsi + 0x20 ]
setc dl
clc
adcx r11, r12
adcx r13, r8
mov r12b, dl
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r13
mulx r13, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r11
mov [ rsp + 0x0 ], rbx
mulx rbx, r11, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x8 ], r15
mov [ rsp + 0x10 ], rbp
mulx rbp, r15, [ rax + 0x0 ]
setc dl
clc
adcx r11, rdi
mov dil, dl
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x18 ], r9
mov [ rsp + 0x20 ], r11
mulx r11, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov byte [ rsp + 0x28 ], r12b
mov [ rsp + 0x30 ], r15
mulx r15, r12, [ rsi + 0x0 ]
adcx r8, rbx
adcx rcx, r13
setc dl
clc
adcx r9, rbp
adcx r12, r11
mov r13b, dl
mov rdx, [ rax + 0x18 ]
mulx rbp, rbx, [ rsi + 0x0 ]
adcx rbx, r15
mov rdx, [ rax + 0x18 ]
mulx r15, r11, [ rsi + 0x18 ]
adox r11, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x38 ], r11
mulx r11, r10, [ rax + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], rcx
mov [ rsp + 0x48 ], r8
mulx r8, rcx, [ rax + 0x20 ]
adcx rcx, rbp
adcx r10, r8
mov rdx, [ rsi + 0x20 ]
mulx r8, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], r10
mov [ rsp + 0x58 ], rcx
mulx rcx, r10, [ rax + 0x20 ]
mov rdx, 0x0 
adcx r11, rdx
clc
mov rdx, -0x1 
movzx rdi, dil
adcx rdi, rdx
adcx r14, rbp
adcx r10, r8
mov rdx, [ rsi + 0x20 ]
mulx rbp, rdi, [ rax + 0x28 ]
mov rdx, 0x100000001 
mov [ rsp + 0x60 ], r10
mulx r10, r8, [ rsp + 0x30 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x68 ], r14
mulx r14, r10, [ rsi + 0x18 ]
adcx rdi, rcx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x70 ], rdi
mulx rdi, rcx, r8
adox r10, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], r10
mulx r10, r15, [ rax + 0x28 ]
adox r15, r14
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x80 ], r15
mulx r15, r14, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r10, rdx
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x88 ], r10
mov [ rsp + 0x90 ], r11
mulx r11, r10, r8
mov rdx, 0xffffffff 
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r15
mulx r15, rbx, r8
adc rbp, 0x0
add r10, r15
mov r15, 0xfffffffffffffffe 
mov rdx, r15
mov [ rsp + 0xa8 ], rbp
mulx rbp, r15, r8
adcx r15, r11
mov r8, rcx
adcx r8, rbp
mov r11, rcx
adcx r11, rdi
adcx rcx, rdi
adc rdi, 0x0
add r13b, 0xFF
adcx r14, [ rsp - 0x18 ]
adox rbx, [ rsp + 0x30 ]
adox r10, r9
adox r15, r12
mov rdx, [ rsi + 0x8 ]
mulx r13, rbx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, [ rax + 0x20 ]
adcx rbx, [ rsp + 0xa0 ]
mov rdx, 0x0 
adcx r13, rdx
movzx rbp, byte [ rsp + 0x28 ]
clc
mov rdx, -0x1 
adcx rbp, rdx
adcx r9, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], r9
mulx r9, rbp, [ rax + 0x28 ]
adcx rbp, r12
mov rdx, 0x0 
adcx r9, rdx
adox r8, [ rsp + 0x98 ]
clc
adcx r10, [ rsp - 0x40 ]
adox r11, [ rsp + 0x58 ]
adox rcx, [ rsp + 0x50 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xb8 ], r9
mulx r9, r12, [ rsi + 0x28 ]
adcx r15, [ rsp + 0x20 ]
adcx r8, [ rsp + 0x48 ]
adcx r11, [ rsp + 0x40 ]
adcx r14, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc0 ], r12
mulx r12, rcx, [ rax + 0x20 ]
adox rdi, [ rsp + 0x90 ]
adcx rbx, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], rbp
mulx rbp, rdi, [ rax + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xd0 ], rbx
mov [ rsp + 0xd8 ], r14
mulx r14, rbx, [ rax + 0x18 ]
seto dl
mov [ rsp + 0xe0 ], r11
mov r11, -0x2 
inc r11
adox rdi, r9
movzx r9, dl
adcx r9, r13
mov rdx, [ rsi + 0x28 ]
mulx r11, r13, [ rax + 0x10 ]
adox r13, rbp
adox rbx, r11
adox rcx, r14
mov rdx, [ rax + 0x28 ]
mulx r14, rbp, [ rsi + 0x28 ]
mov rdx, 0x100000001 
mov [ rsp + 0xe8 ], rcx
mulx rcx, r11, r10
adox rbp, r12
mov rcx, 0xffffffff00000000 
mov rdx, r11
mulx r12, r11, rcx
mov rcx, 0xffffffff 
mov [ rsp + 0xf0 ], rbp
mov [ rsp + 0xf8 ], rbx
mulx rbx, rbp, rcx
mov rcx, 0x0 
adox r14, rcx
mov [ rsp + 0x100 ], r14
mov r14, -0x3 
inc r14
adox rbp, r10
setc bpl
clc
adcx r11, rbx
mov r10, 0xfffffffffffffffe 
mulx rcx, rbx, r10
adox r11, r15
adcx rbx, r12
mov r15, 0xffffffffffffffff 
mulx r14, r12, r15
mov rdx, r12
adcx rdx, rcx
mov rcx, r12
adcx rcx, r14
adox rbx, r8
adox rdx, [ rsp + 0xe0 ]
adcx r12, r14
mov r8, 0x0 
adcx r14, r8
adox rcx, [ rsp + 0xd8 ]
adox r12, [ rsp + 0xd0 ]
adox r14, r9
movzx r9, bpl
adox r9, r8
test al, al
adox r11, [ rsp - 0x20 ]
mov rbp, 0x100000001 
xchg rdx, r11
mulx r10, r8, rbp
adox rbx, [ rsp + 0x18 ]
mov r10, 0xffffffff 
xchg rdx, r10
mulx rbp, r15, r8
adox r11, [ rsp + 0x10 ]
adox rcx, [ rsp + 0x8 ]
adox r12, [ rsp + 0xb0 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x108 ], r13
mov [ rsp + 0x110 ], rdi
mulx rdi, r13, r8
adcx r13, rbp
adox r14, [ rsp + 0xc8 ]
adox r9, [ rsp + 0xb8 ]
seto bpl
mov rdx, -0x2 
inc rdx
adox r15, r10
adox r13, rbx
mov r15, 0xfffffffffffffffe 
mov rdx, r15
mulx r10, r15, r8
adcx r15, rdi
adox r15, r11
mov rbx, 0xffffffffffffffff 
mov rdx, rbx
mulx r11, rbx, r8
mov r8, rbx
adcx r8, r10
mov rdi, rbx
adcx rdi, r11
adcx rbx, r11
mov r10, 0x0 
adcx r11, r10
adox r8, rcx
adox rdi, r12
clc
adcx r13, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
adcx r8, [ rsp + 0x0 ]
adox rbx, r14
adox r11, r9
adcx rdi, [ rsp + 0x38 ]
movzx rcx, bpl
adox rcx, r10
adcx rbx, [ rsp + 0x78 ]
adcx r11, [ rsp + 0x80 ]
mov r12, 0x100000001 
mov rdx, r13
mulx r14, r13, r12
mov r14, 0xffffffff 
xchg rdx, r13
mulx r9, rbp, r14
mov r10, 0xffffffff00000000 
mulx r12, r14, r10
adcx rcx, [ rsp + 0x88 ]
mov r10, -0x2 
inc r10
adox r14, r9
setc r9b
clc
adcx rbp, r13
mov rbp, 0xfffffffffffffffe 
mulx r10, r13, rbp
adox r13, r12
adcx r14, r15
mov r15, 0xffffffffffffffff 
mulx rbp, r12, r15
adcx r13, r8
mov r8, r12
adox r8, r10
adcx r8, rdi
mov rdi, r12
adox rdi, rbp
adcx rdi, rbx
adox r12, rbp
adcx r12, r11
mov rbx, 0x0 
adox rbp, rbx
adcx rbp, rcx
movzx r11, r9b
adc r11, 0x0
test al, al
adox r14, [ rsp - 0x48 ]
adox r13, [ rsp - 0x8 ]
adox r8, [ rsp - 0x10 ]
adox rdi, [ rsp + 0x68 ]
adox r12, [ rsp + 0x60 ]
mov rdx, 0x100000001 
mulx rcx, r9, r14
mov rcx, 0xffffffff00000000 
mov rdx, r9
mulx r10, r9, rcx
mov rbx, 0xffffffff 
mulx r15, rcx, rbx
adcx rcx, r14
adox rbp, [ rsp + 0x70 ]
seto cl
mov r14, -0x2 
inc r14
adox r9, r15
adcx r9, r13
mov r13, 0xfffffffffffffffe 
mulx r14, r15, r13
adox r15, r10
adcx r15, r8
mov r8, 0xffffffffffffffff 
mulx r13, r10, r8
mov rdx, r10
adox rdx, r14
mov r14, r10
adox r14, r13
adcx rdx, rdi
adox r10, r13
mov rdi, 0x0 
adox r13, rdi
adcx r14, r12
adcx r10, rbp
dec rdi
movzx rcx, cl
adox rcx, rdi
adox r11, [ rsp + 0xa8 ]
adcx r13, r11
setc r12b
clc
adcx r9, [ rsp + 0xc0 ]
mov rcx, 0x100000001 
xchg rdx, rcx
mulx r11, rbp, r9
mov rdx, rbp
mulx rbp, r11, rbx
adcx r15, [ rsp + 0x110 ]
adcx rcx, [ rsp + 0x108 ]
adcx r14, [ rsp + 0xf8 ]
adcx r10, [ rsp + 0xe8 ]
adcx r13, [ rsp + 0xf0 ]
movzx rdi, r12b
mov rbx, 0x0 
adox rdi, rbx
mov r12, -0x3 
inc r12
adox r11, r9
adcx rdi, [ rsp + 0x100 ]
mov r11, 0xffffffff00000000 
mulx rbx, r9, r11
setc r12b
clc
adcx r9, rbp
mov rbp, 0xfffffffffffffffe 
mulx r8, r11, rbp
adcx r11, rbx
adox r9, r15
mov r15, 0xffffffffffffffff 
mulx rbp, rbx, r15
mov rdx, rbx
adcx rdx, r8
mov r8, rbx
adcx r8, rbp
adcx rbx, rbp
adox r11, rcx
adox rdx, r14
adox r8, r10
adox rbx, r13
mov rcx, 0x0 
adcx rbp, rcx
adox rbp, rdi
movzx r14, r12b
adox r14, rcx
mov r10, 0xffffffff 
mov r13, r9
sub r13, r10
mov r12, 0xffffffff00000000 
mov rdi, r11
sbb rdi, r12
mov rcx, 0xfffffffffffffffe 
mov r10, rdx
sbb r10, rcx
mov rcx, r8
sbb rcx, r15
mov r12, rbx
sbb r12, r15
mov [ rsp + 0x118 ], r12
mov r12, rbp
sbb r12, r15
mov r15, 0x0 
sbb r14, r15
cmovc r10, rdx
cmovc rcx, r8
cmovc r13, r9
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], r13
cmovc rdi, r11
mov [ r14 + 0x8 ], rdi
mov r9, [ rsp + 0x118 ]
cmovc r9, rbx
mov [ r14 + 0x18 ], rcx
mov [ r14 + 0x20 ], r9
mov [ r14 + 0x10 ], r10
cmovc r12, rbp
mov [ r14 + 0x28 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 416
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4834
; seed 3280316833385391 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6893718 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=29, initial num_batches=31): 189537 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02749416207625551
; number reverted permutation / tried permutation: 79199 / 94706 =83.626%
; number reverted decision / tried decision: 69573 / 95293 =73.010%
; validated in 56.703s
