SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 320
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
test al, al
adox r8, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
adox rax, r9
adox r11, r10
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
adcx r15, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r15
mulx r15, r9, [ rsi + 0x20 ]
adox r9, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x40 ], r10
mulx r10, rcx, [ rsi + 0x10 ]
adcx rcx, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rcx
mulx rcx, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], r11
mulx r11, r9, [ rsi + 0x28 ]
adcx rdi, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x20 ], rdi
mulx rdi, r10, rdx
adcx r9, rcx
adcx r10, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], rdi
mov [ rsp - 0x10 ], r10
mulx r10, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r9
mov [ rsp + 0x0 ], rax
mulx rax, r9, [ rsi + 0x18 ]
clc
adcx rdi, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r8
mulx r8, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r12
mov [ rsp + 0x18 ], rdi
mulx rdi, r12, rdx
adox r11, r15
adcx r12, r10
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], r8
mov [ rsp + 0x28 ], r11
mulx r11, r8, rdx
adcx r9, rdi
adcx r15, rax
mov rdx, [ rsi + 0x0 ]
mulx rdi, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rax
mov [ rsp + 0x38 ], r15
mulx r15, rax, [ rsi + 0x10 ]
mov rdx, 0x100000001 
mov [ rsp + 0x40 ], r9
mov [ rsp + 0x48 ], r12
mulx r12, r9, r8
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], rcx
mulx rcx, r12, [ rsi + 0x28 ]
adcx r12, r10
mov rdx, -0x2 
inc rdx
adox rbx, rdi
adox rax, rbp
adox r13, r15
mov rdx, [ rsi + 0x28 ]
mulx r10, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, rdi, rdx
adox rdi, r14
adox rbp, r15
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, r14, rdx
mov rdx, 0x0 
adox r10, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x58 ], r10
mov [ rsp + 0x60 ], rbp
mulx rbp, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x68 ], rdi
mov [ rsp + 0x70 ], r13
mulx r13, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], rax
mov [ rsp + 0x80 ], rbx
mulx rbx, rax, [ rsi + 0x28 ]
test al, al
adox r14, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x88 ], rcx
mulx rcx, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], r12
mov [ rsp + 0x98 ], r14
mulx r14, r12, [ rsi + 0x8 ]
adox r12, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], r12
mulx r12, r15, [ rsi + 0x8 ]
adox r15, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r15
mulx r15, r14, [ rsi + 0x0 ]
adcx r13, r11
adcx r10, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x20 ]
adox r11, r12
adox rax, rcx
adcx r14, rbp
mov rdx, 0xffffffff00000000 
mulx r12, rbp, r9
mov rcx, 0xffffffff 
mov rdx, rcx
mov [ rsp + 0xb0 ], rax
mulx rax, rcx, r9
setc dl
clc
adcx rbp, rax
mov rax, 0x0 
adox rbx, rax
mov [ rsp + 0xb8 ], rbx
mov rbx, -0x3 
inc rbx
adox rcx, r8
adox rbp, r13
mov rcx, 0xfffffffffffffffe 
xchg rdx, rcx
mulx r13, r8, r9
adcx r8, r12
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx rax, r12, r9
mov r9, r12
adcx r9, r13
mov r13, r12
adcx r13, rax
adcx r12, rax
adox r8, r10
mov r10, 0x0 
adcx rax, r10
adox r9, r14
mov rdx, [ rsi + 0x20 ]
mulx r10, r14, [ rsi + 0x0 ]
clc
mov rdx, -0x1 
movzx rcx, cl
adcx rcx, rdx
adcx r15, r14
adox r13, r15
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, [ rsi + 0x0 ]
adcx rcx, r10
mov rdx, 0x0 
adcx r14, rdx
adox r12, rcx
clc
adcx rdi, rbp
adox rax, r14
adcx r8, [ rsp + 0x98 ]
adcx r9, [ rsp + 0xa0 ]
adcx r13, [ rsp + 0xa8 ]
adcx r11, r12
adcx rax, [ rsp + 0xb0 ]
mov rbp, 0x100000001 
mov rdx, rbp
mulx r10, rbp, rdi
mov r10, 0xffffffff 
mov rdx, rbp
mulx r15, rbp, r10
seto cl
inc rbx
adox rbp, rdi
mov rbp, 0xfffffffffffffffe 
mulx r12, r14, rbp
movzx rcx, cl
movzx rdi, cl
adcx rdi, [ rsp + 0xb8 ]
mov rcx, 0xffffffff00000000 
mulx rbp, rbx, rcx
setc r10b
clc
adcx rbx, r15
adcx r14, rbp
adox rbx, r8
mov r8, 0xffffffffffffffff 
mulx rbp, r15, r8
adox r14, r9
mov r9, r15
adcx r9, r12
adox r9, r13
mov r13, r15
adcx r13, rbp
adcx r15, rbp
adox r13, r11
adox r15, rax
mov r11, 0x0 
adcx rbp, r11
clc
adcx rbx, [ rsp + 0x50 ]
adcx r14, [ rsp + 0x18 ]
adcx r9, [ rsp + 0x48 ]
adcx r13, [ rsp + 0x40 ]
adcx r15, [ rsp + 0x38 ]
adox rbp, rdi
movzx rax, r10b
adox rax, r11
adcx rbp, [ rsp + 0x90 ]
adcx rax, [ rsp + 0x88 ]
mov rdx, 0x100000001 
mulx r10, r12, rbx
mov r10, 0xffffffff 
mov rdx, r12
mulx rdi, r12, r10
mov r8, -0x3 
inc r8
adox r12, rbx
mulx rbx, r12, rcx
setc r8b
clc
adcx r12, rdi
adox r12, r14
mov r14, 0xfffffffffffffffe 
mulx r11, rdi, r14
adcx rdi, rbx
adox rdi, r9
mov r9, 0xffffffffffffffff 
mulx r14, rbx, r9
mov rdx, rbx
adcx rdx, r11
adox rdx, r13
mov r13, rbx
adcx r13, r14
adcx rbx, r14
adox r13, r15
adox rbx, rbp
mov r15, 0x0 
adcx r14, r15
adox r14, rax
clc
adcx r12, [ rsp + 0x10 ]
mov rbp, 0x100000001 
xchg rdx, r12
mulx r11, rax, rbp
adcx rdi, [ rsp + 0x8 ]
movzx r11, r8b
adox r11, r15
adcx r12, [ rsp + 0x0 ]
adcx r13, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x30 ]
adcx r14, [ rsp + 0x28 ]
xchg rdx, rax
mulx r15, r8, r10
mov r9, -0x2 
inc r9
adox r8, rax
adcx r11, [ rsp + 0x20 ]
mov r8, 0xfffffffffffffffe 
mulx r9, rax, r8
mulx r10, r8, rcx
setc cl
clc
adcx r8, r15
adcx rax, r10
adox r8, rdi
mov rdi, 0xffffffffffffffff 
mulx r10, r15, rdi
mov rdx, r15
adcx rdx, r9
adox rax, r12
adox rdx, r13
mov r12, r15
adcx r12, r10
adcx r15, r10
adox r12, rbx
adox r15, r14
mov r13, 0x0 
adcx r10, r13
clc
adcx r8, [ rsp + 0x30 ]
adox r10, r11
adcx rax, [ rsp + 0x80 ]
xchg rdx, rbp
mulx r14, rbx, r8
mov r14, 0xffffffff 
mov rdx, rbx
mulx r11, rbx, r14
movzx r9, cl
adox r9, r13
mov rcx, -0x3 
inc rcx
adox rbx, r8
adcx rbp, [ rsp + 0x78 ]
adcx r12, [ rsp + 0x70 ]
adcx r15, [ rsp + 0x68 ]
adcx r10, [ rsp + 0x60 ]
adcx r9, [ rsp + 0x58 ]
mov rbx, 0xffffffff00000000 
mulx r13, r8, rbx
setc cl
clc
adcx r8, r11
adox r8, rax
mulx r11, rax, rdi
mov rdi, 0xfffffffffffffffe 
mulx rbx, r14, rdi
adcx r14, r13
adox r14, rbp
mov rdx, rax
adcx rdx, rbx
adox rdx, r12
mov rbp, rax
adcx rbp, r11
adcx rax, r11
adox rbp, r15
adox rax, r10
mov r12, 0x0 
adcx r11, r12
clc
adcx r8, [ rsp - 0x40 ]
mov r15, 0x100000001 
xchg rdx, r15
mulx r13, r10, r8
adcx r14, [ rsp - 0x48 ]
adcx r15, [ rsp - 0x38 ]
adcx rbp, [ rsp - 0x20 ]
adcx rax, [ rsp - 0x8 ]
adox r11, r9
movzx r13, cl
adox r13, r12
adcx r11, [ rsp - 0x10 ]
adcx r13, [ rsp - 0x18 ]
mov rcx, 0xffffffff 
mov rdx, r10
mulx r9, r10, rcx
mov rbx, -0x3 
inc rbx
adox r10, r8
mov r10, 0xffffffff00000000 
mulx r12, r8, r10
setc bl
clc
adcx r8, r9
adox r8, r14
mulx r9, r14, rdi
adcx r14, r12
adox r14, r15
mov r15, 0xffffffffffffffff 
mulx rdi, r12, r15
mov rdx, r12
adcx rdx, r9
adox rdx, rbp
mov rbp, r12
adcx rbp, rdi
adox rbp, rax
adcx r12, rdi
mov rax, 0x0 
adcx rdi, rax
adox r12, r11
adox rdi, r13
movzx r11, bl
adox r11, rax
mov rbx, r8
sub rbx, rcx
mov r13, r14
sbb r13, r10
mov r9, 0xfffffffffffffffe 
mov rax, rdx
sbb rax, r9
mov r9, rbp
sbb r9, r15
mov rcx, r12
sbb rcx, r15
mov r10, rdi
sbb r10, r15
mov r15, 0x0 
sbb r11, r15
cmovc r13, r14
cmovc rbx, r8
cmovc r9, rbp
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x0 ], rbx
cmovc rcx, r12
mov [ r11 + 0x20 ], rcx
cmovc rax, rdx
mov [ r11 + 0x10 ], rax
mov [ r11 + 0x8 ], r13
cmovc r10, rdi
mov [ r11 + 0x18 ], r9
mov [ r11 + 0x28 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 320
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.5521
; seed 0832298609648225 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6097624 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 192922 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03163888098052618
; number reverted permutation / tried permutation: 80992 / 95085 =85.179%
; number reverted decision / tried decision: 68854 / 94914 =72.544%
; validated in 42.437s
