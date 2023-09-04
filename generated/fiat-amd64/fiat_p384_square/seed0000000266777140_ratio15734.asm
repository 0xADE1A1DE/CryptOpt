SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 464
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
mov rdx, 0x100000001 
mov [ rsp - 0x40 ], r14
mov [ rsp - 0x38 ], r13
mulx r13, r14, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], rbx
mulx rbx, r13, [ rsi + 0x20 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], rbx
mulx rbx, rdi, r14
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x18 ], r13
mov [ rsp - 0x10 ], r15
mulx r15, r13, r14
mov rdx, 0xfffffffffffffffe 
mov [ rsp - 0x8 ], r9
mov [ rsp + 0x0 ], rdi
mulx rdi, r9, r14
xor rdx, rdx
adox r13, rbx
mov rbx, 0xffffffffffffffff 
mov rdx, r14
mov [ rsp + 0x8 ], r13
mulx r13, r14, rbx
adox r9, r15
mov rdx, r14
adox rdx, rdi
mov r15, r14
adox r15, r13
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], r15
mulx r15, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
adcx rbx, rbp
adox r14, r13
mov rdx, 0x0 
adox r13, rdx
mov rbp, -0x3 
inc rbp
adox r11, r15
adox rax, rcx
mov rdx, [ rsi + 0x20 ]
mulx r15, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x28 ], rbx
mulx rbx, rbp, [ rsi + 0x20 ]
adcx rcx, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], rax
mov [ rsp + 0x40 ], r11
mulx r11, rax, [ rsi + 0x8 ]
adcx rbp, r15
adox rdi, r10
adox rax, rcx
mov rdx, [ rsi + 0x28 ]
mulx r15, r10, [ rsi + 0x8 ]
adox r10, r11
adcx r12, rbx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], r12
mulx r12, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], rbp
mov [ rsp + 0x58 ], r10
mulx r10, rbp, [ rsi + 0x10 ]
setc dl
clc
adcx r8, [ rsp + 0x0 ]
mov r8, 0x0 
adox r15, r8
mov byte [ rsp + 0x60 ], dl
mov rdx, -0x3 
inc rdx
adox rbx, [ rsp - 0x8 ]
adox rbp, rcx
adox r11, r10
adcx rbx, [ rsp + 0x8 ]
adcx r9, rbp
adcx r11, [ rsp + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r10, rcx, [ rsi + 0x0 ]
adox rcx, r12
adcx rcx, [ rsp + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r12, [ rsi + 0x28 ]
adox r12, r10
adcx r14, r12
adox rbp, r8
mov rdx, [ rsi + 0x10 ]
mulx r12, r10, [ rsi + 0x18 ]
adcx r13, rbp
mov rdx, [ rsi + 0x18 ]
mulx r8, rbp, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox rbp, [ rsp - 0x10 ]
setc dl
clc
adcx rbx, [ rsp + 0x18 ]
adcx r9, [ rsp + 0x40 ]
adox r10, r8
adcx r11, [ rsp + 0x38 ]
adcx rdi, rcx
adcx rax, r14
mov cl, dl
mov rdx, [ rsi + 0x18 ]
mulx r8, r14, rdx
adcx r13, [ rsp + 0x58 ]
movzx rdx, cl
adcx rdx, r15
adox r14, r12
adox r8, [ rsp - 0x18 ]
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x68 ], r8
mov [ rsp + 0x70 ], r14
mulx r14, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], r8
mov [ rsp + 0x80 ], r10
mulx r10, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x88 ], rbp
mov [ rsp + 0x90 ], r15
mulx r15, rbp, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x98 ], r13
mov [ rsp + 0xa0 ], rax
mulx rax, r13, [ rsi + 0x18 ]
setc dl
clc
adcx r12, r14
adox r8, [ rsp - 0x20 ]
adcx rcx, [ rsp - 0x28 ]
mov r14b, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rcx
mov [ rsp + 0xb0 ], r12
mulx r12, rcx, [ rsi + 0x20 ]
adcx r13, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb8 ], r13
mov [ rsp + 0xc0 ], r8
mulx r8, r13, rdx
mov rdx, [ rsi + 0x28 ]
mov byte [ rsp + 0xc8 ], r14b
mov [ rsp + 0xd0 ], rdi
mulx rdi, r14, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r10, rdx
adcx r14, rax
adcx rbp, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, [ rsi + 0x0 ]
adc r15, 0x0
mov rdx, 0x100000001 
mov [ rsp + 0xd8 ], r15
mov [ rsp + 0xe0 ], rbp
mulx rbp, r15, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r14
mulx r14, rbp, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xf0 ], r10
mov [ rsp + 0xf8 ], r11
mulx r11, r10, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x100 ], rax
mov [ rsp + 0x108 ], r11
mulx r11, rax, [ rsi + 0x10 ]
test al, al
adox rbp, rdi
adox r13, r14
mov rdx, 0xfffffffffffffffe 
mulx r14, rdi, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x110 ], r13
mov [ rsp + 0x118 ], rbp
mulx rbp, r13, [ rsi + 0x10 ]
adox r13, r8
movzx rdx, byte [ rsp + 0x60 ]
mov r8, -0x1 
adcx rdx, r8
adcx rcx, [ rsp - 0x38 ]
adox rax, rbp
mov rdx, 0xffffffff 
mulx r8, rbp, r15
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x120 ], rcx
mov [ rsp + 0x128 ], rax
mulx rax, rcx, r15
mov r15, 0x0 
adcx r12, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x130 ], r12
mulx r12, r15, [ rsi + 0x10 ]
clc
adcx rcx, r8
adox r15, r11
adcx rdi, rax
setc dl
clc
adcx rbp, rbx
seto bpl
mov rbx, 0x0 
dec rbx
movzx rdx, dl
adox rdx, rbx
adox r14, r10
adcx rcx, r9
mov r9, r10
adox r9, [ rsp + 0x108 ]
adox r10, [ rsp + 0x108 ]
mov r11, [ rsp + 0x108 ]
mov r8, 0x0 
adox r11, r8
mov rax, -0x3 
inc rax
adox rcx, [ rsp + 0x100 ]
adcx rdi, [ rsp + 0xf8 ]
mov rdx, 0x100000001 
mulx rax, r8, rcx
mov rax, 0xffffffff 
mov rdx, r8
mulx rbx, r8, rax
adcx r14, [ rsp + 0xd0 ]
adcx r9, [ rsp + 0xa0 ]
adox rdi, [ rsp + 0x118 ]
adox r14, [ rsp + 0x110 ]
adcx r10, [ rsp + 0x98 ]
adcx r11, [ rsp + 0x90 ]
adox r13, r9
movzx r9, byte [ rsp + 0xc8 ]
mov rax, 0x0 
adcx r9, rax
adox r10, [ rsp + 0x128 ]
mov rax, 0xffffffff00000000 
mov [ rsp + 0x138 ], r10
mov [ rsp + 0x140 ], r13
mulx r13, r10, rax
clc
adcx r8, rcx
movzx r8, bpl
lea r8, [ r8 + r12 ]
mov r12, 0xffffffffffffffff 
mulx rcx, rbp, r12
adox r15, r11
mov r11, 0xfffffffffffffffe 
mulx r12, rax, r11
adox r8, r9
seto dl
mov r9, -0x2 
inc r9
adox r10, rbx
adcx r10, rdi
adox rax, r13
mov rbx, rbp
adox rbx, r12
mov rdi, rbp
adox rdi, rcx
adox rbp, rcx
seto r13b
inc r9
adox r10, [ rsp - 0x40 ]
adcx rax, r14
adcx rbx, [ rsp + 0x140 ]
adox rax, [ rsp + 0x88 ]
adcx rdi, [ rsp + 0x138 ]
adcx rbp, r15
mov r14, 0x100000001 
xchg rdx, r14
mulx r12, r15, r10
mov rdx, r11
mulx r12, r11, r15
adox rbx, [ rsp + 0x80 ]
movzx r9, r13b
lea r9, [ r9 + rcx ]
mov rcx, 0xffffffff 
mov rdx, r15
mulx r13, r15, rcx
adox rdi, [ rsp + 0x70 ]
adcx r9, r8
adox rbp, [ rsp + 0x68 ]
adox r9, [ rsp + 0xc0 ]
movzx r8, r14b
mov rcx, 0x0 
adcx r8, rcx
clc
adcx r15, r10
adox r8, [ rsp + 0xf0 ]
mov r15, 0xffffffff00000000 
mulx r10, r14, r15
mov rcx, 0xffffffffffffffff 
mov [ rsp + 0x148 ], r8
mulx r8, r15, rcx
seto dl
mov rcx, -0x2 
inc rcx
adox r14, r13
adcx r14, rax
adox r11, r10
mov rax, r15
adox rax, r12
adcx r11, rbx
mov r12, r15
adox r12, r8
adox r15, r8
seto bl
inc rcx
adox r14, [ rsp - 0x48 ]
adcx rax, rdi
movzx r13, bl
lea r13, [ r13 + r8 ]
adcx r12, rbp
mov rdi, 0x100000001 
xchg rdx, rdi
mulx r10, rbp, r14
adcx r15, r9
adcx r13, [ rsp + 0x148 ]
adox r11, [ rsp + 0x28 ]
adox rax, [ rsp + 0x30 ]
adox r12, [ rsp + 0x50 ]
adox r15, [ rsp + 0x48 ]
adox r13, [ rsp + 0x120 ]
mov r10, 0xffffffff 
mov rdx, r10
mulx r9, r10, rbp
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx rbx, r8, rbp
movzx rcx, dil
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r8, r9
adox rcx, [ rsp + 0x130 ]
seto dil
mov r9, -0x3 
inc r9
adox r10, r14
adox r8, r11
mov r10, 0xfffffffffffffffe 
mov rdx, r10
mulx r14, r10, rbp
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx r9, r11, rbp
adcx r10, rbx
mov rbp, r11
adcx rbp, r14
mov rbx, r11
adcx rbx, r9
adox r10, rax
adox rbp, r12
adcx r11, r9
adox rbx, r15
adox r11, r13
mov rax, 0x0 
adcx r9, rax
clc
adcx r8, [ rsp + 0x78 ]
adcx r10, [ rsp + 0xb0 ]
adcx rbp, [ rsp + 0xa8 ]
mov r12, 0x100000001 
mov rdx, r12
mulx r15, r12, r8
mov r15, 0xffffffff 
mov rdx, r12
mulx r13, r12, r15
mov r14, 0xffffffff00000000 
mulx r15, rax, r14
adox r9, rcx
adcx rbx, [ rsp + 0xb8 ]
movzx rcx, dil
mov r14, 0x0 
adox rcx, r14
adcx r11, [ rsp + 0xe8 ]
adcx r9, [ rsp + 0xe0 ]
mov rdi, -0x3 
inc rdi
adox r12, r8
adcx rcx, [ rsp + 0xd8 ]
setc r12b
clc
adcx rax, r13
mov r8, 0xfffffffffffffffe 
mulx r14, r13, r8
adcx r13, r15
adox rax, r10
mov r10, 0xffffffffffffffff 
mulx rdi, r15, r10
adox r13, rbp
mov rbp, r15
adcx rbp, r14
adox rbp, rbx
mov rdx, r15
adcx rdx, rdi
adcx r15, rdi
mov rbx, 0x0 
adcx rdi, rbx
adox rdx, r11
adox r15, r9
adox rdi, rcx
movzx r11, r12b
adox r11, rbx
mov r9, 0xffffffff 
mov r12, rax
sub r12, r9
mov rcx, 0xffffffff00000000 
mov r14, r13
sbb r14, rcx
mov rbx, rbp
sbb rbx, r8
mov rcx, rdx
sbb rcx, r10
mov r9, r15
sbb r9, r10
mov r8, rdi
sbb r8, r10
mov r10, 0x0 
sbb r11, r10
cmovc r9, r15
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x20 ], r9
cmovc rcx, rdx
cmovc r14, r13
mov [ r11 + 0x18 ], rcx
cmovc r8, rdi
mov [ r11 + 0x8 ], r14
mov [ r11 + 0x28 ], r8
cmovc rbx, rbp
cmovc r12, rax
mov [ r11 + 0x0 ], r12
mov [ r11 + 0x10 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 464
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.5734
; seed 0932956434997584 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4447293 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=40, initial num_batches=31): 126523 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028449441042000156
; number reverted permutation / tried permutation: 71466 / 94759 =75.419%
; number reverted decision / tried decision: 65667 / 95240 =68.949%
; validated in 33.802s
