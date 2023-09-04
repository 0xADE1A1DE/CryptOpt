SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 376
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
xor rdx, rdx
adox r12, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rax
mov [ rsp - 0x40 ], r12
mulx r12, rax, [ rsi + 0x10 ]
adcx rax, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], rax
mulx rax, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], rax
mulx rax, r14, [ rsi + 0x10 ]
adcx r11, r12
adcx r14, rcx
mov rdx, [ rsi + 0x8 ]
mulx r12, rcx, [ rsi + 0x10 ]
adox rcx, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r14
mulx r14, r13, [ rsi + 0x18 ]
adcx rbx, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rbx
mulx rbx, rax, [ rsi + 0x28 ]
adox r13, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r11
mulx r11, r12, [ rsi + 0x20 ]
adox r12, r14
adox r15, r11
adcx rax, rbp
mov rdx, [ rsi + 0x0 ]
mulx r14, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x8 ], rbp
mulx rbp, r11, [ rsi + 0x18 ]
setc dl
clc
adcx r10, r14
movzx r14, dl
lea r14, [ r14 + rbx ]
mov rbx, 0x0 
adox rdi, rbx
mov rdx, -0x3 
inc rdx
adox r8, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x0 ], r10
mov [ rsp + 0x8 ], r8
mulx r8, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r11
mov [ rsp + 0x18 ], r14
mulx r14, r11, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x20 ], rax
mov [ rsp + 0x28 ], rdi
mulx rdi, rax, [ rsi + 0x10 ]
adox rax, r9
adcx rbp, [ rsp - 0x28 ]
adcx r10, rbx
adcx r11, r8
mov rdx, [ rsi + 0x20 ]
mulx rbx, r9, [ rsi + 0x28 ]
adcx r9, r14
mov rdx, [ rsi + 0x18 ]
mulx r14, r8, rdx
adox r8, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r9
mulx r9, rdi, [ rsi + 0x20 ]
adox rdi, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r11
mulx r11, r14, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], r10
mov [ rsp + 0x48 ], rbp
mulx rbp, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], rdi
mov [ rsp + 0x58 ], r8
mulx r8, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], rax
mov [ rsp + 0x68 ], r15
mulx r15, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], rax
mov [ rsp + 0x78 ], r12
mulx r12, rax, [ rsi + 0x28 ]
setc dl
clc
adcx rdi, r15
adcx rax, r8
movzx r8, dl
lea r8, [ r8 + rbx ]
adcx r14, r12
adcx r10, r11
mov rdx, [ rsi + 0x28 ]
mulx r11, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mulx r12, r15, rdx
adox rbx, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], r10
mulx r10, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r14
mov [ rsp + 0x90 ], rax
mulx rax, r14, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], rdi
mov [ rsp + 0xa0 ], r8
mulx r8, rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa8 ], rbx
mov [ rsp + 0xb0 ], r13
mulx r13, rbx, [ rsi + 0x10 ]
adcx r15, rbp
mov rdx, 0x100000001 
mov [ rsp + 0xb8 ], r15
mulx r15, rbp, rdi
mov r15, 0x0 
adcx r12, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc0 ], r12
mulx r12, r15, [ rsi + 0x0 ]
clc
adcx r9, r8
adcx rbx, r10
adcx r15, r13
mov rdx, [ rsi + 0x0 ]
mulx r8, r10, [ rsi + 0x20 ]
adcx r10, r12
adcx r14, r8
mov rdx, 0x0 
adox r11, rdx
mov r13, 0xffffffff 
mov rdx, r13
mulx r12, r13, rbp
mov r8, 0xffffffff00000000 
mov rdx, rbp
mov [ rsp + 0xc8 ], r11
mulx r11, rbp, r8
adc rax, 0x0
xor r8, r8
adox r13, rdi
adcx rbp, r12
mov r13, 0xfffffffffffffffe 
mulx r12, rdi, r13
adcx rdi, r11
adox rbp, r9
adox rdi, rbx
mov r9, 0xffffffffffffffff 
mulx r11, rbx, r9
mov rdx, rbx
adcx rdx, r12
mov r12, rbx
adcx r12, r11
adcx rbx, r11
adcx r11, r8
adox rdx, r15
clc
adcx rbp, [ rsp - 0x30 ]
adox r12, r10
adcx rdi, [ rsp - 0x40 ]
adcx rcx, rdx
adox rbx, r14
adox r11, rax
adcx r12, [ rsp + 0xb0 ]
adcx rbx, [ rsp + 0x78 ]
adcx r11, [ rsp + 0x68 ]
mov r15, 0x100000001 
mov rdx, r15
mulx r10, r15, rbp
mov r10, 0xffffffff 
mov rdx, r15
mulx r14, r15, r10
seto al
mov r9, -0x3 
inc r9
adox r15, rbp
movzx rax, al
movzx r15, al
adcx r15, [ rsp + 0x28 ]
mov rbp, 0xffffffff00000000 
mulx r8, rax, rbp
setc r9b
clc
adcx rax, r14
adox rax, rdi
mulx r14, rdi, r13
adcx rdi, r8
adox rdi, rcx
mov rcx, 0xffffffffffffffff 
mulx r13, r8, rcx
mov rdx, r8
adcx rdx, r14
mov r14, r8
adcx r14, r13
adox rdx, r12
adcx r8, r13
setc r12b
clc
adcx rax, [ rsp - 0x48 ]
adcx rdi, [ rsp - 0x38 ]
adox r14, rbx
movzx rbx, r12b
lea rbx, [ rbx + r13 ]
mov r13, 0x100000001 
xchg rdx, r13
mulx rcx, r12, rax
mov rdx, r12
mulx r12, rcx, r10
adcx r13, [ rsp - 0x10 ]
adcx r14, [ rsp - 0x20 ]
adox r8, r11
adox rbx, r15
adcx r8, [ rsp - 0x18 ]
adcx rbx, [ rsp + 0x20 ]
mulx r15, r11, rbp
mov rbp, 0xffffffffffffffff 
mov [ rsp + 0xd0 ], rbx
mulx rbx, r10, rbp
mov rbp, 0xfffffffffffffffe 
mov [ rsp + 0xd8 ], r8
mov [ rsp + 0xe0 ], r14
mulx r14, r8, rbp
seto dl
mov rbp, -0x2 
inc rbp
adox r11, r12
adox r8, r15
mov r12, r10
adox r12, r14
movzx r15, dl
movzx r9, r9b
lea r15, [ r15 + r9 ]
mov r9, r10
adox r9, rbx
adox r10, rbx
adcx r15, [ rsp + 0x18 ]
setc dl
clc
adcx rcx, rax
adcx r11, rdi
adcx r8, r13
seto cl
inc rbp
adox r11, [ rsp + 0x10 ]
adcx r12, [ rsp + 0xe0 ]
adcx r9, [ rsp + 0xd8 ]
adcx r10, [ rsp + 0xd0 ]
adox r8, [ rsp + 0x8 ]
adox r12, [ rsp + 0x60 ]
adox r9, [ rsp + 0x58 ]
adox r10, [ rsp + 0x50 ]
movzx rax, cl
lea rax, [ rax + rbx ]
adcx rax, r15
movzx rdi, dl
adcx rdi, rbp
mov r13, 0x100000001 
mov rdx, r13
mulx rbx, r13, r11
mov rbx, 0xffffffff 
mov rdx, r13
mulx r14, r13, rbx
adox rax, [ rsp + 0xa8 ]
mov rcx, 0xfffffffffffffffe 
mulx rbp, r15, rcx
mov rcx, 0xffffffff00000000 
mov [ rsp + 0xe8 ], rax
mulx rax, rbx, rcx
clc
adcx rbx, r14
adox rdi, [ rsp + 0xc8 ]
adcx r15, rax
seto r14b
mov rax, -0x2 
inc rax
adox r13, r11
adox rbx, r8
adox r15, r12
mov r13, 0xffffffffffffffff 
mulx r8, r11, r13
mov r12, r11
adcx r12, rbp
adox r12, r9
mov r9, r11
adcx r9, r8
adox r9, r10
adcx r11, r8
adox r11, [ rsp + 0xe8 ]
mov r10, 0x0 
adcx r8, r10
clc
adcx rbx, [ rsp - 0x8 ]
mov rdx, 0x100000001 
mulx r10, rbp, rbx
adcx r15, [ rsp + 0x0 ]
adcx r12, [ rsp + 0x48 ]
adcx r9, [ rsp + 0x40 ]
adcx r11, [ rsp + 0x38 ]
mov rdx, rcx
mulx rcx, r10, rbp
mov rax, 0xffffffff 
mov rdx, rax
mulx r13, rax, rbp
adox r8, rdi
adcx r8, [ rsp + 0x30 ]
movzx rdi, r14b
mov rdx, 0x0 
adox rdi, rdx
adcx rdi, [ rsp + 0xa0 ]
mov r14, -0x3 
inc r14
adox rax, rbx
mov rax, 0xffffffffffffffff 
mov rdx, rax
mulx rbx, rax, rbp
setc r14b
clc
adcx r10, r13
adox r10, r15
mov r15, 0xfffffffffffffffe 
mov rdx, r15
mulx r13, r15, rbp
adcx r15, rcx
adox r15, r12
mov rbp, rax
adcx rbp, r13
mov r12, rax
adcx r12, rbx
adox rbp, r9
adox r12, r11
adcx rax, rbx
mov r9, 0x0 
adcx rbx, r9
clc
adcx r10, [ rsp + 0x70 ]
mov r11, 0x100000001 
mov rdx, r11
mulx rcx, r11, r10
adcx r15, [ rsp + 0x98 ]
adox rax, r8
adcx rbp, [ rsp + 0x90 ]
adcx r12, [ rsp + 0x88 ]
adcx rax, [ rsp + 0x80 ]
adox rbx, rdi
movzx rcx, r14b
adox rcx, r9
adcx rbx, [ rsp + 0xb8 ]
adcx rcx, [ rsp + 0xc0 ]
mov r8, 0xffffffffffffffff 
mov rdx, r8
mulx r14, r8, r11
mov rdi, 0xffffffff 
mov rdx, rdi
mulx r13, rdi, r11
mov r9, 0xffffffff00000000 
mov rdx, r11
mov [ rsp + 0xf0 ], rcx
mulx rcx, r11, r9
mov r9, -0x2 
inc r9
adox r11, r13
setc r13b
clc
adcx rdi, r10
mov rdi, 0xfffffffffffffffe 
mulx r9, r10, rdi
adox r10, rcx
mov rdx, r8
adox rdx, r9
adcx r11, r15
adcx r10, rbp
mov r15, r8
adox r15, r14
adox r8, r14
adcx rdx, r12
adcx r15, rax
mov rbp, 0x0 
adox r14, rbp
adcx r8, rbx
adcx r14, [ rsp + 0xf0 ]
movzx r12, r13b
adc r12, 0x0
mov rax, 0xffffffff 
mov rbx, r11
sub rbx, rax
mov r13, 0xffffffff00000000 
mov rcx, r10
sbb rcx, r13
mov r9, rdx
sbb r9, rdi
mov rbp, 0xffffffffffffffff 
mov rdi, r15
sbb rdi, rbp
mov r13, r8
sbb r13, rbp
mov rax, r14
sbb rax, rbp
mov rbp, 0x0 
sbb r12, rbp
cmovc rdi, r15
cmovc r9, rdx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x10 ], r9
cmovc rcx, r10
mov [ r12 + 0x18 ], rdi
cmovc r13, r8
mov [ r12 + 0x20 ], r13
cmovc rax, r14
mov [ r12 + 0x28 ], rax
cmovc rbx, r11
mov [ r12 + 0x8 ], rcx
mov [ r12 + 0x0 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 376
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6784
; seed 1271357931282571 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3780395 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=40, initial num_batches=31): 117725 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03114092574982244
; number reverted permutation / tried permutation: 78503 / 95460 =82.237%
; number reverted decision / tried decision: 67640 / 94539 =71.547%
; validated in 38.689s
