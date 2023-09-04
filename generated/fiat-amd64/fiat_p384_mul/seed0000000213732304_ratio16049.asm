SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 376
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
test al, al
adox r10, r14
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], r13
mulx r13, r10, [ rax + 0x0 ]
adcx r14, r13
adcx rdi, r15
adcx rcx, r9
mov rdx, [ rsi + 0x0 ]
mulx r9, r15, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x30 ], rcx
mulx rcx, r13, [ rsi + 0x0 ]
adcx r15, r8
adcx r13, r9
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rax + 0x8 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r13
mulx r13, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], r15
mov [ rsp - 0x10 ], rdi
mulx rdi, r15, [ rax + 0x18 ]
adox rcx, r11
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x0 ], r14
mov [ rsp + 0x8 ], r10
mulx r10, r14, [ rax + 0x18 ]
clc
adcx r8, rbx
adcx r11, r9
adcx r15, rcx
mov rdx, [ rsi + 0x18 ]
mulx r9, rbx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x10 ], r15
mulx r15, rcx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x18 ], r11
mov [ rsp + 0x20 ], r8
mulx r8, r11, [ rax + 0x0 ]
adox r14, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r11
mulx r11, r13, [ rax + 0x20 ]
adcx rcx, rdi
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, rdi, [ rsi + 0x18 ]
adox r13, r10
setc dl
clc
adcx rbx, r8
adcx rdi, r9
mov r10b, dl
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rax + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x38 ], rdi
mov [ rsp + 0x40 ], rbx
mulx rbx, rdi, [ rsi + 0x18 ]
adcx rbp, rcx
adcx rdi, r12
adcx r9, rbx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, [ rax + 0x0 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x48 ], r9
mulx r9, rbx, [ rsi + 0x8 ]
adox rbx, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], rdi
mulx rdi, r11, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x58 ], rbp
mov [ rsp + 0x60 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r8, rdx
adox r9, rdx
test al, al
adox rbp, rcx
adox r11, r12
mov rdx, [ rax + 0x18 ]
mulx r12, rcx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x68 ], r8
mov [ rsp + 0x70 ], r11
mulx r11, r8, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x78 ], r8
mov [ rsp + 0x80 ], rbp
mulx rbp, r8, [ rsi + 0x20 ]
adcx r8, r11
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x88 ], r8
mulx r8, r11, [ rsi + 0x20 ]
adcx r11, rbp
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x90 ], r11
mulx r11, rbp, [ rsi + 0x20 ]
adcx rbp, r8
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x98 ], rbp
mulx rbp, r8, [ rax + 0x20 ]
adcx r8, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r8
mulx r8, r11, [ rax + 0x28 ]
adox rcx, rdi
adcx r11, rbp
mov rdx, [ rax + 0x20 ]
mulx rbp, rdi, [ rsi + 0x10 ]
adox rdi, r12
mov rdx, 0x100000001 
mov [ rsp + 0xa8 ], r11
mulx r11, r12, [ rsp + 0x8 ]
mov r11, 0xfffffffffffffffe 
mov rdx, r11
mov [ rsp + 0xb0 ], rdi
mulx rdi, r11, r12
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xb8 ], rcx
mov [ rsp + 0xc0 ], r9
mulx r9, rcx, [ rsi + 0x10 ]
adox rcx, rbp
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xc8 ], rcx
mulx rcx, rbp, r12
mov rdx, 0x0 
adox r9, rdx
adc r8, 0x0
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xd0 ], r8
mov [ rsp + 0xd8 ], r9
mulx r9, r8, [ rsi + 0x28 ]
add r10b, 0xFF
adcx r15, r8
adc r9, 0x0
mov rdx, 0xffffffff 
mulx r8, r10, r12
mov rdx, 0xffffffff00000000 
mov [ rsp + 0xe0 ], r9
mov [ rsp + 0xe8 ], r15
mulx r15, r9, r12
add r9, r8
mov r12, -0x2 
inc r12
adox r10, [ rsp + 0x8 ]
adox r9, [ rsp + 0x0 ]
adcx r11, r15
mov r10, rbp
adcx r10, rdi
mov rdi, rbp
adcx rdi, rcx
adox r11, [ rsp - 0x10 ]
adox r10, [ rsp - 0x30 ]
adcx rbp, rcx
mov r8, 0x0 
adcx rcx, r8
clc
adcx r9, [ rsp - 0x38 ]
adcx r11, [ rsp - 0x40 ]
adcx r10, [ rsp - 0x8 ]
adox rdi, [ rsp - 0x18 ]
adcx r14, rdi
adox rbp, [ rsp - 0x20 ]
adox rcx, [ rsp - 0x28 ]
adcx r13, rbp
adcx rbx, rcx
mov r15, 0x100000001 
mov rdx, r15
mulx rdi, r15, r9
mov rdi, 0xffffffff00000000 
mov rdx, r15
mulx rbp, r15, rdi
mov rcx, 0xffffffff 
mulx r12, r8, rcx
seto dil
movzx rdi, dil
adcx rdi, [ rsp + 0xc0 ]
mov rcx, -0x2 
inc rcx
adox r8, r9
setc r8b
clc
adcx r15, r12
mov r9, 0xfffffffffffffffe 
mulx rcx, r12, r9
adox r15, r11
adcx r12, rbp
mov r11, 0xffffffffffffffff 
mulx r9, rbp, r11
mov rdx, rbp
adcx rdx, rcx
mov rcx, rbp
adcx rcx, r9
adox r12, r10
adox rdx, r14
adcx rbp, r9
mov r10, 0x0 
adcx r9, r10
adox rcx, r13
adox rbp, rbx
adox r9, rdi
movzx r14, r8b
adox r14, r10
add r15, [ rsp + 0x60 ]
mov r13, 0x100000001 
xchg rdx, r13
mulx rdi, rbx, r15
mov rdi, 0xffffffff 
mov rdx, rbx
mulx r8, rbx, rdi
mov r10, 0xffffffff00000000 
mulx r11, rdi, r10
mov r10, -0x2 
inc r10
adox rdi, r8
adcx r12, [ rsp + 0x80 ]
adcx r13, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0xb8 ]
adcx rbp, [ rsp + 0xb0 ]
adcx r9, [ rsp + 0xc8 ]
adcx r14, [ rsp + 0xd8 ]
setc r8b
clc
adcx rbx, r15
mov rbx, 0xfffffffffffffffe 
mulx r10, r15, rbx
adcx rdi, r12
adox r15, r11
mov r11, 0xffffffffffffffff 
mulx rbx, r12, r11
mov rdx, r12
adox rdx, r10
mov r10, r12
adox r10, rbx
adox r12, rbx
adcx r15, r13
adcx rdx, rcx
adcx r10, rbp
adcx r12, r9
mov r13, 0x0 
adox rbx, r13
adcx rbx, r14
movzx rcx, r8b
adc rcx, 0x0
add rdi, [ rsp + 0x28 ]
adcx r15, [ rsp + 0x40 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r8, r9, rdi
adcx rbp, [ rsp + 0x38 ]
adcx r10, [ rsp + 0x58 ]
adcx r12, [ rsp + 0x50 ]
mov r8, 0xfffffffffffffffe 
mov rdx, r9
mulx r14, r9, r8
adcx rbx, [ rsp + 0x48 ]
mov r13, 0xffffffff 
mulx r8, r11, r13
adcx rcx, [ rsp + 0x68 ]
mov r13, -0x2 
inc r13
adox r11, rdi
mov r11, 0xffffffff00000000 
mulx r13, rdi, r11
setc r11b
clc
adcx rdi, r8
adcx r9, r13
adox rdi, r15
mov r15, 0xffffffffffffffff 
mulx r13, r8, r15
mov rdx, r8
adcx rdx, r14
adox r9, rbp
adox rdx, r10
mov rbp, r8
adcx rbp, r13
adox rbp, r12
adcx r8, r13
setc r10b
clc
adcx rdi, [ rsp + 0x78 ]
adcx r9, [ rsp + 0x88 ]
adcx rdx, [ rsp + 0x90 ]
adcx rbp, [ rsp + 0x98 ]
movzx r12, r10b
lea r12, [ r12 + r13 ]
adox r8, rbx
adox r12, rcx
adcx r8, [ rsp + 0xa0 ]
adcx r12, [ rsp + 0xa8 ]
mov r14, 0x100000001 
xchg rdx, rdi
mulx rcx, rbx, r14
movzx rcx, r11b
mov r13, 0x0 
adox rcx, r13
mov r11, 0xffffffff 
xchg rdx, r11
mulx r13, r10, rbx
mov rdx, -0x2 
inc rdx
adox r10, r11
adcx rcx, [ rsp + 0xd0 ]
mov r10, 0xffffffff00000000 
mov rdx, rbx
mulx r11, rbx, r10
setc r10b
clc
adcx rbx, r13
adox rbx, r9
mov r9, 0xfffffffffffffffe 
mulx r15, r13, r9
adcx r13, r11
adox r13, rdi
mov rdi, 0xffffffffffffffff 
mulx r9, r11, rdi
mov rdx, r11
adcx rdx, r15
adox rdx, rbp
mov rbp, r11
adcx rbp, r9
adcx r11, r9
adox rbp, r8
mov r8, 0x0 
adcx r9, r8
adox r11, r12
adox r9, rcx
movzx r12, r10b
adox r12, r8
add rbx, [ rsp - 0x48 ]
xchg rdx, r14
mulx rcx, r10, rbx
mov rcx, 0xffffffff 
mov rdx, r10
mulx r15, r10, rcx
adcx r13, [ rsp + 0x20 ]
adcx r14, [ rsp + 0x18 ]
adcx rbp, [ rsp + 0x10 ]
mov r8, 0xffffffff00000000 
mulx rdi, rcx, r8
adcx r11, [ rsp + 0x30 ]
adcx r9, [ rsp + 0xe8 ]
mov r8, -0x2 
inc r8
adox r10, rbx
adcx r12, [ rsp + 0xe0 ]
setc r10b
clc
adcx rcx, r15
mov rbx, 0xfffffffffffffffe 
mulx r8, r15, rbx
adox rcx, r13
adcx r15, rdi
mov r13, 0xffffffffffffffff 
mulx rbx, rdi, r13
mov rdx, rdi
adcx rdx, r8
adox r15, r14
adox rdx, rbp
mov r14, rdi
adcx r14, rbx
adcx rdi, rbx
mov rbp, 0x0 
adcx rbx, rbp
adox r14, r11
adox rdi, r9
adox rbx, r12
movzx r11, r10b
adox r11, rbp
mov r9, 0xffffffff 
mov r10, rcx
sub r10, r9
mov r12, 0xffffffff00000000 
mov r8, r15
sbb r8, r12
mov rbp, 0xfffffffffffffffe 
mov r12, rdx
sbb r12, rbp
mov r9, r14
sbb r9, r13
mov rbp, rdi
sbb rbp, r13
mov [ rsp + 0xf0 ], r9
mov r9, rbx
sbb r9, r13
mov r13, 0x0 
sbb r11, r13
cmovc r12, rdx
cmovc r9, rbx
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x28 ], r9
cmovc rbp, rdi
mov [ r11 + 0x20 ], rbp
mov [ r11 + 0x10 ], r12
cmovc r10, rcx
mov [ r11 + 0x0 ], r10
cmovc r8, r15
mov [ r11 + 0x8 ], r8
mov rcx, [ rsp + 0xf0 ]
cmovc rcx, r14
mov [ r11 + 0x18 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 376
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6049
; seed 2530961504429158 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4933382 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=31, initial num_batches=31): 142567 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02889843113709824
; number reverted permutation / tried permutation: 79979 / 95176 =84.033%
; number reverted decision / tried decision: 69823 / 94823 =73.635%
; validated in 48.868s
