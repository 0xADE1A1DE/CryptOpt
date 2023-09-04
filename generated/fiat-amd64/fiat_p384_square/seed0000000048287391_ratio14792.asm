SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 384
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x28 ]
xor rdx, rdx
adox r11, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r11
mov [ rsp - 0x40 ], r14
mulx r14, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], r10
mulx r10, r15, rdx
adcx r15, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rax
mulx rax, r14, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r15
mov [ rsp - 0x18 ], r11
mulx r11, r15, [ rsi + 0x8 ]
adcx r15, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r15
mulx r15, r10, [ rsi + 0x28 ]
adcx r14, r11
adcx rbx, rax
adcx r10, rbp
mov rdx, [ rsi + 0x18 ]
mulx rax, rbp, [ rsi + 0x8 ]
adox r8, rcx
mov rdx, [ rsi + 0x28 ]
mulx r11, rcx, [ rsi + 0x18 ]
adox rcx, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, r9, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], r15
mulx r15, r8, rdx
clc
adcx rbp, rdi
adcx r9, rax
adcx r8, rcx
mov rdx, [ rsi + 0x28 ]
mulx rax, rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], r8
mulx r8, rcx, rdx
mov rdx, 0x100000001 
mov [ rsp + 0x18 ], r9
mov [ rsp + 0x20 ], rbp
mulx rbp, r9, rcx
adox r12, r11
mov rdx, [ rsi + 0x18 ]
mulx r11, rbp, [ rsi + 0x20 ]
mov rdx, 0xffffffff00000000 
mov [ rsp + 0x28 ], r12
mov [ rsp + 0x30 ], r10
mulx r10, r12, r9
adox rdi, r13
mov r13, 0x0 
adox rax, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x38 ], rax
mulx rax, r13, [ rsi + 0x0 ]
mov rdx, -0x2 
inc rdx
adox r13, r8
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x40 ], rdi
mulx rdi, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], rbx
mov [ rsp + 0x50 ], r14
mulx r14, rbx, [ rsi + 0x0 ]
adox r8, rax
adox rbx, rdi
mov rdx, [ rsi + 0x28 ]
mulx rdi, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], rbx
mov [ rsp + 0x60 ], r8
mulx r8, rbx, [ rsi + 0x0 ]
adox rbx, r14
adox rax, r8
mov rdx, [ rsi + 0x8 ]
mulx r8, r14, [ rsi + 0x10 ]
adcx rbp, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], rbp
mulx rbp, r15, [ rsi + 0x28 ]
adcx r15, r11
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r15
mulx r15, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x78 ], r11
mov [ rsp + 0x80 ], rdi
mulx rdi, r11, [ rsi + 0x10 ]
adc rbp, 0x0
add r14, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x88 ], rbp
mulx rbp, r15, rdx
adcx r15, r8
mov rdx, 0xffffffff 
mov [ rsp + 0x90 ], r15
mulx r15, r8, r9
mov rdx, -0x2 
inc rdx
adox r12, r15
adcx r11, rbp
mov rdx, [ rsi + 0x10 ]
mulx r15, rbp, [ rsi + 0x20 ]
adcx rbp, rdi
mov rdx, 0xfffffffffffffffe 
mov [ rsp + 0x98 ], rbp
mulx rbp, rdi, r9
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0xa0 ], r11
mov [ rsp + 0xa8 ], r14
mulx r14, r11, r9
adox rdi, r10
mov r9, r11
adox r9, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbp, r10, [ rsi + 0x10 ]
adcx r10, r15
setc dl
clc
adcx r8, rcx
adcx r12, r13
adcx rdi, [ rsp + 0x60 ]
adcx r9, [ rsp + 0x58 ]
mov r8, r11
adox r8, r14
adcx r8, rbx
adox r11, r14
mov rcx, 0x0 
adox r14, rcx
adcx r11, rax
movzx r13, dl
lea r13, [ r13 + rbp ]
mov rbx, -0x3 
inc rbx
adox r12, [ rsp - 0x18 ]
adox rdi, [ rsp - 0x20 ]
adox r9, [ rsp - 0x10 ]
adox r8, [ rsp + 0x50 ]
adox r11, [ rsp + 0x48 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, rax, [ rsi + 0x8 ]
adcx r14, [ rsp + 0x80 ]
adox r14, [ rsp + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb0 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
setc dl
clc
adcx rax, rcx
adcx r15, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x30 ]
movzx rdx, dl
movzx rcx, dl
adox rcx, [ rsp + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], r15
mulx r15, rbx, rdx
adcx rbx, rbp
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], rbx
mulx rbx, rbp, [ rsi + 0x20 ]
adcx rbp, r15
mov rdx, 0x100000001 
mov [ rsp + 0xd0 ], rbp
mulx rbp, r15, r12
mov rbp, 0xffffffff 
mov rdx, r15
mov [ rsp + 0xd8 ], rax
mulx rax, r15, rbp
mov rbp, 0x0 
adcx rbx, rbp
mov rbp, 0xffffffff00000000 
mov [ rsp + 0xe0 ], rbx
mov [ rsp + 0xe8 ], r13
mulx r13, rbx, rbp
clc
adcx rbx, rax
seto al
mov rbp, -0x2 
inc rbp
adox r15, r12
mov r15, 0xfffffffffffffffe 
mulx rbp, r12, r15
adcx r12, r13
adox rbx, rdi
mov rdi, 0xffffffffffffffff 
mulx r15, r13, rdi
adox r12, r9
mov r9, r13
adcx r9, rbp
adox r9, r8
mov r8, r13
adcx r8, r15
adox r8, r11
adcx r13, r15
adox r13, r14
mov r11, 0x0 
adcx r15, r11
adox r15, rcx
movzx r14, al
adox r14, r11
xor rax, rax
adox rbx, [ rsp + 0x78 ]
mov r11, 0x100000001 
mov rdx, r11
mulx rcx, r11, rbx
mov rdx, r11
mulx rcx, r11, rdi
adox r12, [ rsp + 0xa8 ]
mov rbp, 0xfffffffffffffffe 
mulx rdi, rax, rbp
adox r9, [ rsp + 0x90 ]
adox r8, [ rsp + 0xa0 ]
adox r13, [ rsp + 0x98 ]
adox r10, r15
mov r15, 0xffffffff 
mov [ rsp + 0xf0 ], r10
mulx r10, rbp, r15
adcx rbp, rbx
adox r14, [ rsp + 0xe8 ]
mov rbp, 0xffffffff00000000 
mulx r15, rbx, rbp
seto dl
mov rbp, -0x2 
inc rbp
adox rbx, r10
adcx rbx, r12
adox rax, r15
mov r12, r11
adox r12, rdi
mov rdi, r11
adox rdi, rcx
adox r11, rcx
mov r10, 0x0 
adox rcx, r10
adcx rax, r9
adcx r12, r8
adcx rdi, r13
adcx r11, [ rsp + 0xf0 ]
adcx rcx, r14
movzx r9, dl
adc r9, 0x0
test al, al
adox rbx, [ rsp - 0x38 ]
adox rax, [ rsp + 0x20 ]
adox r12, [ rsp + 0x18 ]
adox rdi, [ rsp + 0x10 ]
adox r11, [ rsp + 0x68 ]
mov r8, 0x100000001 
mov rdx, r8
mulx r13, r8, rbx
mov r13, 0xffffffff00000000 
mov rdx, r8
mulx r14, r8, r13
mov r15, 0xffffffff 
mulx rbp, r10, r15
mov r15, 0xffffffffffffffff 
mov [ rsp + 0xf8 ], r11
mulx r11, r13, r15
adox rcx, [ rsp + 0x70 ]
adcx r10, rbx
adox r9, [ rsp + 0x88 ]
seto r10b
mov rbx, -0x2 
inc rbx
adox r8, rbp
mov rbp, 0xfffffffffffffffe 
mulx r15, rbx, rbp
adox rbx, r14
adcx r8, rax
adcx rbx, r12
mov rax, r13
adox rax, r15
mov r12, r13
adox r12, r11
adox r13, r11
adcx rax, rdi
adcx r12, [ rsp + 0xf8 ]
adcx r13, rcx
setc dil
clc
adcx r8, [ rsp + 0xb0 ]
mov rdx, 0x100000001 
mulx rcx, r14, r8
adcx rbx, [ rsp + 0xd8 ]
mov rcx, 0x0 
adox r11, rcx
adcx rax, [ rsp + 0xc0 ]
adcx r12, [ rsp + 0xb8 ]
adcx r13, [ rsp + 0xc8 ]
mov rdx, rbp
mulx r15, rbp, r14
dec rcx
movzx rdi, dil
adox rdi, rcx
adox r9, r11
adcx r9, [ rsp + 0xd0 ]
movzx rdi, r10b
mov r11, 0x0 
adox rdi, r11
adcx rdi, [ rsp + 0xe0 ]
mov r10, 0xffffffff 
mov rdx, r14
mulx r11, r14, r10
inc rcx
adox r14, r8
mov r14, 0xffffffff00000000 
mulx rcx, r8, r14
setc r10b
clc
adcx r8, r11
adcx rbp, rcx
adox r8, rbx
adox rbp, rax
mov rbx, 0xffffffffffffffff 
mulx r11, rax, rbx
mov rdx, rax
adcx rdx, r15
mov r15, rax
adcx r15, r11
adcx rax, r11
mov rcx, 0x0 
adcx r11, rcx
clc
adcx r8, [ rsp - 0x40 ]
adox rdx, r12
adox r15, r13
adox rax, r9
adox r11, rdi
adcx rbp, [ rsp - 0x48 ]
movzx r12, r10b
adox r12, rcx
adcx rdx, [ rsp + 0x0 ]
mov r13, 0x100000001 
xchg rdx, r13
mulx r10, r9, r8
mov rdx, r9
mulx r9, r10, r14
adcx r15, [ rsp - 0x8 ]
adcx rax, [ rsp + 0x28 ]
mov rdi, 0xffffffff 
mulx rbx, rcx, rdi
mov rdi, -0x2 
inc rdi
adox rcx, r8
adcx r11, [ rsp + 0x40 ]
adcx r12, [ rsp + 0x38 ]
setc cl
clc
adcx r10, rbx
mov r8, 0xfffffffffffffffe 
mulx rdi, rbx, r8
adcx rbx, r9
mov r9, 0xffffffffffffffff 
mulx r14, r8, r9
adox r10, rbp
adox rbx, r13
mov rbp, r8
adcx rbp, rdi
adox rbp, r15
mov r13, r8
adcx r13, r14
adox r13, rax
adcx r8, r14
mov rdx, 0x0 
adcx r14, rdx
adox r8, r11
adox r14, r12
movzx r15, cl
adox r15, rdx
mov rax, 0xffffffff 
mov r11, r10
sub r11, rax
mov rcx, 0xffffffff00000000 
mov r12, rbx
sbb r12, rcx
mov rdi, 0xfffffffffffffffe 
mov rdx, rbp
sbb rdx, rdi
mov rdi, r13
sbb rdi, r9
mov rax, r8
sbb rax, r9
mov rcx, r14
sbb rcx, r9
mov r9, 0x0 
sbb r15, r9
cmovc rdi, r13
cmovc rax, r8
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x18 ], rdi
cmovc rcx, r14
mov [ r15 + 0x28 ], rcx
cmovc r11, r10
cmovc r12, rbx
mov [ r15 + 0x0 ], r11
cmovc rdx, rbp
mov [ r15 + 0x20 ], rax
mov [ r15 + 0x10 ], rdx
mov [ r15 + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 384
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4792
; seed 1459703115880466 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6392449 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 180938 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028304957927705016
; number reverted permutation / tried permutation: 79564 / 94925 =83.818%
; number reverted decision / tried decision: 66853 / 95074 =70.317%
; validated in 56.065s
