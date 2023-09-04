SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x18 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
test al, al
adox r9, r14
adox r15, rbx
adox r10, rdi
mov rdx, 0x0 
adox r11, rdx
mov rbx, 0xffffffff 
mov rdx, r13
mulx r14, r13, rbx
mov rdi, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], r11
mulx r11, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], rbx
mulx rbx, r10, [ rax + 0x10 ]
adcx rbp, r11
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x30 ], rbp
mulx rbp, r11, rdi
mov rdx, -0x2 
inc rdx
adox r13, rbp
adcx r10, r12
adcx rcx, rbx
mov r12, 0x0 
adox r14, r12
adc r8, 0x0
mov rbx, 0xffffffff00000001 
mov rdx, rdi
mulx rbp, rdi, rbx
test al, al
adox r11, rdx
adox r13, r9
adox r14, r15
adcx r13, [ rsp - 0x38 ]
adcx r14, [ rsp - 0x30 ]
adox rdi, [ rsp - 0x40 ]
adcx r10, rdi
adox rbp, [ rsp - 0x48 ]
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx r9, r11, r13
adcx rcx, rbp
mov r15, 0xffffffff 
mov rdx, r13
mulx rdi, r13, r15
seto bpl
movzx rbp, bpl
adcx rbp, r8
mov r8, -0x3 
inc r8
adox r13, r9
adox rdi, r12
mov r9, -0x3 
inc r9
adox r11, rdx
adox r13, r14
mulx r9, r11, rbx
adox rdi, r10
adox r11, rcx
adox r9, rbp
mov rdx, [ rax + 0x8 ]
mulx r10, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx rbp, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, r12, [ rax + 0x10 ]
setc dl
clc
adcx r14, rbp
movzx rbp, dl
mov rbx, 0x0 
adox rbp, rbx
mov rdx, -0x3 
inc rdx
adox rcx, r13
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, [ rax + 0x18 ]
adox r14, rdi
adcx r12, r10
mov rdx, r15
mulx rdi, r15, rcx
adcx r13, r8
adox r12, r11
mov r11, 0x0 
adcx rbx, r11
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x28 ], r10
mulx r10, r11, rcx
clc
adcx r15, r10
adox r13, r9
adox rbx, rbp
mov rdx, [ rsi + 0x18 ]
mulx rbp, r9, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x20 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r10, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r10
mulx r10, r8, [ rax + 0x10 ]
adcx r8, rbx
adcx r9, r10
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r11, rcx
adcx r15, r14
adcx rdi, r12
seto r11b
mov r14, -0x3 
inc r14
adox r15, [ rsp - 0x28 ]
mov r12, 0xffffffffffffffff 
mov rdx, r15
mulx rbx, r15, r12
mov r10, 0xffffffff00000001 
xchg rdx, rcx
mulx r12, r14, r10
adcx r14, r13
adcx r12, [ rsp - 0x20 ]
movzx rdx, r11b
mov r13, 0x0 
adcx rdx, r13
adox rdi, [ rsp - 0x18 ]
adox r8, r14
adox r9, r12
mov r11, 0xffffffff 
xchg rdx, rcx
mulx r12, r14, r11
clc
adcx r14, rbx
adcx r12, r13
clc
adcx r15, rdx
adox rbp, rcx
adcx r14, rdi
adcx r12, r8
mulx rbx, r15, r10
adcx r15, r9
adcx rbx, rbp
seto dl
setc cl
mov rdi, 0xffffffffffffffff 
mov r8, r14
sub r8, rdi
movzx r9, cl
movzx rdx, dl
lea r9, [ r9 + rdx ]
mov rdx, r12
sbb rdx, r11
mov rbp, r15
sbb rbp, r13
mov rcx, rbx
sbb rcx, r10
sbb r9, r13
cmovc r8, r14
cmovc rbp, r15
cmovc rcx, rbx
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x0 ], r8
cmovc rdx, r12
mov [ r9 + 0x8 ], rdx
mov [ r9 + 0x18 ], rcx
mov [ r9 + 0x10 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.7247
; seed 2677094849528382 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1367067 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=100, initial num_batches=31): 69613 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.050921425211785526
; number reverted permutation / tried permutation: 79577 / 95025 =83.743%
; number reverted decision / tried decision: 65744 / 94974 =69.223%
; validated in 1.475s
