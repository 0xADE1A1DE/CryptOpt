SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r9
test al, al
adox r15, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r10
mulx r10, r12, [ rax + 0x8 ]
mov rdx, 0x0 
adox rdi, rdx
adcx rcx, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r10
mulx r10, rbx, [ rax + 0x10 ]
adcx rbx, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r12
mulx r12, r8, [ rax + 0x18 ]
mov rdx, -0x2 
inc rdx
adox rbp, r9
adcx r8, r10
adox r15, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, rbp, [ rsi + 0x10 ]
adox rdi, rbx
mov rdx, 0xffffffff00000001 
mulx rbx, r10, r9
mov r9, 0x0 
adcx r12, r9
adox r10, r8
clc
adcx r13, r11
adcx rbp, r14
mov rdx, [ rax + 0x18 ]
mulx r14, r11, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
adcx r11, rcx
adox rbx, r12
setc dl
clc
adcx r8, r15
mov r15, 0xffffffffffffffff 
xchg rdx, r8
mulx r12, rcx, r15
mov r15, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x30 ], r11
mov [ rsp - 0x28 ], rbp
mulx rbp, r11, [ rsi + 0x8 ]
movzx rdx, r8b
lea rdx, [ rdx + r14 ]
seto r14b
mov r8, -0x2 
inc r8
adox r11, r9
adcx r11, rdi
mov rdi, rdx
mov rdx, [ rax + 0x10 ]
mulx r8, r9, [ rsi + 0x8 ]
adox r9, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], rdi
mulx rdi, rbp, [ rax + 0x18 ]
adox rbp, r8
adcx r9, r10
mov rdx, 0xffffffff 
mulx r8, r10, r15
mov rdx, 0x0 
adox rdi, rdx
mov [ rsp - 0x18 ], r13
mov r13, -0x3 
inc r13
adox r10, r12
adox r8, rdx
mov r12, -0x3 
inc r12
adox rcx, r15
adcx rbp, rbx
movzx rcx, r14b
adcx rcx, rdi
adox r10, r11
adox r8, r9
setc r12b
clc
adcx r10, [ rsp - 0x48 ]
mov r14, 0xffffffff00000001 
mov rdx, r15
mulx rbx, r15, r14
adox r15, rbp
mov rdx, r14
mulx r11, r14, r10
adcx r8, [ rsp - 0x18 ]
adox rbx, rcx
adcx r15, [ rsp - 0x28 ]
movzx r9, r12b
mov rdi, 0x0 
adox r9, rdi
adcx rbx, [ rsp - 0x30 ]
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx r12, rbp, r10
mov rcx, 0xffffffff 
mov rdx, rcx
mulx rdi, rcx, r10
inc r13
adox rcx, r12
mov r12, 0x0 
adox rdi, r12
mov rdx, [ rax + 0x18 ]
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox rbp, r10
adox rcx, r8
mov rdx, [ rax + 0x0 ]
mulx r10, rbp, [ rsi + 0x18 ]
adcx r9, [ rsp - 0x20 ]
adox rdi, r15
adox r14, rbx
setc dl
clc
adcx r10, [ rsp - 0x38 ]
adox r11, r9
movzx r8, dl
mov r15, 0x0 
adox r8, r15
mov rdx, [ rax + 0x10 ]
mulx r9, rbx, [ rsi + 0x18 ]
adcx rbx, [ rsp - 0x40 ]
adcx r12, r9
mov rdx, -0x3 
inc rdx
adox rbp, rcx
adcx r13, r15
adox r10, rdi
mov rcx, 0xffffffffffffffff 
mov rdx, rbp
mulx rdi, rbp, rcx
mov r9, 0xffffffff 
mulx rcx, r15, r9
adox rbx, r14
adox r12, r11
clc
adcx r15, rdi
adox r13, r8
seto r14b
mov r11, -0x2 
inc r11
adox rbp, rdx
mov rbp, 0x0 
adcx rcx, rbp
mov r8, 0xffffffff00000001 
mulx rbp, rdi, r8
adox r15, r10
adox rcx, rbx
adox rdi, r12
adox rbp, r13
movzx rdx, r14b
mov r10, 0x0 
adox rdx, r10
mov rbx, 0xffffffffffffffff 
mov r12, r15
sub r12, rbx
mov r14, rcx
sbb r14, r9
mov r13, rdi
sbb r13, r10
mov r10, rbp
sbb r10, r8
mov r11, 0x0 
sbb rdx, r11
cmovc r14, rcx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r14
cmovc r12, r15
cmovc r13, rdi
mov [ rdx + 0x10 ], r13
cmovc r10, rbp
mov [ rdx + 0x18 ], r10
mov [ rdx + 0x0 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.5867
; seed 4423873240485146 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1994161 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 137674 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06903855807028621
; number reverted permutation / tried permutation: 83392 / 95161 =87.633%
; number reverted decision / tried decision: 61964 / 94838 =65.337%
; validated in 2.363s
