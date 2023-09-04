SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 440
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, 0x100000001 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbp
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r10
mulx r10, rdi, [ rsi + 0x20 ]
mov rdx, 0xfffffffffffffffe 
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], r10
mulx r10, rdi, rbp
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x30 ], rbx
mov [ rsp - 0x28 ], r9
mulx r9, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], rbx
mulx rbx, r9, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], rbx
mov [ rsp - 0x8 ], r9
mulx r9, rbx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x0 ], r9
mov [ rsp + 0x8 ], r13
mulx r13, r9, [ rsi + 0x28 ]
test al, al
adox rbx, r11
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x10 ], r13
mulx r13, r11, [ rsi + 0x0 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x18 ], r9
mov [ rsp + 0x20 ], rbx
mulx rbx, r9, rbp
mov rdx, 0xffffffff 
mov [ rsp + 0x28 ], r12
mov [ rsp + 0x30 ], r13
mulx r13, r12, rbp
adcx r11, r8
seto r8b
mov rbp, -0x2 
inc rbp
adox r9, r13
adox rdi, rbx
mov rbx, r14
adox rbx, r10
mov r10, r14
adox r10, r15
adox r14, r15
mov r13, 0x0 
adox r15, r13
mov rbp, -0x3 
inc rbp
adox r12, rcx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r12, [ rax + 0x18 ]
adox r9, r11
mov rdx, [ rsp + 0x28 ]
adcx rdx, [ rsp + 0x30 ]
adcx r12, [ rsp + 0x8 ]
adox rdi, rdx
mov rdx, [ rax + 0x20 ]
mulx r13, r11, [ rsi + 0x0 ]
adox rbx, r12
mov rdx, [ rsi + 0x28 ]
mulx rbp, r12, [ rax + 0x18 ]
adcx r11, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x38 ], rbp
mulx rbp, rcx, [ rax + 0x28 ]
adcx rcx, r13
adox r10, r11
mov rdx, [ rax + 0x10 ]
mulx r11, r13, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx rbp, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x40 ], r12
mov [ rsp + 0x48 ], r10
mulx r10, r12, [ rax + 0x0 ]
clc
mov rdx, -0x1 
movzx r8, r8b
adcx r8, rdx
adcx r13, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], r13
mulx r13, r8, [ rax + 0x18 ]
adcx r8, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], r8
mulx r8, r11, [ rax + 0x28 ]
adcx r13, [ rsp - 0x28 ]
adox r14, rcx
adcx r11, [ rsp - 0x30 ]
adox r15, rbp
seto dl
mov rcx, -0x2 
inc rcx
adox r12, r9
mov r9b, dl
mov rdx, [ rsi + 0x8 ]
mulx rcx, rbp, [ rax + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0x60 ], r11
mov [ rsp + 0x68 ], r13
mulx r13, r11, r12
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x70 ], r9b
mulx r9, r13, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], r14
mulx r14, r15, [ rsi + 0x8 ]
setc dl
clc
adcx rbp, r10
adcx r15, rcx
adox rbp, rdi
movzx rdi, dl
lea rdi, [ rdi + r8 ]
adox r15, rbx
adcx r13, r14
adox r13, [ rsp + 0x48 ]
mov rdx, [ rax + 0x10 ]
mulx r10, rbx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x28 ]
mulx rcx, r8, [ rsi + 0x8 ]
adcx r9, [ rsp - 0x8 ]
adcx r8, [ rsp - 0x10 ]
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x88 ], rdi
mulx rdi, r14, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r13
mov [ rsp + 0x98 ], r15
mulx r15, r13, [ rax + 0x8 ]
clc
adcx r13, [ rsp - 0x38 ]
adcx rbx, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], rbx
mulx rbx, r15, [ rax + 0x18 ]
adcx r15, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], r15
mulx r15, r10, [ rax + 0x20 ]
adcx r10, rbx
mov rdx, 0xffffffff 
mov [ rsp + 0xb0 ], r10
mulx r10, rbx, r11
adcx r14, r15
mov r15, 0xffffffff00000000 
mov rdx, r15
mov [ rsp + 0xb8 ], r14
mulx r14, r15, r11
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xc0 ], rdi
mov [ rsp + 0xc8 ], r13
mulx r13, rdi, r11
adox r9, [ rsp + 0x80 ]
clc
adcx r15, r10
adox r8, [ rsp + 0x78 ]
mov r10, 0xfffffffffffffffe 
mov rdx, r11
mov [ rsp + 0xd0 ], r8
mulx r8, r11, r10
adcx r11, r14
movzx rdx, byte [ rsp + 0x70 ]
adox rdx, rcx
mov rcx, rdi
adcx rcx, r8
mov r14, rdi
adcx r14, r13
adcx rdi, r13
setc r8b
clc
adcx rbx, r12
adcx r15, rbp
seto bl
mov r12, -0x2 
inc r12
adox r15, [ rsp - 0x48 ]
mov rbp, 0x100000001 
xchg rdx, r15
mulx r10, r12, rbp
movzx r10, r8b
lea r10, [ r10 + r13 ]
mov r13, 0xfffffffffffffffe 
xchg rdx, r13
mulx rbp, r8, r12
adcx r11, [ rsp + 0x98 ]
adcx rcx, [ rsp + 0x90 ]
adcx r14, r9
adox r11, [ rsp + 0x20 ]
adcx rdi, [ rsp + 0xd0 ]
adcx r10, r15
adox rcx, [ rsp + 0x50 ]
adox r14, [ rsp + 0x58 ]
adox rdi, [ rsp + 0x68 ]
adox r10, [ rsp + 0x60 ]
movzx r9, bl
mov r15, 0x0 
adcx r9, r15
mov rbx, 0xffffffff 
mov rdx, rbx
mulx r15, rbx, r12
mov rdx, 0xffffffff00000000 
mov [ rsp + 0xd8 ], r10
mov [ rsp + 0xe0 ], rdi
mulx rdi, r10, r12
adox r9, [ rsp + 0x88 ]
clc
adcx r10, r15
seto r15b
mov rdx, -0x2 
inc rdx
adox rbx, r13
adox r10, r11
adcx r8, rdi
adox r8, rcx
mov rdx, [ rax + 0x8 ]
mulx r13, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rax + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xe8 ], rcx
mulx rcx, rdi, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xf0 ], r8
mulx r8, r12, [ rax + 0x0 ]
mov rdx, rdi
adcx rdx, rbp
adox rdx, r14
mov rbp, rdi
adcx rbp, rcx
adox rbp, [ rsp + 0xe0 ]
adcx rdi, rcx
adox rdi, [ rsp + 0xd8 ]
mov r14, 0x0 
adcx rcx, r14
adox rcx, r9
clc
adcx r12, r10
movzx r9, r15b
adox r9, r14
mov r15, -0x3 
inc r15
adox rbx, r8
adox r11, r13
adcx rbx, [ rsp + 0xf0 ]
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r13, [ rax + 0x18 ]
adcx r11, r10
adox r13, [ rsp + 0xe8 ]
adcx r13, rbp
mov rdx, 0x100000001 
mulx rbp, r10, r12
adox r8, [ rsp - 0x18 ]
mov rbp, 0xffffffff 
mov rdx, rbp
mulx r14, rbp, r10
adcx r8, rdi
mov rdx, [ rax + 0x28 ]
mulx r15, rdi, [ rsi + 0x18 ]
adox rdi, [ rsp - 0x20 ]
adcx rdi, rcx
mov rdx, 0x0 
adox r15, rdx
mov rcx, -0x3 
inc rcx
adox rbp, r12
mov rbp, 0xfffffffffffffffe 
mov rdx, r10
mulx r12, r10, rbp
mov rcx, 0xffffffff00000000 
mov [ rsp + 0xf8 ], rdi
mulx rdi, rbp, rcx
adcx r15, r9
setc r9b
clc
adcx rbp, r14
adcx r10, rdi
adox rbp, rbx
mov rbx, 0xffffffffffffffff 
mulx rdi, r14, rbx
adox r10, r11
mov r11, r14
adcx r11, r12
adox r11, r13
mov r13, r14
adcx r13, rdi
adox r13, r8
adcx r14, rdi
adox r14, [ rsp + 0xf8 ]
mov rdx, 0x0 
adcx rdi, rdx
adox rdi, r15
clc
adcx rbp, [ rsp - 0x40 ]
adcx r10, [ rsp + 0xc8 ]
movzx r8, r9b
adox r8, rdx
adcx r11, [ rsp + 0xa0 ]
adcx r13, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xb0 ]
adcx rdi, [ rsp + 0xb8 ]
mov r12, 0x100000001 
mov rdx, rbp
mulx r9, rbp, r12
adcx r8, [ rsp + 0xc0 ]
mov r9, 0xfffffffffffffffe 
xchg rdx, r9
mulx rbx, r15, rbp
mov rdx, rbp
mulx r12, rbp, rcx
mov rcx, 0xffffffff 
mov [ rsp + 0x100 ], r8
mov [ rsp + 0x108 ], rdi
mulx rdi, r8, rcx
mov rcx, -0x2 
inc rcx
adox rbp, rdi
adox r15, r12
setc r12b
clc
adcx r8, r9
adcx rbp, r10
mov r8, 0xffffffffffffffff 
mulx r10, r9, r8
adcx r15, r11
mov r11, r9
adox r11, rbx
adcx r11, r13
mov r13, r9
adox r13, r10
adcx r13, r14
mov rdx, [ rsi + 0x28 ]
mulx rbx, r14, [ rax + 0x10 ]
adox r9, r10
adcx r9, [ rsp + 0x108 ]
mov rdx, [ rsi + 0x28 ]
mulx rcx, rdi, [ rax + 0x0 ]
mov rdx, 0x0 
adox r10, rdx
adcx r10, [ rsp + 0x100 ]
movzx rdx, r12b
adc rdx, 0x0
xor r12, r12
adox rdi, rbp
adcx rcx, [ rsp + 0x18 ]
adox rcx, r15
adcx r14, [ rsp + 0x10 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r12, r15, rdi
mov r12, 0xfffffffffffffffe 
mov rdx, r15
mulx r8, r15, r12
adcx rbx, [ rsp + 0x40 ]
adox r14, r11
adox rbx, r13
mov r11, 0xffffffff00000000 
mulx r12, r13, r11
mov r11, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x110 ], rbx
mov [ rsp + 0x118 ], r8
mulx r8, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x120 ], r14
mov [ rsp + 0x128 ], r15
mulx r15, r14, [ rax + 0x28 ]
adcx rbx, [ rsp + 0x38 ]
adcx r14, r8
mov rdx, 0x0 
adcx r15, rdx
adox rbx, r9
adox r14, r10
mov r9, 0xffffffff 
mov rdx, r11
mulx r10, r11, r9
clc
adcx r11, rdi
adox r15, rbp
seto r11b
mov rbp, -0x2 
inc rbp
adox r13, r10
adcx r13, rcx
adox r12, [ rsp + 0x128 ]
mov rdi, 0xffffffffffffffff 
mulx r8, rcx, rdi
adcx r12, [ rsp + 0x120 ]
mov rdx, rcx
adox rdx, [ rsp + 0x118 ]
adcx rdx, [ rsp + 0x110 ]
mov r10, rcx
adox r10, r8
adcx r10, rbx
adox rcx, r8
adcx rcx, r14
mov rbx, 0x0 
adox r8, rbx
adcx r8, r15
movzx r14, r11b
adc r14, 0x0
mov r11, r13
sub r11, r9
mov r15, 0xffffffff00000000 
mov rbx, r12
sbb rbx, r15
mov rbp, 0xfffffffffffffffe 
mov rdi, rdx
sbb rdi, rbp
mov rbp, 0xffffffffffffffff 
mov r15, r10
sbb r15, rbp
mov r9, rcx
sbb r9, rbp
mov [ rsp + 0x130 ], rbx
mov rbx, r8
sbb rbx, rbp
mov rbp, 0x0 
sbb r14, rbp
cmovc rdi, rdx
cmovc r11, r13
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], r11
cmovc r9, rcx
mov [ r14 + 0x10 ], rdi
mov [ r14 + 0x20 ], r9
cmovc r15, r10
mov [ r14 + 0x18 ], r15
cmovc rbx, r8
mov r13, [ rsp + 0x130 ]
cmovc r13, r12
mov [ r14 + 0x8 ], r13
mov [ r14 + 0x28 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 440
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6777
; seed 3774442394447498 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4438521 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=37, initial num_batches=31): 129235 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.029116680984499117
; number reverted permutation / tried permutation: 70042 / 94769 =73.908%
; number reverted decision / tried decision: 65656 / 95230 =68.945%
; validated in 39.195s
