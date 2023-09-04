SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 360
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
xor rdx, rdx
adox r13, r11
adox r9, r14
mov rdx, [ rsi + 0x10 ]
mulx r14, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r9
mulx r9, rbp, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r10
mulx r10, r13, [ rsi + 0x20 ]
adcx rcx, r12
adcx r15, r8
mov rdx, [ rax + 0x18 ]
mulx r12, r8, [ rsi + 0x18 ]
adox r8, rbx
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x28 ], r15
mulx r15, rbx, [ rsi + 0x18 ]
adox rbp, r12
adox rbx, r9
mov rdx, [ rax + 0x18 ]
mulx r12, r9, [ rsi + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], r13
mulx r13, rcx, [ rsi + 0x28 ]
adcx r9, rdi
adcx rcx, r12
mov rdx, [ rax + 0x28 ]
mulx r12, rdi, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], rcx
mov [ rsp - 0x8 ], r9
mulx r9, rcx, [ rsi + 0x10 ]
mov rdx, 0x0 
adox r15, rdx
adcx rdi, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], rdi
mulx rdi, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x8 ], r15
mov [ rsp + 0x10 ], rbx
mulx rbx, r15, [ rsi + 0x10 ]
adc r12, 0x0
xor rdx, rdx
adox r13, r14
adox rcx, rdi
mov rdx, [ rax + 0x20 ]
mulx rdi, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x18 ], r12
mov [ rsp + 0x20 ], rbp
mulx rbp, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r8
mov [ rsp + 0x30 ], rcx
mulx rcx, r8, [ rax + 0x8 ]
adox r15, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x38 ], r15
mulx r15, r9, [ rax + 0x28 ]
adox r14, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x40 ], r14
mulx r14, rbx, [ rax + 0x18 ]
adcx r8, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x48 ], r13
mulx r13, rbp, [ rax + 0x10 ]
adox r9, rdi
adcx rbp, rcx
adcx rbx, r13
mov rdx, [ rax + 0x20 ]
mulx rcx, rdi, [ rsi + 0x8 ]
adcx rdi, r14
mov rdx, [ rsi + 0x0 ]
mulx r13, r14, [ rax + 0x0 ]
mov rdx, 0x100000001 
mov [ rsp + 0x50 ], r9
mov [ rsp + 0x58 ], r11
mulx r11, r9, r14
mov r11, 0x0 
adox r15, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x60 ], r15
mulx r15, r11, [ rax + 0x28 ]
adcx r11, rcx
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x68 ], r11
mulx r11, rcx, r9
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x70 ], rdi
mov [ rsp + 0x78 ], rbx
mulx rbx, rdi, [ rsi + 0x0 ]
adc r15, 0x0
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x80 ], r15
mov [ rsp + 0x88 ], rbp
mulx rbp, r15, [ rsi + 0x0 ]
xor rdx, rdx
adox rdi, r13
adox r15, rbx
mov rdx, [ rax + 0x8 ]
mulx rbx, r13, [ rsi + 0x20 ]
adcx r13, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r13
mulx r13, r10, [ rax + 0x10 ]
adcx r10, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], r10
mulx r10, rbx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r8
mov [ rsp + 0xa8 ], r12
mulx r12, r8, [ rax + 0x18 ]
adcx r8, r13
adox rbx, rbp
mov rdx, [ rax + 0x20 ]
mulx r13, rbp, [ rsi + 0x0 ]
adox rbp, r10
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xb0 ], r8
mulx r8, r10, [ rsi + 0x0 ]
adox r10, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], r10
mulx r10, r13, [ rax + 0x20 ]
adcx r13, r12
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xc0 ], r13
mulx r13, r12, [ rsi + 0x20 ]
adcx r12, r10
adc r13, 0x0
mov rdx, 0xffffffff 
mov [ rsp + 0xc8 ], r13
mulx r13, r10, r9
xor rdx, rdx
adox r10, r14
mov r10, 0xffffffff00000000 
mov rdx, r10
mulx r14, r10, r9
adcx r10, r13
mov r13, 0xfffffffffffffffe 
mov rdx, r13
mov [ rsp + 0xd0 ], r12
mulx r12, r13, r9
adcx r13, r14
mov r9, rcx
adcx r9, r12
mov r14, rcx
adcx r14, r11
adcx rcx, r11
adox r10, rdi
adox r13, r15
adox r9, rbx
adox r14, rbp
mov rdi, 0x0 
adcx r11, rdi
clc
adcx r10, [ rsp + 0xa8 ]
mov r15, 0x100000001 
mov rdx, r15
mulx rbx, r15, r10
adcx r13, [ rsp + 0xa0 ]
adcx r9, [ rsp + 0x88 ]
adcx r14, [ rsp + 0x78 ]
adox rcx, [ rsp + 0xb8 ]
mov rbx, 0xffffffffffffffff 
mov rdx, r15
mulx rbp, r15, rbx
adcx rcx, [ rsp + 0x70 ]
adox r11, r8
adcx r11, [ rsp + 0x68 ]
mov r8, 0xffffffff00000000 
mulx rdi, r12, r8
mov r8, 0xffffffff 
mov [ rsp + 0xd8 ], r11
mulx r11, rbx, r8
setc r8b
movzx r8, r8b
adox r8, [ rsp + 0x80 ]
clc
adcx r12, r11
setc r11b
clc
adcx rbx, r10
adcx r12, r13
mov rbx, 0xfffffffffffffffe 
mulx r13, r10, rbx
seto dl
mov rbx, 0x0 
dec rbx
movzx r11, r11b
adox r11, rbx
adox rdi, r10
adcx rdi, r9
mov r9, r15
adox r9, r13
adcx r9, r14
mov r14, r15
adox r14, rbp
adcx r14, rcx
adox r15, rbp
mov rcx, 0x0 
adox rbp, rcx
adcx r15, [ rsp + 0xd8 ]
adcx rbp, r8
movzx r8, dl
adc r8, 0x0
add r12, [ rsp + 0x58 ]
mov rdx, 0x100000001 
mulx r10, r11, r12
adcx rdi, [ rsp + 0x48 ]
adcx r9, [ rsp + 0x30 ]
adcx r14, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x40 ]
adcx rbp, [ rsp + 0x50 ]
mov r10, 0xfffffffffffffffe 
mov rdx, r11
mulx r13, r11, r10
mov rcx, 0xffffffff 
mulx r10, rbx, rcx
mov rcx, -0x2 
inc rcx
adox rbx, r12
adcx r8, [ rsp + 0x60 ]
mov rbx, 0xffffffff00000000 
mulx rcx, r12, rbx
setc bl
clc
adcx r12, r10
adcx r11, rcx
adox r12, rdi
mov rdi, 0xffffffffffffffff 
mulx rcx, r10, rdi
mov rdx, r10
adcx rdx, r13
adox r11, r9
mov r9, r10
adcx r9, rcx
adcx r10, rcx
adox rdx, r14
adox r9, r15
mov r14, 0x0 
adcx rcx, r14
adox r10, rbp
adox rcx, r8
movzx r15, bl
adox r15, r14
add r12, [ rsp - 0x30 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx rbx, r13, r12
mov rbx, 0xffffffff 
mov rdx, r13
mulx r8, r13, rbx
adcx r11, [ rsp - 0x38 ]
adcx rbp, [ rsp - 0x40 ]
mov rbx, -0x3 
inc rbx
adox r13, r12
adcx r9, [ rsp + 0x28 ]
adcx r10, [ rsp + 0x20 ]
adcx rcx, [ rsp + 0x10 ]
mov r13, 0xffffffff00000000 
mulx r14, r12, r13
adcx r15, [ rsp + 0x8 ]
mov rbx, 0xfffffffffffffffe 
mulx rdi, r13, rbx
setc bl
clc
adcx r12, r8
adox r12, r11
adcx r13, r14
mov r8, 0xffffffffffffffff 
mulx r14, r11, r8
adox r13, rbp
mov rdx, r11
adcx rdx, rdi
adox rdx, r9
mov rbp, r11
adcx rbp, r14
adcx r11, r14
adox rbp, r10
adox r11, rcx
mov r9, 0x0 
adcx r14, r9
adox r14, r15
clc
adcx r12, [ rsp - 0x18 ]
adcx r13, [ rsp + 0x90 ]
movzx r10, bl
adox r10, r9
mov rcx, 0x100000001 
xchg rdx, rcx
mulx r15, rbx, r12
adcx rcx, [ rsp + 0x98 ]
mov r15, 0xffffffff 
mov rdx, rbx
mulx rdi, rbx, r15
adcx rbp, [ rsp + 0xb0 ]
adcx r11, [ rsp + 0xc0 ]
mov r15, -0x3 
inc r15
adox rbx, r12
adcx r14, [ rsp + 0xd0 ]
mov rbx, 0xffffffff00000000 
mulx r9, r12, rbx
adcx r10, [ rsp + 0xc8 ]
setc r15b
clc
adcx r12, rdi
adox r12, r13
mov r13, 0xfffffffffffffffe 
mulx rbx, rdi, r13
adcx rdi, r9
adox rdi, rcx
mulx r9, rcx, r8
mov rdx, rcx
adcx rdx, rbx
mov rbx, rcx
adcx rbx, r9
adcx rcx, r9
adox rdx, rbp
adox rbx, r11
adox rcx, r14
mov rbp, 0x0 
adcx r9, rbp
clc
adcx r12, [ rsp - 0x48 ]
adox r9, r10
adcx rdi, [ rsp - 0x20 ]
mov r11, 0x100000001 
xchg rdx, r11
mulx r10, r14, r12
adcx r11, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x8 ]
adcx rcx, [ rsp - 0x10 ]
mov r10, 0xffffffff 
mov rdx, r14
mulx rbp, r14, r10
movzx r13, r15b
mov r10, 0x0 
adox r13, r10
adcx r9, [ rsp + 0x0 ]
mov r15, -0x3 
inc r15
adox r14, r12
adcx r13, [ rsp + 0x18 ]
mov r14, 0xffffffff00000000 
mulx r10, r12, r14
setc r15b
clc
adcx r12, rbp
mov rbp, 0xfffffffffffffffe 
mulx r8, r14, rbp
adcx r14, r10
adox r12, rdi
adox r14, r11
mov rdi, 0xffffffffffffffff 
mulx r10, r11, rdi
mov rdx, r11
adcx rdx, r8
adox rdx, rbx
mov rbx, r11
adcx rbx, r10
adcx r11, r10
adox rbx, rcx
adox r11, r9
mov rcx, 0x0 
adcx r10, rcx
adox r10, r13
movzx r9, r15b
adox r9, rcx
mov r15, 0xffffffff 
mov r13, r12
sub r13, r15
mov r8, 0xffffffff00000000 
mov rcx, r14
sbb rcx, r8
mov r8, rdx
sbb r8, rbp
mov rbp, rbx
sbb rbp, rdi
mov r15, r11
sbb r15, rdi
mov [ rsp + 0xe0 ], r13
mov r13, r10
sbb r13, rdi
mov rdi, 0x0 
sbb r9, rdi
cmovc r15, r11
cmovc rcx, r14
cmovc r8, rdx
cmovc r13, r10
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x28 ], r13
mov [ r9 + 0x10 ], r8
cmovc rbp, rbx
mov [ r9 + 0x20 ], r15
mov [ r9 + 0x18 ], rbp
mov r14, [ rsp + 0xe0 ]
cmovc r14, r12
mov [ r9 + 0x0 ], r14
mov [ r9 + 0x8 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 360
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6313
; seed 2028038348352578 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4735045 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=32, initial num_batches=31): 142417 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.030077222074975
; number reverted permutation / tried permutation: 80504 / 95076 =84.673%
; number reverted decision / tried decision: 70316 / 94923 =74.077%
; validated in 51.4s
