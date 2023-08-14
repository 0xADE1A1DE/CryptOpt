SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 344
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, 0x100000001 
mulx r8, rcx, r10
mov r8, 0xffffffffffffffff 
mov rdx, rcx
mulx r9, rcx, r8
mov [ rsp - 0x80 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r8, r15, [ rsi + 0x0 ]
test al, al
adox rbp, r11
adox r15, r12
adox r13, r8
mov rdx, [ rsi + 0x20 ]
mulx r12, r11, [ rax + 0x10 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mulx rdi, r8, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], r11
mulx r11, r12, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r12
mulx r12, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x28 ], r12
mov [ rsp - 0x20 ], r11
mulx r11, r12, [ rax + 0x28 ]
adcx r8, r10
mov rdx, 0xfffffffffffffffe 
mulx r10, r8, rbx
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r12
mulx r12, r11, rbx
seto bl
mov rdx, -0x2 
inc rdx
adox r11, rdi
adox r8, r12
mov rdi, rcx
adox rdi, r10
mov r10, rcx
adox r10, r9
adcx r11, rbp
adcx r8, r15
adox rcx, r9
mov rbp, 0x0 
adox r9, rbp
adcx rdi, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r15, [ rax + 0x20 ]
dec rbp
movzx rbx, bl
adox rbx, rbp
adox r14, r15
mov rdx, [ rsi + 0x20 ]
mulx r12, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r15, [ rax + 0x28 ]
adox r15, r13
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x8 ], r12
mulx r12, r13, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x0 ], r13
mov [ rsp + 0x8 ], rbx
mulx rbx, r13, [ rsi + 0x28 ]
adcx r10, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x10 ], r10
mulx r10, r14, [ rsi + 0x8 ]
adcx rcx, r15
mov rdx, -0x2 
inc rdx
adox r14, r11
adcx r9, rbp
setc r11b
clc
adcx r13, r12
mov rdx, [ rax + 0x10 ]
mulx rbp, r15, [ rsi + 0x28 ]
adcx r15, rbx
mov rdx, [ rsi + 0x28 ]
mulx rbx, r12, [ rax + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x18 ], r15
mov [ rsp + 0x20 ], r13
mulx r13, r15, [ rax + 0x20 ]
adcx r12, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x28 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov byte [ rsp + 0x30 ], r11b
mov [ rsp + 0x38 ], r9
mulx r9, r11, [ rax + 0x8 ]
adcx r15, rbx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r15
mulx r15, rbx, [ rsi + 0x8 ]
adcx r13, [ rsp - 0x10 ]
setc dl
clc
adcx r11, r10
adcx rbp, r9
adox r11, r8
adox rbp, rdi
mov r8b, dl
mov rdx, [ rsi + 0x8 ]
mulx r10, rdi, [ rax + 0x18 ]
adcx rdi, r12
adox rdi, [ rsp + 0x10 ]
adcx rbx, r10
mov rdx, 0x100000001 
mulx r9, r12, r14
mov r9, 0xffffffff00000000 
mov rdx, r9
mulx r10, r9, r12
mov rdx, 0xfffffffffffffffe 
mov byte [ rsp + 0x48 ], r8b
mov [ rsp + 0x50 ], r13
mulx r13, r8, r12
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x58 ], rdi
mov [ rsp + 0x60 ], rbp
mulx rbp, rdi, [ rsi + 0x8 ]
adox rbx, rcx
adcx rdi, r15
mov rdx, 0xffffffff 
mulx r15, rcx, r12
mov rdx, 0x0 
adcx rbp, rdx
adox rdi, [ rsp + 0x38 ]
clc
adcx rcx, r14
movzx rcx, byte [ rsp + 0x30 ]
adox rcx, rbp
seto r14b
mov rbp, -0x3 
inc rbp
adox r9, r15
adcx r9, r11
adox r8, r10
mov r11, 0xffffffffffffffff 
mov rdx, r12
mulx r10, r12, r11
mov rdx, r12
adox rdx, r13
mov r13, r12
adox r13, r10
adcx r8, [ rsp + 0x60 ]
adcx rdx, [ rsp + 0x58 ]
adox r12, r10
mov r15, 0x0 
adox r10, r15
mov r15, rdx
mov rdx, [ rax + 0x0 ]
mulx r11, rbp, [ rsi + 0x10 ]
adcx r13, rbx
adcx r12, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbx, [ rax + 0x10 ]
adcx r10, rcx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x68 ], r10
mulx r10, rcx, [ rsi + 0x10 ]
movzx rdx, r14b
adc rdx, 0x0
test al, al
adox rbp, r9
adcx r11, [ rsp - 0x30 ]
adox r11, r8
adcx rbx, [ rsp - 0x38 ]
mov r14, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r9, [ rax + 0x18 ]
adcx r9, rdi
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], r11
mulx r11, rdi, [ rax + 0x20 ]
adcx rdi, r8
adcx rcx, r11
adox rbx, r15
mov rdx, 0x0 
adcx r10, rdx
adox r9, r13
mov r15, 0x100000001 
mov rdx, r15
mulx r13, r15, rbp
adox rdi, r12
mov r13, 0xffffffff00000000 
mov rdx, r15
mulx r12, r15, r13
adox rcx, [ rsp + 0x68 ]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, [ rax + 0x10 ]
adox r10, r14
mov rdx, 0xffffffff 
mov [ rsp + 0x78 ], r13
mulx r13, r14, r8
clc
adcx r15, r13
mov r13, 0xfffffffffffffffe 
mov rdx, r13
mov [ rsp + 0x80 ], r10
mulx r10, r13, r8
adcx r13, r12
seto r12b
mov rdx, -0x2 
inc rdx
adox r14, rbp
mov r14, 0xffffffffffffffff 
mov rdx, r8
mulx rbp, r8, r14
mov rdx, r8
adcx rdx, r10
adox r15, [ rsp + 0x70 ]
adox r13, rbx
mov rbx, r8
adcx rbx, rbp
adcx r8, rbp
adox rdx, r9
adox rbx, rdi
mov r9, 0x0 
adcx rbp, r9
mov rdi, rdx
mov rdx, [ rax + 0x0 ]
mulx r9, r10, [ rsi + 0x18 ]
clc
adcx r10, r15
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rax + 0x18 ]
adox r8, rcx
setc dl
clc
adcx r9, [ rsp - 0x20 ]
adcx r11, [ rsp - 0x28 ]
adox rbp, [ rsp + 0x80 ]
adcx r15, [ rsp + 0x78 ]
movzx rcx, r12b
mov [ rsp + 0x88 ], rbp
mov rbp, 0x0 
adox rcx, rbp
dec rbp
movzx rdx, dl
adox rdx, rbp
adox r13, r9
mov rdx, [ rax + 0x20 ]
mulx r9, r12, [ rsi + 0x18 ]
adcx r12, r14
mov rdx, [ rax + 0x28 ]
mulx rbp, r14, [ rsi + 0x18 ]
adox r11, rdi
adox r15, rbx
mov rdx, 0x100000001 
mulx rbx, rdi, r10
adcx r14, r9
mov rbx, 0x0 
adcx rbp, rbx
adox r12, r8
mov r8, 0xffffffff 
mov rdx, rdi
mulx r9, rdi, r8
adox r14, [ rsp + 0x88 ]
mov rbx, 0xffffffff00000000 
mov [ rsp + 0x90 ], r14
mulx r14, r8, rbx
clc
adcx r8, r9
mov r9, 0xfffffffffffffffe 
mov [ rsp + 0x98 ], r12
mulx r12, rbx, r9
adox rbp, rcx
adcx rbx, r14
setc cl
clc
adcx rdi, r10
mov rdi, 0xffffffffffffffff 
mulx r14, r10, rdi
adcx r8, r13
adcx rbx, r11
mov rdx, [ rax + 0x0 ]
mulx r11, r13, [ rsi + 0x20 ]
seto dl
mov rdi, 0x0 
dec rdi
movzx rcx, cl
adox rcx, rdi
adox r12, r10
mov rcx, r10
adox rcx, r14
adox r10, r14
mov rdi, 0x0 
adox r14, rdi
adcx r12, r15
adcx rcx, [ rsp + 0x98 ]
adcx r10, [ rsp + 0x90 ]
mov r15, -0x3 
inc r15
adox r13, r8
mov r8, 0x100000001 
xchg rdx, r13
mulx r15, rdi, r8
adcx r14, rbp
mov r15, rdx
mov rdx, [ rax + 0x28 ]
mulx r9, rbp, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xa0 ], r9
mulx r9, r8, [ rsi + 0x20 ]
setc dl
clc
adcx r8, r11
movzx r11, dl
movzx r13, r13b
lea r11, [ r11 + r13 ]
adox r8, rbx
adcx r9, [ rsp - 0x40 ]
adox r9, r12
mov rdx, [ rsi + 0x20 ]
mulx rbx, r13, [ rax + 0x18 ]
adcx r13, [ rsp - 0x48 ]
adox r13, rcx
adcx rbx, [ rsp + 0x8 ]
adcx rbp, [ rsp - 0x8 ]
adox rbx, r10
mov rdx, 0xffffffff 
mulx rcx, r12, rdi
adox rbp, r14
mov r10, [ rsp + 0xa0 ]
mov r14, 0x0 
adcx r10, r14
adox r10, r11
mov r11, 0xfffffffffffffffe 
mov rdx, r11
mulx r14, r11, rdi
mov rdx, 0xffffffff00000000 
mov [ rsp + 0xa8 ], r10
mov [ rsp + 0xb0 ], rbp
mulx rbp, r10, rdi
clc
adcx r10, rcx
adcx r11, rbp
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx rbp, rcx, rdi
mov rdi, rcx
adcx rdi, r14
mov r14, rcx
adcx r14, rbp
adcx rcx, rbp
setc dl
clc
adcx r12, r15
movzx r12, dl
lea r12, [ r12 + rbp ]
adcx r10, r8
seto r15b
mov r8, -0x2 
inc r8
adox r10, [ rsp + 0x0 ]
adcx r11, r9
adcx rdi, r13
adox r11, [ rsp + 0x20 ]
adox rdi, [ rsp + 0x18 ]
adcx r14, rbx
adcx rcx, [ rsp + 0xb0 ]
adcx r12, [ rsp + 0xa8 ]
mov r9, 0x100000001 
mov rdx, r9
mulx r13, r9, r10
mov r13, 0xfffffffffffffffe 
mov rdx, r9
mulx rbx, r9, r13
mov rbp, 0xffffffff 
mulx r13, r8, rbp
adox r14, [ rsp + 0x28 ]
adox rcx, [ rsp + 0x40 ]
mov rbp, 0xffffffff00000000 
mov [ rsp + 0xb8 ], rcx
mov [ rsp + 0xc0 ], r14
mulx r14, rcx, rbp
movzx rbp, r15b
mov [ rsp + 0xc8 ], rdi
mov rdi, 0x0 
adcx rbp, rdi
clc
adcx rcx, r13
adcx r9, r14
mov r15, 0xffffffffffffffff 
mulx r14, r13, r15
mov rdx, r13
adcx rdx, rbx
adox r12, [ rsp + 0x50 ]
mov rbx, r13
adcx rbx, r14
adcx r13, r14
adcx r14, rdi
clc
adcx r8, r10
adcx rcx, r11
adcx r9, [ rsp + 0xc8 ]
adcx rdx, [ rsp + 0xc0 ]
movzx r8, byte [ rsp + 0x48 ]
mov r10, [ rsp - 0x18 ]
lea r8, [ r8 + r10 ]
adcx rbx, [ rsp + 0xb8 ]
adcx r13, r12
adox r8, rbp
adcx r14, r8
seto r10b
adc r10b, 0x0
movzx r10, r10b
mov r11, 0xffffffff 
mov rbp, rcx
sub rbp, r11
mov r12, 0xffffffff00000000 
mov r8, r9
sbb r8, r12
mov rdi, 0xfffffffffffffffe 
mov r15, rdx
sbb r15, rdi
mov r11, 0xffffffffffffffff 
mov rdi, rbx
sbb rdi, r11
mov r12, r13
sbb r12, r11
mov [ rsp + 0xd0 ], r12
mov r12, r14
sbb r12, r11
movzx r10, r10b
mov r11, 0x0 
sbb r10, r11
cmovc rbp, rcx
cmovc r15, rdx
cmovc r12, r14
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x0 ], rbp
cmovc r8, r9
mov [ r10 + 0x8 ], r8
mov [ r10 + 0x10 ], r15
cmovc rdi, rbx
mov rcx, [ rsp + 0xd0 ]
cmovc rcx, r13
mov [ r10 + 0x28 ], r12
mov [ r10 + 0x20 ], rcx
mov [ r10 + 0x18 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 344
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.7232
; seed 4088513035125824 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4373674 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=37, initial num_batches=31): 129797 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.029676880352765205
; number reverted permutation / tried permutation: 69714 / 94952 =73.420%
; number reverted decision / tried decision: 65435 / 95047 =68.845%
; validated in 38.372s
