SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mulx r8, rcx, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
xor rdx, rdx
adox rcx, r10
mov rcx, 0xffffffff 
mov rdx, rcx
mov [ rsp - 0x58 ], r15
mulx r15, rcx, r10
adcx rcx, r8
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r8, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r8
mulx r8, rdi, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx r15, rdx
clc
adcx rdi, r11
adcx r13, r8
adcx rbp, r14
adox rcx, rdi
adcx r12, rdx
adox r15, r13
mov rdx, [ rsi + 0x8 ]
mulx r14, r11, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx rdi, r8, [ rsi + 0x8 ]
clc
adcx r9, r14
mov rdx, 0xffffffff00000001 
mulx r14, r13, r10
adox r13, rbp
adox r14, r12
seto r10b
mov rbp, -0x2 
inc rbp
adox r11, rcx
adcx r8, rbx
adox r9, r15
mulx rcx, rbx, r11
adox r8, r13
mov rdx, [ rax + 0x18 ]
mulx r15, r12, [ rsi + 0x8 ]
mov rdx, 0xffffffff 
mulx rbp, r13, r11
adcx r12, rdi
adox r12, r14
mov rdi, 0x0 
adcx r15, rdi
movzx r14, r10b
adox r14, r15
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx r15, r10, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rcx
mulx rcx, rdi, [ rax + 0x0 ]
clc
adcx r13, r15
seto dl
mov r15, -0x2 
inc r15
adox r10, r11
adox r13, r9
mov r10, 0x0 
adcx rbp, r10
adox rbp, r8
adox rbx, r12
adox r14, [ rsp - 0x38 ]
movzx r11, dl
adox r11, r10
xor r9, r9
adox rdi, r13
mov rdx, [ rax + 0x8 ]
mulx r8, r10, [ rsi + 0x10 ]
adcx r10, rcx
mov rdx, [ rax + 0x18 ]
mulx rcx, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r13, [ rax + 0x10 ]
adcx r13, r8
mov rdx, 0xffffffffffffffff 
mulx r15, r8, rdi
mov rdx, 0xffffffff 
mov [ rsp - 0x30 ], r11
mov [ rsp - 0x28 ], r14
mulx r14, r11, rdi
adcx r12, r9
setc r9b
clc
adcx r11, r15
mov r15, 0x0 
adcx r14, r15
clc
adcx r8, rdi
adox r10, rbp
adcx r11, r10
adox r13, rbx
movzx r8, r9b
lea r8, [ r8 + rcx ]
adcx r14, r13
mov rdx, [ rax + 0x10 ]
mulx rbx, rbp, [ rsi + 0x18 ]
adox r12, [ rsp - 0x28 ]
adox r8, [ rsp - 0x30 ]
mov rdx, 0xffffffff00000001 
mulx r9, rcx, rdi
mov rdx, [ rsi + 0x18 ]
mulx r10, rdi, [ rax + 0x0 ]
adcx rcx, r12
adcx r9, r8
mov rdx, [ rax + 0x18 ]
mulx r12, r13, [ rsi + 0x18 ]
setc dl
clc
adcx r10, [ rsp - 0x40 ]
movzx r8, dl
adox r8, r15
mov rdx, -0x3 
inc rdx
adox rdi, r11
adox r10, r14
adcx rbp, [ rsp - 0x48 ]
adox rbp, rcx
mov r11, 0xffffffff 
mov rdx, r11
mulx r14, r11, rdi
adcx r13, rbx
adcx r12, r15
adox r13, r9
mov rbx, 0xffffffffffffffff 
mov rdx, rdi
mulx rcx, rdi, rbx
adox r12, r8
clc
adcx r11, rcx
seto r9b
mov r8, -0x3 
inc r8
adox rdi, rdx
adox r11, r10
adcx r14, r15
adox r14, rbp
mov rdi, 0xffffffff00000001 
mulx rbp, r10, rdi
adox r10, r13
adox rbp, r12
movzx rdx, r9b
adox rdx, r15
mov r13, r11
sub r13, rbx
mov rcx, 0xffffffff 
mov r9, r14
sbb r9, rcx
mov r12, r10
sbb r12, r15
mov r15, rbp
sbb r15, rdi
mov r8, 0x0 
sbb rdx, r8
cmovc r12, r10
cmovc r15, rbp
cmovc r9, r14
cmovc r13, r11
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r13
mov [ rdx + 0x10 ], r12
mov [ rdx + 0x18 ], r15
mov [ rdx + 0x8 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.7527
; seed 2481900625225730 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1269020 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=98, initial num_batches=31): 85078 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06704228459756348
; number reverted permutation / tried permutation: 73876 / 95032 =77.738%
; number reverted decision / tried decision: 65173 / 94967 =68.627%
; validated in 2.007s
