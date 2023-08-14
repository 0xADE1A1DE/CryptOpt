SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
mov [ rsp - 0x78 ], rbp
mov rbp, 0xffffffff00000001 
mov rdx, rcx
mov [ rsp - 0x70 ], r12
mulx r12, rcx, rbp
mov [ rsp - 0x68 ], r13
mov r13, 0xffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
xor r13, r13
adox r9, rdx
adcx r14, rbx
mov rdx, [ rax + 0x10 ]
mulx rbx, r9, [ rsi + 0x0 ]
adcx r15, r13
clc
adcx r10, r8
adcx r9, r11
mov rdx, [ rsi + 0x0 ]
mulx r8, r11, [ rax + 0x18 ]
adcx r11, rbx
adox r14, r10
adox r15, r9
adcx r8, r13
adox rcx, r11
mov rdx, [ rax + 0x0 ]
mulx r10, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx rbp, r13, [ rsi + 0x8 ]
clc
adcx r9, r10
adcx r13, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x18 ]
adcx r10, rbp
mov rdx, 0x0 
adcx r11, rdx
clc
adcx rbx, r14
adcx r9, r15
adcx r13, rcx
adox r12, r8
adcx r10, r12
mov r14, 0xffffffffffffffff 
mov rdx, rbx
mulx r15, rbx, r14
setc r8b
clc
adcx rbx, rdx
mov rbx, 0xffffffff 
mulx rbp, rcx, rbx
movzx r12, r8b
adox r12, r11
seto r11b
mov r8, -0x2 
inc r8
adox rcx, r15
mov r15, 0x0 
adox rbp, r15
adcx rcx, r9
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rax + 0x0 ]
mov rdx, -0x2 
inc rdx
adox r15, rcx
adcx rbp, r13
mov rdx, [ rsi + 0x10 ]
mulx rcx, r13, [ rax + 0x8 ]
mov rdx, r15
mulx rbx, r15, r14
mov r14, 0xffffffff00000001 
xchg rdx, r14
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, r9
adcx rdi, r10
mulx r10, r9, r14
adcx r15, r12
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r10
mulx r10, r12, [ rsi + 0x10 ]
movzx rdx, r11b
mov [ rsp - 0x38 ], r9
mov r9, 0x0 
adcx rdx, r9
clc
adcx r13, r8
adcx r12, rcx
adox r13, rbp
mov r11, rdx
mov rdx, [ rax + 0x18 ]
mulx rbp, r8, [ rsi + 0x10 ]
adcx r8, r10
adox r12, rdi
adox r8, r15
adcx rbp, r9
mov rdx, 0xffffffff 
mulx rdi, rcx, r14
clc
adcx rcx, rbx
adox rbp, r11
adcx rdi, r9
mov rdx, [ rax + 0x8 ]
mulx r15, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x0 ]
clc
adcx rbx, r11
seto dl
mov r11, -0x3 
inc r11
adox r14, [ rsp - 0x48 ]
adox rcx, r13
adox rdi, r12
adox r8, [ rsp - 0x38 ]
mov r14b, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r9, [ rax + 0x18 ]
adcx r13, r15
adcx r9, r12
adox rbp, [ rsp - 0x40 ]
mov rdx, 0x0 
adcx r11, rdx
movzx r15, r14b
adox r15, rdx
xor r14, r14
adox r10, rcx
adox rbx, rdi
mov rdx, 0xffffffffffffffff 
mulx rdi, rcx, r10
mov r12, 0xffffffff 
mov rdx, r10
mulx r14, r10, r12
adcx r10, rdi
mov rdi, 0x0 
adcx r14, rdi
clc
adcx rcx, rdx
adox r13, r8
adox r9, rbp
adcx r10, rbx
adcx r14, r13
mov rcx, 0xffffffff00000001 
mulx rbp, r8, rcx
adcx r8, r9
adox r11, r15
adcx rbp, r11
seto r15b
adc r15b, 0x0
movzx r15, r15b
mov rdx, 0xffffffffffffffff 
mov rbx, r10
sub rbx, rdx
mov r13, r14
sbb r13, r12
mov r9, r8
sbb r9, rdi
mov r11, rbp
sbb r11, rcx
movzx r15, r15b
sbb r15, rdi
cmovc r13, r14
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x8 ], r13
cmovc rbx, r10
cmovc r11, rbp
mov [ r15 + 0x18 ], r11
cmovc r9, r8
mov [ r15 + 0x0 ], rbx
mov [ r15 + 0x10 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.7100
; seed 1884201197491185 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1329464 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=102, initial num_batches=31): 69729 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.052448956872844996
; number reverted permutation / tried permutation: 80724 / 95284 =84.719%
; number reverted decision / tried decision: 65761 / 94715 =69.430%
; validated in 1.497s
