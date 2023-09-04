SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 424
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], rcx
mov [ rsp - 0x40 ], r10
mulx r10, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r12
mulx r12, rbx, [ rax + 0x10 ]
test al, al
adox rcx, rdi
adox rbx, r10
mov rdx, [ rax + 0x8 ]
mulx r10, rdi, [ rsi + 0x8 ]
adcx rdi, r11
adcx r13, r10
adox r9, r12
mov rdx, 0x100000001 
mulx r12, r11, r15
mov rdx, [ rax + 0x8 ]
mulx r10, r12, [ rsi + 0x20 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], rdi
mulx rdi, r13, r11
seto dl
mov [ rsp - 0x18 ], r9
mov r9, -0x2 
inc r9
adox r12, r8
mov r8b, dl
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r12
mulx r12, r9, [ rsi + 0x20 ]
adox r9, r10
mov rdx, 0xffffffff 
mov [ rsp - 0x8 ], r9
mulx r9, r10, r11
adcx rbp, r14
setc r14b
clc
adcx r13, r9
mov r9, 0xfffffffffffffffe 
mov rdx, r9
mov [ rsp + 0x0 ], rbp
mulx rbp, r9, r11
adcx r9, rdi
mov rdx, [ rsi + 0x20 ]
mov byte [ rsp + 0x8 ], r8b
mulx r8, rdi, [ rax + 0x18 ]
adox rdi, r12
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x10 ], rdi
mulx rdi, r12, r11
mov r11, r12
adcx r11, rbp
mov rbp, r12
adcx rbp, rdi
adcx r12, rdi
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x18 ], rdi
mov [ rsp + 0x20 ], r12
mulx r12, rdi, [ rsi + 0x20 ]
clc
adcx r10, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, r10, [ rax + 0x28 ]
adcx r13, rcx
adcx r9, rbx
adox rdi, r8
adox r10, r12
mov rdx, [ rsi + 0x28 ]
mulx rbx, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx r12, r8, [ rsi + 0x28 ]
adcx r11, [ rsp - 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x28 ], rcx
mov [ rsp + 0x30 ], r10
mulx r10, rcx, [ rsi + 0x28 ]
setc dl
clc
adcx rcx, rbx
adcx r8, r10
mov bl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r8
mulx r8, r10, [ rax + 0x18 ]
adcx r10, r12
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r10
mulx r10, r12, [ rsi + 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x48 ], rcx
mov [ rsp + 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x28 ]
adcx r12, r8
adcx rcx, r10
mov rdx, 0x0 
adox r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r8, [ rax + 0x10 ]
adc rdi, 0x0
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], rdi
mov [ rsp + 0x60 ], rcx
mulx rcx, rdi, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x68 ], r12
mov [ rsp + 0x70 ], r15
mulx r15, r12, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], rbp
mulx rbp, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x88 ], r15
mov byte [ rsp + 0x90 ], bl
mulx rbx, r15, [ rsi + 0x18 ]
test al, al
adox r15, rbp
adox r8, rbx
mov rdx, -0x1 
movzx r14, r14b
adcx r14, rdx
adcx r12, [ rsp - 0x30 ]
mov rdx, [ rax + 0x20 ]
mulx rbp, r14, [ rsi + 0x0 ]
setc dl
movzx rbx, byte [ rsp + 0x8 ]
clc
mov [ rsp + 0x98 ], r8
mov r8, -0x1 
adcx rbx, r8
adcx r14, [ rsp - 0x38 ]
adox rdi, r10
mov bl, dl
mov rdx, [ rax + 0x20 ]
mulx r8, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], rdi
mov [ rsp + 0xa8 ], r15
mulx r15, rdi, [ rax + 0x28 ]
adox r10, rcx
adox rdi, r8
mov rdx, [ rax + 0x28 ]
mulx r8, rcx, [ rsi + 0x0 ]
adcx rcx, rbp
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r13, [ rsp - 0x40 ]
adcx r9, [ rsp - 0x20 ]
adcx r11, [ rsp - 0x28 ]
adox r15, rdx
movzx rbp, byte [ rsp + 0x90 ]
dec rdx
adox rbp, rdx
adox r14, [ rsp + 0x80 ]
adcx r14, [ rsp + 0x0 ]
adox rcx, [ rsp + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xb0 ], r15
mulx r15, rbp, [ rsi + 0x10 ]
adcx r12, rcx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xb8 ], rdi
mulx rdi, rcx, [ rsi + 0x10 ]
setc dl
clc
adcx rbp, rdi
mov dil, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xc0 ], r10
mov [ rsp + 0xc8 ], rbp
mulx rbp, r10, [ rax + 0x18 ]
adox r8, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd0 ], rcx
mov [ rsp + 0xd8 ], r8
mulx r8, rcx, [ rax + 0x10 ]
adcx rcx, r15
adcx r10, r8
mov rdx, [ rax + 0x28 ]
mulx r8, r15, [ rsi + 0x10 ]
mov rdx, 0x100000001 
mov [ rsp + 0xe0 ], r10
mov [ rsp + 0xe8 ], rcx
mulx rcx, r10, r13
mov rdx, [ rsi + 0x10 ]
mov byte [ rsp + 0xf0 ], dil
mulx rdi, rcx, [ rax + 0x20 ]
adcx rcx, rbp
adcx r15, rdi
mov rdx, 0x0 
adcx r8, rdx
mov rbp, 0xffffffff 
mov rdx, r10
mulx rdi, r10, rbp
mov rbp, 0xffffffff00000000 
mov [ rsp + 0xf8 ], r8
mov [ rsp + 0x100 ], r15
mulx r15, r8, rbp
clc
adcx r8, rdi
mov rdi, 0xfffffffffffffffe 
mov [ rsp + 0x108 ], rcx
mulx rcx, rbp, rdi
adcx rbp, r15
seto r15b
mov rdi, -0x2 
inc rdi
adox r10, r13
adox r8, r9
mov r10, rdx
mov rdx, [ rax + 0x28 ]
mulx r9, r13, [ rsi + 0x8 ]
adox rbp, r11
mov rdx, 0xffffffffffffffff 
mulx rdi, r11, r10
mov r10, r11
adcx r10, rcx
adox r10, r14
mov r14, r11
adcx r14, rdi
adcx r11, rdi
adox r14, r12
setc r12b
clc
mov rcx, -0x1 
movzx rbx, bl
adcx rbx, rcx
adcx r13, [ rsp + 0x78 ]
mov rbx, 0x0 
adcx r9, rbx
movzx rbx, byte [ rsp + 0xf0 ]
clc
adcx rbx, rcx
adcx r13, [ rsp + 0xd8 ]
adox r11, r13
movzx rbx, r15b
adcx rbx, r9
movzx r15, r12b
lea r15, [ r15 + rdi ]
adox r15, rbx
seto dil
inc rcx
adox r8, [ rsp + 0xd0 ]
adox rbp, [ rsp + 0xc8 ]
adox r10, [ rsp + 0xe8 ]
adox r14, [ rsp + 0xe0 ]
mov r12, 0x100000001 
mov rdx, r12
mulx r9, r12, r8
mov r9, 0xffffffff00000000 
mov rdx, r12
mulx r13, r12, r9
adox r11, [ rsp + 0x108 ]
adox r15, [ rsp + 0x100 ]
movzx rbx, dil
adcx rbx, rcx
adox rbx, [ rsp + 0xf8 ]
mov rdi, 0xffffffff 
mulx r9, rcx, rdi
clc
adcx rcx, r8
seto cl
mov r8, -0x2 
inc r8
adox r12, r9
adcx r12, rbp
mov rbp, 0xfffffffffffffffe 
mulx r8, r9, rbp
adox r9, r13
adcx r9, r10
mov r10, 0xffffffffffffffff 
mulx rbp, r13, r10
mov rdx, r13
adox rdx, r8
adcx rdx, r14
mov r14, r13
adox r14, rbp
adcx r14, r11
adox r13, rbp
mov r11, 0x0 
adox rbp, r11
adcx r13, r15
adcx rbp, rbx
movzx r15, cl
adc r15, 0x0
test al, al
adox r12, [ rsp + 0x88 ]
mov rcx, 0x100000001 
xchg rdx, rcx
mulx r8, rbx, r12
adox r9, [ rsp + 0xa8 ]
adox rcx, [ rsp + 0x98 ]
adox r14, [ rsp + 0xa0 ]
adox r13, [ rsp + 0xc0 ]
adox rbp, [ rsp + 0xb8 ]
adox r15, [ rsp + 0xb0 ]
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx r11, r8, rbx
mov rdx, rbx
mulx r10, rbx, rdi
adcx r8, r10
mov r10, 0xfffffffffffffffe 
mov [ rsp + 0x110 ], r15
mulx r15, rdi, r10
adcx rdi, r11
mov r11, 0xffffffffffffffff 
mov [ rsp + 0x118 ], rbp
mulx rbp, r10, r11
seto dl
mov r11, -0x2 
inc r11
adox rbx, r12
adox r8, r9
mov rbx, r10
adcx rbx, r15
mov r12, r10
adcx r12, rbp
adox rdi, rcx
adcx r10, rbp
adox rbx, r14
adox r12, r13
mov r9, 0x0 
adcx rbp, r9
clc
adcx r8, [ rsp - 0x48 ]
adcx rdi, [ rsp - 0x10 ]
adcx rbx, [ rsp - 0x8 ]
adox r10, [ rsp + 0x118 ]
adcx r12, [ rsp + 0x10 ]
adox rbp, [ rsp + 0x110 ]
adcx r10, [ rsp + 0x50 ]
movzx rcx, dl
adox rcx, r9
adcx rbp, [ rsp + 0x30 ]
adcx rcx, [ rsp + 0x70 ]
mov r14, 0x100000001 
mov rdx, r8
mulx r13, r8, r14
mov r13, 0xffffffff 
xchg rdx, r13
mulx r9, r15, r8
inc r11
adox r15, r13
mov r15, 0xffffffff00000000 
mov rdx, r8
mulx r13, r8, r15
setc r15b
clc
adcx r8, r9
adox r8, rdi
mov rdi, 0xfffffffffffffffe 
mulx r11, r9, rdi
adcx r9, r13
adox r9, rbx
mov rbx, 0xffffffffffffffff 
mulx rdi, r13, rbx
mov rdx, r13
adcx rdx, r11
adox rdx, r12
mov r12, r13
adcx r12, rdi
adcx r13, rdi
adox r12, r10
adox r13, rbp
mov r10, 0x0 
adcx rdi, r10
adox rdi, rcx
movzx rbp, r15b
adox rbp, r10
xor r15, r15
adox r8, [ rsp + 0x28 ]
adox r9, [ rsp + 0x48 ]
xchg rdx, r14
mulx rcx, r10, r8
mov rcx, 0xffffffff00000000 
mov rdx, r10
mulx r11, r10, rcx
mov r15, 0xffffffff 
mulx rcx, rbx, r15
adcx r10, rcx
adox r14, [ rsp + 0x38 ]
adox r12, [ rsp + 0x40 ]
adox r13, [ rsp + 0x68 ]
adox rdi, [ rsp + 0x60 ]
adox rbp, [ rsp + 0x58 ]
seto cl
mov r15, -0x2 
inc r15
adox rbx, r8
adox r10, r9
mov rbx, 0xfffffffffffffffe 
mulx r9, r8, rbx
adcx r8, r11
adox r8, r14
mov r11, 0xffffffffffffffff 
mulx r15, r14, r11
mov rdx, r14
adcx rdx, r9
mov r9, r14
adcx r9, r15
adcx r14, r15
adox rdx, r12
mov r12, 0x0 
adcx r15, r12
adox r9, r13
adox r14, rdi
adox r15, rbp
movzx r13, cl
adox r13, r12
mov rdi, 0xffffffff 
mov rcx, r10
sub rcx, rdi
mov rbp, 0xffffffff00000000 
mov r12, r8
sbb r12, rbp
mov r11, rdx
sbb r11, rbx
mov rbx, 0xffffffffffffffff 
mov rbp, r9
sbb rbp, rbx
mov rdi, r14
sbb rdi, rbx
mov [ rsp + 0x120 ], rcx
mov rcx, r15
sbb rcx, rbx
mov rbx, 0x0 
sbb r13, rbx
cmovc rbp, r9
cmovc rcx, r15
cmovc r12, r8
cmovc r11, rdx
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x18 ], rbp
mov [ r13 + 0x8 ], r12
cmovc rdi, r14
mov [ r13 + 0x20 ], rdi
mov [ r13 + 0x10 ], r11
mov r8, [ rsp + 0x120 ]
cmovc r8, r10
mov [ r13 + 0x0 ], r8
mov [ r13 + 0x28 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.5205
; seed 3346113220587215 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5482638 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=31, initial num_batches=31): 154484 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02817694693685777
; number reverted permutation / tried permutation: 82098 / 95068 =86.357%
; number reverted decision / tried decision: 72006 / 94931 =75.851%
; validated in 45.38s
