SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov [ rsp - 0x68 ], r13
mov r13, 0xffffffff 
mov rdx, r9
mov [ rsp - 0x60 ], r14
mulx r14, r9, r13
mov [ rsp - 0x58 ], r15
xor r15, r15
adox rbp, rdx
adcx r9, r12
adcx r14, r15
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, r12, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, [ rax + 0x8 ]
clc
adcx r13, rbx
adox r9, r13
adcx r10, rdi
adcx r12, r11
mov rdx, 0xffffffff00000001 
mulx rbx, r11, rbp
mov rbp, 0x0 
adcx r15, rbp
adox r14, r10
adox r11, r12
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, [ rax + 0x8 ]
adox rbx, r15
clc
adcx rdi, r8
mov rdx, [ rsi + 0x8 ]
mulx r10, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx r15, r12, [ rsi + 0x8 ]
adcx r8, r13
adcx r12, r10
adcx r15, rbp
clc
adcx rcx, r9
mov rdx, 0xffffffff00000001 
mulx r13, r9, rcx
mov r10, 0xffffffff 
mov rdx, rcx
mulx rbp, rcx, r10
adcx rdi, r14
adcx r8, r11
mov r14, 0xffffffffffffffff 
mulx r10, r11, r14
adcx r12, rbx
setc bl
clc
adcx rcx, r10
mov r10, 0x0 
adcx rbp, r10
clc
adcx r11, rdx
adcx rcx, rdi
adcx rbp, r8
adcx r9, r12
mov rdx, [ rsi + 0x10 ]
mulx rdi, r11, [ rax + 0x0 ]
movzx rdx, bl
adox rdx, r15
adcx r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rax + 0x8 ]
seto dl
adc dl, 0x0
movzx rdx, dl
adox r11, rcx
adcx r15, rdi
adox r15, rbp
mov bl, dl
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbp, [ rax + 0x10 ]
adcx rbp, r8
mov rdx, r14
mulx r8, r14, r11
adox rbp, r9
adcx r12, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, r9, [ rax + 0x8 ]
adox r12, r13
mov rdx, [ rsi + 0x18 ]
mulx r10, r13, [ rax + 0x0 ]
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r9, r10
movzx r10, bl
adox r10, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, rbx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x48 ], r9
mov [ rsp - 0x40 ], r10
mulx r10, r9, [ rsi + 0x18 ]
adcx rbx, rdi
adcx r9, rcx
mov rdx, 0x0 
adcx r10, rdx
mov rdi, 0xffffffff 
mov rdx, r11
mulx rcx, r11, rdi
clc
adcx r11, r8
seto r8b
mov rdi, -0x2 
inc rdi
adox r14, rdx
mov r14, 0x0 
adcx rcx, r14
adox r11, r15
clc
adcx r13, r11
adox rcx, rbp
mov r15, 0xffffffff00000001 
mulx r11, rbp, r15
adox rbp, r12
adox r11, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x48 ]
adcx rbx, rbp
adcx r9, r11
movzx rdx, r8b
adox rdx, r14
adcx r10, rdx
mov r12, 0xffffffffffffffff 
mov rdx, r13
mulx r8, r13, r12
mov rbp, 0xffffffff 
mulx r14, r11, rbp
inc rdi
adox r11, r8
setc r8b
clc
adcx r13, rdx
adcx r11, rcx
mulx rcx, r13, r15
adox r14, rdi
adcx r14, rbx
adcx r13, r9
adcx rcx, r10
movzx rdx, r8b
adc rdx, 0x0
mov rbx, r11
sub rbx, r12
mov r9, r14
sbb r9, rbp
mov r8, r13
sbb r8, rdi
mov r10, rcx
sbb r10, r15
sbb rdx, rdi
cmovc rbx, r11
cmovc r8, r13
cmovc r9, r14
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], rbx
cmovc r10, rcx
mov [ rdx + 0x18 ], r10
mov [ rdx + 0x10 ], r8
mov [ rdx + 0x8 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6379
; seed 3836621714280731 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1351458 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=77, initial num_batches=31): 93766 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06938136442271976
; number reverted permutation / tried permutation: 73514 / 95139 =77.270%
; number reverted decision / tried decision: 59426 / 94860 =62.646%
; validated in 2.595s
