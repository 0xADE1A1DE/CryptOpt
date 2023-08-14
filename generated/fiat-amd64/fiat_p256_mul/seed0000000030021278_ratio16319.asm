SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rcx
mov [ rsp - 0x58 ], r15
xor r15, r15
adox r13, rcx
adcx r9, r14
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mulx r14, r13, [ rax + 0x8 ]
clc
adcx r13, r8
adcx r10, r14
mov rdx, [ rax + 0x18 ]
mulx r14, r8, [ rsi + 0x0 ]
adcx r8, r11
adcx r14, r15
adox r9, r13
adox rbx, r10
mov rdx, 0xffffffff00000001 
mulx r13, r11, rcx
adox r11, r8
mov rdx, [ rax + 0x10 ]
mulx r10, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r15, r8, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, [ rsi + 0x8 ]
clc
adcx r8, r12
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x8 ]
adcx rcx, r15
adcx r12, r10
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx rdi, r9
adcx r8, rbx
adcx rcx, r11
adox r13, r14
mov r14, 0xffffffffffffffff 
mov rdx, rdi
mulx r9, rdi, r14
adcx r12, r13
seto bl
movzx rbx, bl
adcx rbx, rbp
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r13, rbp, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], rbx
mulx rbx, r14, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox rbp, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rbp
mulx rbp, r15, [ rax + 0x18 ]
adox r14, r13
adox r15, rbx
setc dl
clc
adcx rdi, r11
mov rdi, 0xffffffff 
xchg rdx, r11
mulx rbx, r13, rdi
mov rdi, 0x0 
adox rbp, rdi
mov [ rsp - 0x28 ], rbp
mov rbp, -0x3 
inc rbp
adox r13, r9
adox rbx, rdi
adcx r13, r8
mov r8, -0x3 
inc r8
adox r10, r13
mov r8, 0xffffffff00000001 
mulx r13, r9, r8
adcx rbx, rcx
adcx r9, r12
adcx r13, [ rsp - 0x38 ]
movzx rdx, r11b
adcx rdx, rdi
mov rcx, 0xffffffff 
xchg rdx, rcx
mulx r11, r12, r10
mov rdi, 0xffffffffffffffff 
mov rdx, rdi
mulx rbp, rdi, r10
clc
adcx r12, rbp
adox rbx, [ rsp - 0x30 ]
adox r14, r9
mov r9, 0x0 
adcx r11, r9
adox r15, r13
clc
adcx rdi, r10
mov rdx, [ rsi + 0x18 ]
mulx r13, rdi, [ rax + 0x10 ]
adcx r12, rbx
adcx r11, r14
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rax + 0x0 ]
mov rdx, r8
mulx r14, r8, r10
adcx r8, r15
mov rdx, [ rax + 0x8 ]
mulx r15, r10, [ rsi + 0x18 ]
adox rcx, [ rsp - 0x28 ]
adcx r14, rcx
setc dl
clc
adcx r10, rbx
movzx rbx, dl
adox rbx, r9
mov rcx, -0x3 
inc rcx
adox rbp, r12
adox r10, r11
mov r12, 0xffffffff 
mov rdx, rbp
mulx r11, rbp, r12
adcx rdi, r15
adcx r13, [ rsp - 0x40 ]
mov r15, [ rsp - 0x48 ]
adcx r15, r9
adox rdi, r8
adox r13, r14
adox r15, rbx
mov r8, 0xffffffffffffffff 
mulx rbx, r14, r8
clc
adcx rbp, rbx
adcx r11, r9
clc
adcx r14, rdx
adcx rbp, r10
adcx r11, rdi
mov r14, 0xffffffff00000001 
mulx rdi, r10, r14
adcx r10, r13
adcx rdi, r15
seto dl
adc dl, 0x0
movzx rdx, dl
mov r13, rbp
sub r13, r8
mov r15, r11
sbb r15, r12
mov rbx, r10
sbb rbx, r9
mov r9, rdi
sbb r9, r14
movzx rdx, dl
mov rcx, 0x0 
sbb rdx, rcx
cmovc r9, rdi
cmovc r13, rbp
cmovc r15, r11
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r15
cmovc rbx, r10
mov [ rdx + 0x10 ], rbx
mov [ rdx + 0x0 ], r13
mov [ rdx + 0x18 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.6319
; seed 2282932354171575 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1341590 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=104, initial num_batches=31): 68168 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.050811350710723846
; number reverted permutation / tried permutation: 79720 / 95325 =83.630%
; number reverted decision / tried decision: 64367 / 94674 =67.988%
; validated in 1.449s
