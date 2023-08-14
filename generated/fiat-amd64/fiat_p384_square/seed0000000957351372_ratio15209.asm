SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 352
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, rbp
adcx r14, r13
adcx r11, r15
mov rdx, [ rsi + 0x10 ]
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], rax
mulx rax, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r14
mulx r14, r11, rdx
adox r15, r10
adox r11, rax
adox r8, r14
mov rdx, [ rsi + 0x28 ]
mulx rax, r10, [ rsi + 0x18 ]
adox r10, r9
mov rdx, [ rsi + 0x28 ]
mulx r14, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r8
mulx r8, r10, [ rsi + 0x10 ]
mov rdx, 0x0 
adox rax, rdx
adcx rbp, rcx
adcx r10, r13
adcx r9, r8
mov rdx, [ rsi + 0x28 ]
mulx r13, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], rax
mulx rax, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r8
mov [ rsp - 0x8 ], r11
mulx r11, r8, [ rsi + 0x28 ]
adc r14, 0x0
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], r15
mov [ rsp + 0x8 ], r14
mulx r14, r15, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, rax
adox rcx, r11
mov rdx, [ rsi + 0x20 ]
mulx r11, rax, [ rsi + 0x0 ]
adox r15, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], r15
mulx r15, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], r8
mulx r8, rcx, [ rsi + 0x28 ]
adcx r13, r11
adcx rdi, r15
adox rcx, r14
mov rdx, [ rsi + 0x20 ]
mulx r11, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x28 ], rcx
mulx rcx, r15, rdx
adcx r14, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x30 ], r14
mulx r14, rbx, rdx
adcx r15, r11
adox rbx, r8
mov rdx, [ rsi + 0x8 ]
mulx r11, r8, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], rbx
mov [ rsp + 0x40 ], r15
mulx r15, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x48 ], rdi
mov [ rsp + 0x50 ], r13
mulx r13, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x58 ], rax
mov [ rsp + 0x60 ], r9
mulx r9, rax, [ rsi + 0x0 ]
adcx rbx, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x68 ], rbx
mulx rbx, rcx, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r15, rdx
adox r14, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], r14
mov [ rsp + 0x78 ], r15
mulx r15, r14, rdx
add r8, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], r10
mulx r10, r9, [ rsi + 0x10 ]
adcx rcx, r11
mov rdx, -0x2 
inc rdx
adox rdi, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], rbp
mov [ rsp + 0x90 ], r12
mulx r12, rbp, [ rsi + 0x28 ]
adox r9, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], rcx
mulx rcx, r13, [ rsi + 0x18 ]
adox r13, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r8
mulx r8, r10, [ rsi + 0x0 ]
adox r10, rcx
adox rbp, r8
mov rdx, 0x100000001 
mulx r8, rcx, r14
mov r8, 0x0 
adox r12, r8
adcx r11, rbx
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, [ rsi + 0x8 ]
adcx rbx, r15
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rbx
mulx rbx, r15, [ rsi + 0x8 ]
adcx r15, r8
adc rbx, 0x0
mov rdx, 0xffffffff 
mov [ rsp + 0xb0 ], rbx
mulx rbx, r8, rcx
xor rdx, rdx
adox r8, r14
mov r8, 0xffffffff00000000 
mov rdx, rcx
mulx r14, rcx, r8
adcx rcx, rbx
mov rbx, 0xfffffffffffffffe 
mov [ rsp + 0xb8 ], r15
mulx r15, r8, rbx
adcx r8, r14
adox rcx, rdi
adox r8, r9
mov rdi, 0xffffffffffffffff 
mulx r14, r9, rdi
mov rdx, r9
adcx rdx, r15
adox rdx, r13
mov r13, r9
adcx r13, r14
adcx r9, r14
adox r13, r10
adox r9, rbp
mov r10, 0x0 
adcx r14, r10
clc
adcx rax, rcx
adcx r8, [ rsp + 0xa0 ]
adox r14, r12
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r15, r12, rax
mov r15, 0xffffffff00000000 
mov rdx, r12
mulx rcx, r12, r15
mulx rbx, r10, rdi
adcx rbp, [ rsp + 0x98 ]
adcx r11, r13
adcx r9, [ rsp + 0xa8 ]
mov r13, 0xffffffff 
mulx r15, rdi, r13
mov r13, 0xfffffffffffffffe 
mov [ rsp + 0xc0 ], r9
mov [ rsp + 0xc8 ], r11
mulx r11, r9, r13
seto dl
mov r13, -0x2 
inc r13
adox r12, r15
adox r9, rcx
mov rcx, r10
adox rcx, r11
mov r15, r10
adox r15, rbx
adox r10, rbx
seto r11b
inc r13
adox rdi, rax
adcx r14, [ rsp + 0xb8 ]
movzx rdi, r11b
lea rdi, [ rdi + rbx ]
movzx rdx, dl
movzx rax, dl
adcx rax, [ rsp + 0xb0 ]
adox r12, r8
setc r8b
clc
adcx r12, [ rsp + 0x90 ]
adox r9, rbp
adcx r9, [ rsp - 0x30 ]
mov rdx, 0x100000001 
mulx rbp, rbx, r12
mov rbp, 0xffffffff00000000 
mov rdx, rbp
mulx r11, rbp, rbx
adox rcx, [ rsp + 0xc8 ]
adcx rcx, [ rsp - 0x38 ]
adox r15, [ rsp + 0xc0 ]
adox r10, r14
adox rdi, rax
adcx r15, [ rsp + 0x88 ]
adcx r10, [ rsp + 0x80 ]
adcx rdi, [ rsp + 0x60 ]
movzx r14, r8b
adox r14, r13
mov r8, 0xffffffff 
mov rdx, rbx
mulx rax, rbx, r8
adcx r14, [ rsp + 0x8 ]
mov r8, -0x3 
inc r8
adox rbp, rax
setc al
clc
adcx rbx, r12
mov rbx, 0xfffffffffffffffe 
mulx r13, r12, rbx
adox r12, r11
mov r11, 0xffffffffffffffff 
mulx rbx, r8, r11
mov rdx, r8
adox rdx, r13
adcx rbp, r9
adcx r12, rcx
mov r9, r8
adox r9, rbx
adcx rdx, r15
adcx r9, r10
adox r8, rbx
mov rcx, 0x0 
adox rbx, rcx
adcx r8, rdi
adcx rbx, r14
movzx r15, al
adc r15, 0x0
test al, al
adox rbp, [ rsp - 0x48 ]
adox r12, [ rsp - 0x40 ]
mov r10, 0x100000001 
xchg rdx, r10
mulx rax, rdi, rbp
mov rdx, rdi
mulx rdi, rax, r11
adox r10, [ rsp + 0x0 ]
mov r14, 0xffffffff 
mulx rcx, r13, r14
mov r11, 0xffffffff00000000 
mov [ rsp + 0xd0 ], r15
mulx r15, r14, r11
adcx r14, rcx
mov rcx, 0xfffffffffffffffe 
mov [ rsp + 0xd8 ], r10
mulx r10, r11, rcx
adcx r11, r15
mov rdx, rax
adcx rdx, r10
adox r9, [ rsp - 0x8 ]
mov r15, rax
adcx r15, rdi
adcx rax, rdi
mov r10, 0x0 
adcx rdi, r10
clc
adcx r13, rbp
adcx r14, r12
adox r8, [ rsp - 0x20 ]
adox rbx, [ rsp - 0x28 ]
adcx r11, [ rsp + 0xd8 ]
adcx rdx, r9
adcx r15, r8
mov r13, [ rsp + 0xd0 ]
adox r13, [ rsp - 0x18 ]
adcx rax, rbx
adcx rdi, r13
setc bpl
clc
adcx r14, [ rsp + 0x58 ]
mov r12, 0x100000001 
xchg rdx, r14
mulx r8, r9, r12
mov r8, 0xffffffff 
xchg rdx, r9
mulx r13, rbx, r8
movzx r10, bpl
mov rcx, 0x0 
adox r10, rcx
mov rbp, -0x3 
inc rbp
adox rbx, r9
adcx r11, [ rsp + 0x50 ]
adcx r14, [ rsp + 0x48 ]
mov rbx, 0xffffffff00000000 
mulx rcx, r9, rbx
adcx r15, [ rsp + 0x30 ]
adcx rax, [ rsp + 0x40 ]
adcx rdi, [ rsp + 0x68 ]
mov rbp, 0xfffffffffffffffe 
mulx r8, rbx, rbp
adcx r10, [ rsp + 0x78 ]
setc bpl
clc
adcx r9, r13
adcx rbx, rcx
adox r9, r11
mov r13, 0xffffffffffffffff 
mulx rcx, r11, r13
mov rdx, r11
adcx rdx, r8
mov r8, r11
adcx r8, rcx
adcx r11, rcx
adox rbx, r14
adox rdx, r15
adox r8, rax
adox r11, rdi
mov r14, 0x0 
adcx rcx, r14
adox rcx, r10
clc
adcx r9, [ rsp - 0x10 ]
xchg rdx, r12
mulx rax, r15, r9
movzx rax, bpl
adox rax, r14
adcx rbx, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x18 ]
mov rdi, 0xffffffff 
mov rdx, rdi
mulx rbp, rdi, r15
mov r10, -0x3 
inc r10
adox rdi, r9
adcx r8, [ rsp + 0x10 ]
adcx r11, [ rsp + 0x28 ]
adcx rcx, [ rsp + 0x38 ]
mov rdi, 0xffffffff00000000 
mov rdx, r15
mulx r9, r15, rdi
adcx rax, [ rsp + 0x70 ]
setc r10b
clc
adcx r15, rbp
adox r15, rbx
mov rbx, 0xfffffffffffffffe 
mulx r14, rbp, rbx
adcx rbp, r9
adox rbp, r12
mulx r9, r12, r13
mov rdx, r12
adcx rdx, r14
mov r14, r12
adcx r14, r9
adcx r12, r9
adox rdx, r8
adox r14, r11
adox r12, rcx
mov r8, 0x0 
adcx r9, r8
adox r9, rax
movzx r11, r10b
adox r11, r8
mov rcx, 0xffffffff 
mov r10, r15
sub r10, rcx
mov rax, rbp
sbb rax, rdi
mov r8, rdx
sbb r8, rbx
mov rbx, r14
sbb rbx, r13
mov rdi, r12
sbb rdi, r13
mov rcx, r9
sbb rcx, r13
mov r13, 0x0 
sbb r11, r13
cmovc rax, rbp
cmovc rdi, r12
cmovc rcx, r9
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x28 ], rcx
mov [ r11 + 0x8 ], rax
cmovc r8, rdx
mov [ r11 + 0x10 ], r8
cmovc r10, r15
cmovc rbx, r14
mov [ r11 + 0x0 ], r10
mov [ r11 + 0x18 ], rbx
mov [ r11 + 0x20 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 352
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.5209
; seed 2729961057338276 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6301629 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 179154 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028429791725282462
; number reverted permutation / tried permutation: 81057 / 95150 =85.189%
; number reverted decision / tried decision: 71268 / 94849 =75.138%
; validated in 56.683s
