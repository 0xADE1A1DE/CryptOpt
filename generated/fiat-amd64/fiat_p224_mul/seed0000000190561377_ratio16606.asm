SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mulx r8, rcx, r10
mov r8, rcx
add r8, r10
mov r8, 0xffffffff 
mov rdx, r8
mulx r9, r8, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r10
mulx r10, rbx, rcx
mov rcx, -0x2 
inc rcx
adox r13, r11
adcx rbx, r13
adox r15, r14
mov rdx, [ rax + 0x18 ]
mulx r14, r11, [ rsi + 0x0 ]
adox r11, rdi
mov rdx, 0x0 
adox r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, [ rax + 0x8 ]
inc rcx
adox rbp, r10
adox r8, r12
adcx rbp, r15
adox r9, rcx
mov rdx, [ rax + 0x18 ]
mulx r10, r12, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx rcx, r15, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox rdi, rcx
adcx r8, r11
mov rdx, [ rax + 0x10 ]
mulx rcx, r11, [ rsi + 0x8 ]
adox r11, r13
adcx r9, r14
adox r12, rcx
mov rdx, 0x0 
adox r10, rdx
mov r14, -0x3 
inc r14
adox r15, rbx
adox rdi, rbp
adox r11, r8
mov rbx, 0xffffffffffffffff 
mov rdx, rbx
mulx r13, rbx, r15
mulx rbp, r13, rbx
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx rcx, r8, rbx
adox r12, r9
setc r9b
clc
adcx r13, rcx
movzx rcx, r9b
adox rcx, r10
mov r9, rbx
seto r10b
inc r14
adox r9, r15
adox r8, rdi
mov r9, 0xffffffff 
mov rdx, r9
mulx r15, r9, rbx
adcx r9, rbp
adox r13, r11
adox r9, r12
mov rdx, [ rax + 0x0 ]
mulx r11, rdi, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r15, rdx
adox r15, rcx
movzx rbx, r10b
adox rbx, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx rcx, r10, [ rsi + 0x10 ]
add rdi, r8
inc r14
adox rbp, r11
adox r10, r12
mov rdx, 0xffffffffffffffff 
mulx r11, r8, rdi
adcx rbp, r13
mov rdx, [ rax + 0x18 ]
mulx r13, r11, [ rsi + 0x10 ]
adox r11, rcx
adox r13, r14
mov rdx, 0xffffffffffffffff 
mulx rcx, r12, r8
adcx r10, r9
adcx r11, r15
mov r9, r8
mov r15, -0x3 
inc r15
adox r9, rdi
mov r9, 0xffffffff00000000 
mov rdx, r8
mulx rdi, r8, r9
adcx r13, rbx
adox r8, rbp
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, rbp, [ rax + 0x0 ]
mov rdx, 0xffffffff 
mulx r9, r15, rbx
setc bl
clc
adcx r12, rdi
adox r12, r10
adcx r15, rcx
adox r15, r11
mov rcx, 0x0 
adcx r9, rcx
mov rdx, [ rax + 0x10 ]
mulx r11, r10, [ rsi + 0x18 ]
clc
adcx rbp, r8
adox r9, r13
mov rdx, 0xffffffffffffffff 
mulx r13, rdi, rbp
mov rdx, [ rax + 0x8 ]
mulx r8, r13, [ rsi + 0x18 ]
movzx rdx, bl
adox rdx, rcx
mov rbx, -0x3 
inc rbx
adox r13, r14
mov r14, 0xffffffff00000000 
xchg rdx, r14
mulx rbx, rcx, rdi
adox r10, r8
adcx r13, r12
adcx r10, r15
adox r11, [ rsp - 0x40 ]
mov r12, [ rsp - 0x48 ]
mov r15, 0x0 
adox r12, r15
mov r8, 0xffffffffffffffff 
mov rdx, rdi
mulx r15, rdi, r8
adcx r11, r9
adcx r12, r14
mov r9, -0x2 
inc r9
adox rdi, rbx
mov r14, rdx
setc bl
clc
adcx r14, rbp
adcx rcx, r13
adcx rdi, r10
mov r14, 0xffffffff 
mulx r13, rbp, r14
adox rbp, r15
adcx rbp, r11
mov rdx, 0x0 
adox r13, rdx
adcx r13, r12
movzx r10, bl
adc r10, 0x0
mov r15, rcx
sub r15, 0x1
mov r11, 0xffffffff00000000 
mov rbx, rdi
sbb rbx, r11
mov r12, rbp
sbb r12, r8
mov rdx, r13
sbb rdx, r14
mov r9, 0x0 
sbb r10, r9
cmovc r15, rcx
cmovc r12, rbp
cmovc rbx, rdi
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x8 ], rbx
cmovc rdx, r13
mov [ r10 + 0x0 ], r15
mov [ r10 + 0x18 ], rdx
mov [ r10 + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6606
; seed 1095693597636338 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2011792 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=78, initial num_batches=31): 132741 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06598147323381344
; number reverted permutation / tried permutation: 83004 / 94694 =87.655%
; number reverted decision / tried decision: 65413 / 95305 =68.635%
; validated in 4.089s
