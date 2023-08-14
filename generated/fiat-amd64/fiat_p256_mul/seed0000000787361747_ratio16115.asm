SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r10
xor rdx, rdx
adox r15, r12
adox rdi, rdx
adcx r13, r11
mov rdx, [ rax + 0x0 ]
mulx r12, r11, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r9, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r9
mulx r9, r12, [ rax + 0x18 ]
adox rcx, rbx
adox r12, r8
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ rax + 0x10 ]
adcx r8, r14
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r9
mulx r9, r14, [ rsi + 0x0 ]
adcx r14, rbx
mov rdx, 0x0 
adcx r9, rdx
mov rbx, 0xffffffff00000001 
mov rdx, rbx
mov [ rsp - 0x38 ], r12
mulx r12, rbx, r10
clc
adcx rbp, r10
adcx r15, r13
seto bpl
mov r10, -0x2 
inc r10
adox r11, r15
adcx rdi, r8
mov r13, 0xffffffff 
mov rdx, r11
mulx r8, r11, r13
adox rdi, [ rsp - 0x48 ]
adcx rbx, r14
adox rcx, rbx
mov r14, 0xffffffffffffffff 
mulx rbx, r15, r14
adcx r12, r9
setc r9b
clc
adcx r11, rbx
mov rbx, 0x0 
adcx r8, rbx
clc
adcx r15, rdx
adcx r11, rdi
adcx r8, rcx
adox r12, [ rsp - 0x38 ]
mov r15, 0xffffffff00000001 
mulx rcx, rdi, r15
mov rdx, [ rax + 0x0 ]
mulx r10, rbx, [ rsi + 0x10 ]
adcx rdi, r12
movzx rdx, bpl
mov r12, [ rsp - 0x40 ]
lea rdx, [ rdx + r12 ]
movzx r12, r9b
adox r12, rdx
adcx rcx, r12
seto bpl
adc bpl, 0x0
movzx rbp, bpl
mov rdx, [ rax + 0x10 ]
mulx r12, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r13, r14, [ rax + 0x8 ]
adox rbx, r11
adcx r14, r10
adox r14, r8
adcx r9, r13
mov rdx, 0xffffffff 
mulx r8, r11, rbx
adox r9, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, [ rax + 0x18 ]
adcx r10, r12
mov rdx, 0xffffffffffffffff 
mulx r13, r12, rbx
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r11, r13
adcx r8, rdx
adox r10, rcx
clc
adcx r12, rbx
adcx r11, r14
movzx r12, bpl
adox r12, rdi
adcx r8, r9
mov rdx, rbx
mulx rcx, rbx, r15
adcx rbx, r10
adcx rcx, r12
seto bpl
adc bpl, 0x0
movzx rbp, bpl
mov rdx, [ rax + 0x10 ]
mulx r9, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mulx rdi, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ rax + 0x8 ]
adox r13, r11
adcx r10, rdi
mov rdx, [ rax + 0x18 ]
mulx rdi, r11, [ rsi + 0x18 ]
adcx r14, r12
adcx r11, r9
mov rdx, 0x0 
adcx rdi, rdx
adox r10, r8
adox r14, rbx
adox r11, rcx
movzx r8, bpl
adox r8, rdi
mov rbx, 0xffffffffffffffff 
mov rdx, r13
mulx rcx, r13, rbx
mov rbp, 0xffffffff 
mulx r12, r9, rbp
clc
adcx r9, rcx
mov rdi, 0x0 
adcx r12, rdi
clc
adcx r13, rdx
adcx r9, r10
mulx r10, r13, r15
adcx r12, r14
adcx r13, r11
adcx r10, r8
seto dl
adc dl, 0x0
movzx rdx, dl
mov r14, r9
sub r14, rbx
mov r11, r12
sbb r11, rbp
mov r8, r13
sbb r8, rdi
mov rcx, r10
sbb rcx, r15
movzx rdx, dl
sbb rdx, rdi
cmovc r8, r13
cmovc r11, r12
cmovc rcx, r10
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], rcx
cmovc r14, r9
mov [ rdx + 0x0 ], r14
mov [ rdx + 0x10 ], r8
mov [ rdx + 0x8 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.6115
; seed 2743428119523311 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1892107 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=78, initial num_batches=31): 126796 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06701312346500489
; number reverted permutation / tried permutation: 72594 / 95162 =76.285%
; number reverted decision / tried decision: 58939 / 94837 =62.148%
; validated in 3.387s
