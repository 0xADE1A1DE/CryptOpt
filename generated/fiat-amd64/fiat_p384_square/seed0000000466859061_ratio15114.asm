SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 368
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x20 ]
test al, al
adox rax, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
adox rbx, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mulx r15, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r11
mulx r11, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], rax
mulx rax, rbx, [ rsi + 0x8 ]
adcx rbx, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], rbx
mulx rbx, rcx, [ rsi + 0x10 ]
seto dl
mov [ rsp - 0x28 ], r12
mov r12, -0x2 
inc r12
adox r8, rbx
adcx r10, rax
mov al, dl
mov rdx, [ rsi + 0x10 ]
mulx r12, rbx, rdx
adox rbx, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r10
mulx r10, r9, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], rbx
mov [ rsp - 0x10 ], r8
mulx r8, rbx, [ rsi + 0x0 ]
setc dl
clc
adcx r9, r8
mov r8b, dl
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], rcx
mov [ rsp + 0x0 ], r9
mulx r9, rcx, [ rsi + 0x10 ]
adcx r13, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x8 ], r13
mulx r13, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x10 ], rbx
mov [ rsp + 0x18 ], r15
mulx r15, rbx, [ rsi + 0x8 ]
adcx rbx, r14
adox rcx, r12
mov rdx, [ rsi + 0x8 ]
mulx r12, r14, [ rsi + 0x20 ]
adcx r14, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x20 ], rcx
mulx rcx, r15, [ rsi + 0x8 ]
adcx r15, r12
adox r10, r9
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, [ rsi + 0x28 ]
adox r9, r13
mov rdx, 0x0 
adox r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], r12
mulx r12, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x30 ], r9
mov [ rsp + 0x38 ], r10
mulx r10, r9, [ rsi + 0x18 ]
adc rcx, 0x0
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r9
mov [ rsp + 0x48 ], rcx
mulx rcx, r9, rdx
add r13, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], r13
mulx r13, r10, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r10, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], r15
mulx r15, rcx, [ rsi + 0x18 ]
adcx rcx, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], rcx
mulx rcx, r12, [ rsi + 0x0 ]
adox r12, r13
adox rdi, rcx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], r14
mov [ rsp + 0x70 ], rbx
mulx rbx, r14, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x78 ], rdi
mov [ rsp + 0x80 ], r12
mulx r12, rdi, [ rsi + 0x0 ]
adcx r14, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x88 ], r14
mulx r14, r15, [ rsi + 0x18 ]
adcx r15, rbx
adox r13, r11
adox rdi, rcx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r15
mulx r15, rbx, rdx
mov rdx, 0x100000001 
mov [ rsp + 0x98 ], rdi
mov [ rsp + 0xa0 ], r13
mulx r13, rdi, r9
setc r13b
clc
mov rdx, -0x1 
movzx rax, al
adcx rax, rdx
adcx rbp, r11
mov rax, 0x0 
adox r12, rax
mov rdx, [ rsi + 0x28 ]
mulx rax, r11, rdx
adcx rbx, rcx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rbx
mulx rbx, rcx, [ rsi + 0x20 ]
adcx rcx, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], rcx
mulx rcx, r15, [ rsi + 0x28 ]
adc rbx, 0x0
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
add r8b, 0xFF
adcx r15, [ rsp + 0x18 ]
adcx rbx, rcx
adcx r11, rbp
mov rdx, [ rsi + 0x28 ]
mulx rcx, r8, [ rsi + 0x18 ]
adc rax, 0x0
add r13b, 0x7F
adox r14, r8
mov rdx, 0xfffffffffffffffe 
mulx rbp, r13, rdi
mov r8, 0xffffffffffffffff 
mov rdx, rdi
mov [ rsp + 0xc8 ], rax
mulx rax, rdi, r8
mov r8, 0xffffffff00000000 
mov [ rsp + 0xd0 ], r11
mov [ rsp + 0xd8 ], rbx
mulx rbx, r11, r8
mov r8, 0xffffffff 
mov [ rsp + 0xe0 ], r15
mov [ rsp + 0xe8 ], r14
mulx r14, r15, r8
adcx r11, r14
mov rdx, 0x0 
adox rcx, rdx
adcx r13, rbx
mov rbx, rdi
adcx rbx, rbp
mov rbp, rdi
adcx rbp, rax
adcx rdi, rax
adc rax, 0x0
xor r14, r14
adox r15, r9
adox r11, r10
adox r13, [ rsp + 0x80 ]
adcx r11, [ rsp + 0x10 ]
mov rdx, 0x100000001 
mulx r9, r15, r11
adox rbx, [ rsp + 0x78 ]
adcx r13, [ rsp + 0x0 ]
mov r9, 0xffffffff00000000 
mov rdx, r15
mulx r10, r15, r9
adox rbp, [ rsp + 0xa0 ]
adox rdi, [ rsp + 0x98 ]
adcx rbx, [ rsp + 0x8 ]
adcx rbp, [ rsp + 0x70 ]
adox rax, r12
adcx rdi, [ rsp + 0x68 ]
adcx rax, [ rsp + 0x58 ]
mulx r14, r12, r8
seto r8b
movzx r8, r8b
adcx r8, [ rsp + 0x48 ]
mov r9, -0x2 
inc r9
adox r15, r14
setc r14b
clc
adcx r12, r11
mov r12, 0xfffffffffffffffe 
mulx r9, r11, r12
adcx r15, r13
adox r11, r10
adcx r11, rbx
mov r13, 0xffffffffffffffff 
mulx rbx, r10, r13
mov rdx, r10
adox rdx, r9
adcx rdx, rbp
mov rbp, r10
adox rbp, rbx
adox r10, rbx
mov r9, 0x0 
adox rbx, r9
adcx rbp, rdi
adcx r10, rax
adcx rbx, r8
movzx rdi, r14b
adc rdi, 0x0
xor rax, rax
adox r15, [ rsp - 0x8 ]
mov r9, 0x100000001 
xchg rdx, r9
mulx r14, r8, r15
adox r11, [ rsp - 0x10 ]
mov r14, 0xffffffff 
mov rdx, r8
mulx rax, r8, r14
adox r9, [ rsp - 0x18 ]
adox rbp, [ rsp + 0x20 ]
adcx r8, r15
adox r10, [ rsp + 0x38 ]
adox rbx, [ rsp + 0x30 ]
mov r8, 0xffffffff00000000 
mulx r14, r15, r8
adox rdi, [ rsp + 0x28 ]
seto r8b
mov r13, -0x2 
inc r13
adox r15, rax
mulx r13, rax, r12
adox rax, r14
adcx r15, r11
mov r11, 0xffffffffffffffff 
mulx r12, r14, r11
mov rdx, r14
adox rdx, r13
adcx rax, r9
mov r9, r14
adox r9, r12
adox r14, r12
adcx rdx, rbp
mov rbp, 0x0 
adox r12, rbp
adcx r9, r10
adcx r14, rbx
adcx r12, rdi
movzx r10, r8b
adc r10, 0x0
test al, al
adox r15, [ rsp + 0x40 ]
mov rbx, 0x100000001 
xchg rdx, rbx
mulx rdi, r8, r15
mov rdi, 0xffffffff 
mov rdx, r8
mulx r13, r8, rdi
adox rax, [ rsp + 0x50 ]
adox rbx, [ rsp + 0x60 ]
adcx r8, r15
adox r9, [ rsp + 0x88 ]
adox r14, [ rsp + 0x90 ]
adox r12, [ rsp + 0xe8 ]
adox rcx, r10
mov r8, 0xffffffff00000000 
mulx r15, r10, r8
seto dil
mov r8, -0x3 
inc r8
adox r10, r13
mov r13, 0xfffffffffffffffe 
mulx r8, rbp, r13
adox rbp, r15
adcx r10, rax
adcx rbp, rbx
mulx rbx, rax, r11
mov rdx, rax
adox rdx, r8
mov r15, rax
adox r15, rbx
adcx rdx, r9
adcx r15, r14
adox rax, rbx
adcx rax, r12
mov r9, 0x0 
adox rbx, r9
adcx rbx, rcx
movzx r14, dil
adc r14, 0x0
xor r12, r12
adox r10, [ rsp - 0x28 ]
mov r9, 0x100000001 
xchg rdx, r9
mulx rcx, rdi, r10
mov rcx, 0xffffffff 
mov rdx, rdi
mulx r8, rdi, rcx
adcx rdi, r10
adox rbp, [ rsp - 0x38 ]
adox r9, [ rsp - 0x40 ]
adox r15, [ rsp + 0xc0 ]
adox rax, [ rsp + 0xa8 ]
adox rbx, [ rsp + 0xb0 ]
adox r14, [ rsp + 0xb8 ]
mov rdi, 0xffffffff00000000 
mulx r12, r10, rdi
seto cl
mov rdi, -0x2 
inc rdi
adox r10, r8
mulx rdi, r8, r13
adox r8, r12
adcx r10, rbp
mulx r12, rbp, r11
mov rdx, rbp
adox rdx, rdi
mov rdi, rbp
adox rdi, r12
adcx r8, r9
adcx rdx, r15
adox rbp, r12
adcx rdi, rax
adcx rbp, rbx
mov r9, 0x0 
adox r12, r9
adcx r12, r14
movzx r15, cl
adc r15, 0x0
xor rax, rax
adox r10, [ rsp - 0x48 ]
mov r9, 0x100000001 
xchg rdx, r9
mulx rcx, rbx, r10
mov rcx, 0xffffffff 
mov rdx, rcx
mulx r14, rcx, rbx
adox r8, [ rsp - 0x30 ]
adox r9, [ rsp - 0x20 ]
mov rax, 0xffffffff00000000 
mov rdx, rbx
mulx r11, rbx, rax
adcx rbx, r14
adox rdi, [ rsp + 0xe0 ]
adox rbp, [ rsp + 0xd8 ]
adox r12, [ rsp + 0xd0 ]
adox r15, [ rsp + 0xc8 ]
seto r14b
mov rax, -0x2 
inc rax
adox rcx, r10
mulx r10, rcx, r13
adcx rcx, r11
adox rbx, r8
adox rcx, r9
mov r8, 0xffffffffffffffff 
mulx r11, r9, r8
mov rdx, r9
adcx rdx, r10
mov r10, r9
adcx r10, r11
adox rdx, rdi
adcx r9, r11
adox r10, rbp
adox r9, r12
mov rdi, 0x0 
adcx r11, rdi
adox r11, r15
movzx rbp, r14b
adox rbp, rdi
mov r12, 0xffffffff 
mov r14, rbx
sub r14, r12
mov r15, 0xffffffff00000000 
mov rdi, rcx
sbb rdi, r15
mov rax, rdx
sbb rax, r13
mov r12, r10
sbb r12, r8
mov r15, r9
sbb r15, r8
mov r13, r11
sbb r13, r8
mov r8, 0x0 
sbb rbp, r8
cmovc r12, r10
cmovc r15, r9
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x18 ], r12
cmovc rdi, rcx
mov [ rbp + 0x20 ], r15
mov [ rbp + 0x8 ], rdi
cmovc r13, r11
cmovc r14, rbx
mov [ rbp + 0x0 ], r14
cmovc rax, rdx
mov [ rbp + 0x28 ], r13
mov [ rbp + 0x10 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 368
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.5114
; seed 3170752172771814 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4682622 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 140017 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.029901409936569725
; number reverted permutation / tried permutation: 81662 / 95273 =85.714%
; number reverted decision / tried decision: 68178 / 94726 =71.974%
; validated in 46.257s
