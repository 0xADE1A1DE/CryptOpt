SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbp
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, rbp
mov [ rsp - 0x50 ], rdi
xor rdi, rdi
adox rdx, r10
mov rdx, [ rsi + 0x18 ]
mulx rdi, r10, [ rax + 0x8 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r10
mulx r10, rdi, rbp
mov rdx, 0xffffffff 
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rcx
mulx rcx, r8, rbp
adcx r12, r10
adcx r8, r13
mov rbp, 0x0 
adcx rcx, rbp
mov rdx, [ rsi + 0x8 ]
mulx r10, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], rcx
mulx rcx, rbp, [ rsi + 0x8 ]
clc
adcx r9, r10
adcx rbp, rbx
mov rdx, [ rsi + 0x8 ]
mulx r10, rbx, [ rax + 0x18 ]
adcx rbx, rcx
mov rdx, 0x0 
adcx r10, rdx
clc
adcx r14, r11
adox rdi, r14
adcx r15, [ rsp - 0x30 ]
adox r12, r15
mov rdx, [ rax + 0x18 ]
mulx rcx, r11, [ rsi + 0x0 ]
adcx r11, [ rsp - 0x38 ]
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r13, rdi
adox r8, r11
adcx r9, r12
adcx rbp, r8
mov r14, 0xffffffffffffffff 
mov rdx, r13
mulx rdi, r13, r14
xchg rdx, r14
mulx r15, rdi, r13
adox rcx, [ rsp - 0x28 ]
adcx rbx, rcx
mov r12, r13
setc r11b
clc
adcx r12, r14
mov r12, 0xffffffff00000000 
mov rdx, r12
mulx r14, r12, r13
movzx r8, r11b
adox r8, r10
seto r10b
mov rcx, -0x2 
inc rcx
adox rdi, r14
mov r11, 0xffffffff 
mov rdx, r13
mulx r14, r13, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rax + 0x10 ]
adcx r12, r9
adox r13, r15
adcx rdi, rbp
mov rdx, 0x0 
adox r14, rdx
mov rdx, [ rax + 0x0 ]
mulx rbp, r9, [ rsi + 0x10 ]
adcx r13, rbx
mov rdx, -0x2 
inc rdx
adox r9, r12
mov rdx, [ rsi + 0x10 ]
mulx rbx, r15, [ rax + 0x8 ]
adcx r14, r8
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, [ rax + 0x18 ]
seto dl
mov [ rsp - 0x20 ], r14
mov r14, -0x2 
inc r14
adox r15, rbp
adox rcx, rbx
movzx rbp, r10b
mov rbx, 0x0 
adcx rbp, rbx
adox r8, r11
mov r10, 0xffffffffffffffff 
xchg rdx, r10
mulx rbx, r11, r9
clc
movzx r10, r10b
adcx r10, r14
adcx rdi, r15
mov rbx, 0xffffffff00000000 
mov rdx, rbx
mulx r10, rbx, r11
adcx rcx, r13
mov r13, 0x0 
adox r12, r13
adcx r8, [ rsp - 0x20 ]
adcx r12, rbp
mov r15, r11
mov rbp, -0x3 
inc rbp
adox r15, r9
adox rbx, rdi
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r9, r15, r11
setc dil
clc
adcx r15, r10
adox r15, rcx
mov r10, 0xffffffff 
mov rdx, r10
mulx rcx, r10, r11
adcx r10, r9
adox r10, r8
adcx rcx, r13
adox rcx, r12
mov rdx, [ rsi + 0x18 ]
mulx r8, r11, [ rax + 0x0 ]
clc
adcx r11, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r12, [ rax + 0x10 ]
mov rdx, 0xffffffffffffffff 
mulx r13, r9, r11
mov rdx, [ rsi + 0x18 ]
mulx rbp, r13, [ rax + 0x18 ]
movzx rdx, dil
mov r14, 0x0 
adox rdx, r14
mov rdi, -0x3 
inc rdi
adox r8, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
adox r13, rbx
adox rbp, r14
adcx r8, r15
mov r15, 0xffffffff00000000 
xchg rdx, r15
mulx r14, rbx, r9
adcx r12, r10
adcx r13, rcx
mov r10, 0xffffffffffffffff 
mov rdx, r9
mulx rcx, r9, r10
inc rdi
adox r9, r14
adcx rbp, r15
mov r15, 0xffffffff 
mulx rdi, r14, r15
adox r14, rcx
setc cl
clc
adcx rdx, r11
adcx rbx, r8
adcx r9, r12
adcx r14, r13
mov rdx, 0x0 
adox rdi, rdx
adcx rdi, rbp
movzx r11, cl
adc r11, 0x0
mov r8, rbx
sub r8, 0x1
mov r12, 0xffffffff00000000 
mov r13, r9
sbb r13, r12
mov rcx, r14
sbb rcx, r10
mov rbp, rdi
sbb rbp, r15
sbb r11, rdx
cmovc rcx, r14
cmovc r13, r9
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x10 ], rcx
mov [ r11 + 0x8 ], r13
cmovc rbp, rdi
cmovc r8, rbx
mov [ r11 + 0x18 ], rbp
mov [ r11 + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.5889
; seed 1963826703971146 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2092149 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=78, initial num_batches=31): 140035 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06693356926299227
; number reverted permutation / tried permutation: 83380 / 94870 =87.889%
; number reverted decision / tried decision: 65331 / 95129 =68.676%
; validated in 3.853s
