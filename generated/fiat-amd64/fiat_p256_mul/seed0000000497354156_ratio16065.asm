SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
add r10, r12
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r10
mulx r10, rdi, r14
mov rdx, 0xffffffff 
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r13
mulx r13, rbp, r14
adcx r9, r11
adcx rcx, rbx
mov r11, -0x2 
inc r11
adox rbp, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, rbx, [ rax + 0x8 ]
mov rdx, 0x0 
adcx r8, rdx
clc
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rax + 0x10 ]
adcx r15, r10
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x30 ], r8
mulx r8, r10, [ rsi + 0x0 ]
adcx r10, r11
mov rdx, 0x0 
adcx r8, rdx
clc
adcx rdi, r14
adcx rbp, rbx
adox r13, rdx
adcx r13, r15
mov rdx, [ rsi + 0x8 ]
mulx rbx, rdi, [ rax + 0x0 ]
mov rdx, 0xffffffff00000001 
mulx r15, r11, r14
mov r14, -0x2 
inc r14
adox rdi, rbp
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx r14, rbp, rdi
adcx r11, r10
mov r10, 0xffffffff 
mov rdx, r10
mov [ rsp - 0x28 ], rcx
mulx rcx, r10, rdi
adcx r15, r8
setc r8b
clc
adcx r10, r14
mov r14, 0x0 
adcx rcx, r14
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x20 ], r9
mulx r9, r14, [ rsi + 0x8 ]
clc
adcx r14, rbx
adox r14, r13
mov rdx, [ rax + 0x10 ]
mulx rbx, r13, [ rsi + 0x8 ]
adcx r13, r9
adox r13, r11
mov rdx, [ rax + 0x18 ]
mulx r9, r11, [ rsi + 0x8 ]
adcx r11, rbx
mov rdx, 0x0 
adcx r9, rdx
adox r11, r15
clc
adcx rbp, rdi
adcx r10, r14
adcx rcx, r13
movzx rbp, r8b
adox rbp, r9
mov r8, 0xffffffff00000001 
mov rdx, rdi
mulx r15, rdi, r8
adcx rdi, r11
adcx r15, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbx, r14, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r13, [ rax + 0x18 ]
seto dl
adc dl, 0x0
movzx rdx, dl
adox r12, r10
adcx r14, [ rsp - 0x38 ]
xchg rdx, r12
mulx r10, r11, r8
adox r14, rcx
mov rcx, rdx
mov rdx, [ rax + 0x10 ]
mulx r8, rbp, [ rsi + 0x10 ]
adcx rbp, rbx
adox rbp, rdi
adcx r13, r8
adox r13, r15
mov rdx, 0x0 
adcx r9, rdx
movzx rdi, r12b
adox rdi, r9
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx rbx, r15, rcx
mov r12, 0xffffffff 
mov rdx, rcx
mulx r8, rcx, r12
clc
adcx rcx, rbx
mov r9, 0x0 
adcx r8, r9
clc
adcx r15, rdx
adcx rcx, r14
seto r15b
mov rdx, -0x3 
inc rdx
adox rcx, [ rsp - 0x40 ]
adcx r8, rbp
mov r14, 0xffffffffffffffff 
mov rdx, r14
mulx rbp, r14, rcx
adox r8, [ rsp - 0x48 ]
adcx r11, r13
adcx r10, rdi
adox r11, [ rsp - 0x20 ]
adox r10, [ rsp - 0x28 ]
movzx r13, r15b
adcx r13, r9
mov rdx, rcx
mulx r15, rcx, r12
adox r13, [ rsp - 0x30 ]
clc
adcx rcx, rbp
adcx r15, r9
clc
adcx r14, rdx
adcx rcx, r8
adcx r15, r11
mov r14, 0xffffffff00000001 
mulx rbx, rdi, r14
adcx rdi, r10
adcx rbx, r13
seto dl
setc bpl
mov r8, 0xffffffffffffffff 
mov r11, rcx
sub r11, r8
mov r10, r15
sbb r10, r12
mov r13, rdi
sbb r13, r9
mov r9, rbx
sbb r9, r14
movzx r12, bpl
movzx rdx, dl
lea r12, [ r12 + rdx ]
mov rdx, 0x0 
sbb r12, rdx
cmovc r11, rcx
cmovc r10, r15
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x0 ], r11
cmovc r13, rdi
mov [ r12 + 0x8 ], r10
cmovc r9, rbx
mov [ r12 + 0x10 ], r13
mov [ r12 + 0x18 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6065
; seed 0236994927897268 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1917732 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 129636 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06759860084725082
; number reverted permutation / tried permutation: 83581 / 94941 =88.035%
; number reverted decision / tried decision: 62702 / 95058 =65.962%
; validated in 2.28s
