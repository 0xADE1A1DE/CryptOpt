SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 360
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
test al, al
adox rbp, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rsi + 0x10 ]
adcx r14, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r13
mulx r13, rbp, [ rsi + 0x18 ]
adox rbp, r12
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], rbp
mulx rbp, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], rdi
mulx rdi, r14, [ rsi + 0x18 ]
adcx r12, r15
adox r10, r13
adox r14, r11
mov rdx, [ rsi + 0x10 ]
mulx r15, r11, [ rax + 0x18 ]
adcx r11, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, r13, [ rax + 0x0 ]
adox rcx, rdi
mov rdx, 0x100000001 
mov [ rsp - 0x20 ], rcx
mulx rcx, rdi, r13
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mov [ rsp - 0x18 ], r14
mulx r14, rcx, rdi
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x10 ], r10
mov [ rsp - 0x8 ], r11
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x0 ], r12
mov [ rsp + 0x8 ], rbp
mulx rbp, r12, [ rsi + 0x10 ]
adcx r10, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], r10
mulx r10, r15, [ rax + 0x0 ]
adcx r12, r11
mov rdx, 0x0 
adcx rbp, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], rbp
mulx rbp, r11, [ rax + 0x8 ]
mov rdx, 0x0 
adox r8, rdx
test al, al
adox r11, r10
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x20 ], r8
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r12
mov [ rsp + 0x30 ], r11
mulx r11, r12, [ rax + 0x10 ]
adox r12, rbp
adox r10, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, rbp, [ rax + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r10
mov [ rsp + 0x40 ], r12
mulx r12, r10, [ rax + 0x0 ]
adox rbp, r8
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x48 ], r10
mulx r10, r8, [ rsi + 0x28 ]
adcx r8, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r8
mulx r8, r12, [ rax + 0x10 ]
adcx r12, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x58 ], r12
mulx r12, r10, [ rax + 0x28 ]
adox r10, r11
adcx r9, r8
mov rdx, [ rsi + 0x28 ]
mulx r8, r11, [ rax + 0x20 ]
adcx r11, rbx
mov rdx, 0x0 
adox r12, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x60 ], r11
mulx r11, rbx, [ rsi + 0x28 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x68 ], r9
mov [ rsp + 0x70 ], r12
mulx r12, r9, rdi
mov rdx, 0xfffffffffffffffe 
mov [ rsp + 0x78 ], r10
mov [ rsp + 0x80 ], rbp
mulx rbp, r10, rdi
adcx rbx, r8
mov r8, 0xffffffff 
mov rdx, rdi
mov [ rsp + 0x88 ], rbx
mulx rbx, rdi, r8
adc r11, 0x0
xor rdx, rdx
adox rdi, r13
adcx r9, rbx
adcx r10, r12
mov rdi, rcx
adcx rdi, rbp
mov rdx, [ rsi + 0x0 ]
mulx r12, r13, [ rax + 0x10 ]
mov rdx, rcx
adcx rdx, r14
adcx rcx, r14
mov rbp, rdx
mov rdx, [ rax + 0x8 ]
mulx r8, rbx, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx r14, rdx
clc
adcx rbx, [ rsp + 0x8 ]
adox r9, rbx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x90 ], r11
mulx r11, rbx, [ rsi + 0x0 ]
adcx r13, r8
adox r10, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r8, [ rax + 0x20 ]
adcx rbx, r12
adcx r8, r11
adox rdi, rbx
adox rbp, r8
mov rdx, [ rsi + 0x0 ]
mulx r11, r12, [ rax + 0x28 ]
adcx r12, r13
mov rdx, [ rsi + 0x20 ]
mulx rbx, r13, [ rax + 0x10 ]
adox rcx, r12
mov rdx, 0x0 
adcx r11, rdx
adox r14, r11
mov rdx, [ rsi + 0x20 ]
mulx r12, r8, [ rax + 0x8 ]
clc
adcx r15, r9
adcx r10, [ rsp + 0x30 ]
adcx rdi, [ rsp + 0x40 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, r9, [ rax + 0x0 ]
seto dl
mov [ rsp + 0x98 ], r9
mov r9, -0x2 
inc r9
adox r8, r11
adcx rbp, [ rsp + 0x38 ]
adox r13, r12
mov r12b, dl
mov rdx, [ rsi + 0x20 ]
mulx r9, r11, [ rax + 0x18 ]
adox r11, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r11
mulx r11, rbx, [ rax + 0x20 ]
adcx rcx, [ rsp + 0x80 ]
adox rbx, r9
adcx r14, [ rsp + 0x78 ]
movzx r12, r12b
movzx rdx, r12b
adcx rdx, [ rsp + 0x70 ]
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], rbx
mulx rbx, r9, [ rax + 0x28 ]
adox r9, r11
mov rdx, 0x100000001 
mov [ rsp + 0xb0 ], r9
mulx r9, r11, r15
mov r9, 0xffffffff 
mov rdx, r11
mov [ rsp + 0xb8 ], r13
mulx r13, r11, r9
mov r9, 0x0 
adox rbx, r9
mov r9, 0xffffffff00000000 
mov [ rsp + 0xc0 ], rbx
mov [ rsp + 0xc8 ], r8
mulx r8, rbx, r9
mov r9, -0x2 
inc r9
adox r11, r15
mov r11, 0xfffffffffffffffe 
mulx r9, r15, r11
setc r11b
clc
adcx rbx, r13
adcx r15, r8
adox rbx, r10
mov r10, 0xffffffffffffffff 
mulx r8, r13, r10
mov rdx, r13
adcx rdx, r9
mov r9, r13
adcx r9, r8
adcx r13, r8
adox r15, rdi
adox rdx, rbp
mov rdi, 0x0 
adcx r8, rdi
adox r9, rcx
adox r13, r14
adox r8, r12
clc
adcx rbx, [ rsp - 0x28 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r14, rcx, rbx
mov r14, 0xffffffff 
mov rdx, rcx
mulx r12, rcx, r14
adcx r15, [ rsp - 0x30 ]
adcx rbp, [ rsp + 0x0 ]
movzx rdi, r11b
mov r14, 0x0 
adox rdi, r14
adcx r9, [ rsp - 0x8 ]
adcx r13, [ rsp + 0x10 ]
adcx r8, [ rsp + 0x28 ]
mov r11, -0x3 
inc r11
adox rcx, rbx
mov rcx, 0xffffffff00000000 
mulx r14, rbx, rcx
adcx rdi, [ rsp + 0x18 ]
setc r11b
clc
adcx rbx, r12
mov r12, 0xfffffffffffffffe 
mulx r10, rcx, r12
adcx rcx, r14
adox rbx, r15
mov r15, 0xffffffffffffffff 
mulx r12, r14, r15
mov rdx, r14
adcx rdx, r10
mov r10, r14
adcx r10, r12
adcx r14, r12
adox rcx, rbp
mov rbp, 0x0 
adcx r12, rbp
adox rdx, r9
adox r10, r13
clc
adcx rbx, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x48 ]
adox r14, r8
adox r12, rdi
movzx r9, r11b
adox r9, rbp
mov r13, 0x100000001 
xchg rdx, r13
mulx r11, r8, rbx
mov r11, 0xfffffffffffffffe 
mov rdx, r8
mulx rdi, r8, r11
mov rbp, 0xffffffff 
mulx r15, r11, rbp
adcx r13, [ rsp - 0x38 ]
adcx r10, [ rsp - 0x10 ]
mov rbp, -0x2 
inc rbp
adox r11, rbx
adcx r14, [ rsp - 0x18 ]
adcx r12, [ rsp - 0x20 ]
mov r11, 0xffffffff00000000 
mulx rbp, rbx, r11
adcx r9, [ rsp + 0x20 ]
setc r11b
clc
adcx rbx, r15
adox rbx, rcx
adcx r8, rbp
adox r8, r13
mov rcx, 0xffffffffffffffff 
mulx r13, r15, rcx
mov rdx, r15
adcx rdx, rdi
mov rdi, r15
adcx rdi, r13
adox rdx, r10
adox rdi, r14
adcx r15, r13
adox r15, r12
mov r10, 0x0 
adcx r13, r10
clc
adcx rbx, [ rsp + 0x98 ]
adcx r8, [ rsp + 0xc8 ]
mov r14, 0x100000001 
xchg rdx, r14
mulx rbp, r12, rbx
adcx r14, [ rsp + 0xb8 ]
adcx rdi, [ rsp + 0xa0 ]
mov rdx, r12
mulx r12, rbp, rcx
adox r13, r9
adcx r15, [ rsp + 0xa8 ]
adcx r13, [ rsp + 0xb0 ]
movzx r9, r11b
adox r9, r10
adcx r9, [ rsp + 0xc0 ]
mov r11, 0xffffffff00000000 
mulx rcx, r10, r11
mov r11, 0xffffffff 
mov [ rsp + 0xd0 ], r9
mov [ rsp + 0xd8 ], r13
mulx r13, r9, r11
mov r11, -0x2 
inc r11
adox r10, r13
setc r13b
clc
adcx r9, rbx
adcx r10, r8
mov r9, 0xfffffffffffffffe 
mulx r8, rbx, r9
adox rbx, rcx
setc dl
clc
adcx r10, [ rsp + 0x48 ]
setc cl
clc
movzx rdx, dl
adcx rdx, r11
adcx r14, rbx
mov rdx, 0x100000001 
mulx r11, rbx, r10
mov r11, 0xffffffff 
mov rdx, rbx
mulx r9, rbx, r11
mov r11, rbp
adox r11, r8
adcx r11, rdi
mov rdi, rbp
adox rdi, r12
adcx rdi, r15
adox rbp, r12
adcx rbp, [ rsp + 0xd8 ]
mov r15, 0x0 
adox r12, r15
adcx r12, [ rsp + 0xd0 ]
movzx r8, r13b
adc r8, 0x0
add cl, 0x7F
adox r14, [ rsp + 0x50 ]
adox r11, [ rsp + 0x58 ]
adox rdi, [ rsp + 0x68 ]
adox rbp, [ rsp + 0x60 ]
adox r12, [ rsp + 0x88 ]
adox r8, [ rsp + 0x90 ]
adcx rbx, r10
mov rbx, 0xffffffff00000000 
mulx r10, r13, rbx
seto cl
mov rbx, -0x3 
inc rbx
adox r13, r9
adcx r13, r14
mov r9, 0xfffffffffffffffe 
mulx r15, r14, r9
adox r14, r10
adcx r14, r11
mov r11, 0xffffffffffffffff 
mulx rbx, r10, r11
mov rdx, r10
adox rdx, r15
adcx rdx, rdi
mov rdi, r10
adox rdi, rbx
adox r10, rbx
adcx rdi, rbp
adcx r10, r12
mov rbp, 0x0 
adox rbx, rbp
adcx rbx, r8
movzx r12, cl
adc r12, 0x0
mov rcx, 0xffffffff 
mov r8, r13
sub r8, rcx
mov r15, 0xffffffff00000000 
mov rbp, r14
sbb rbp, r15
mov r11, rdx
sbb r11, r9
mov rcx, 0xffffffffffffffff 
mov r9, rdi
sbb r9, rcx
mov r15, r10
sbb r15, rcx
mov [ rsp + 0xe0 ], r15
mov r15, rbx
sbb r15, rcx
mov rcx, 0x0 
sbb r12, rcx
cmovc r9, rdi
cmovc r8, r13
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x18 ], r9
cmovc r15, rbx
mov [ r12 + 0x0 ], r8
cmovc r11, rdx
mov [ r12 + 0x10 ], r11
cmovc rbp, r14
mov [ r12 + 0x8 ], rbp
mov r13, [ rsp + 0xe0 ]
cmovc r13, r10
mov [ r12 + 0x28 ], r15
mov [ r12 + 0x20 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 360
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.5811
; seed 2268694304474222 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6272118 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=31, initial num_batches=31): 181863 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028995468516376764
; number reverted permutation / tried permutation: 77921 / 95124 =81.915%
; number reverted decision / tried decision: 65830 / 94875 =69.386%
; validated in 68.628s
