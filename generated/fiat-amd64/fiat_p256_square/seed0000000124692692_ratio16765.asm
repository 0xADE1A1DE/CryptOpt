SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
test al, al
adox rbx, r8
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mulx rdi, rbx, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r14
mulx r14, r15, [ rsi + 0x10 ]
adcx rax, r9
adcx r12, r10
adcx r11, r13
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r10
mulx r10, r13, [ rsi + 0x10 ]
clc
adcx rbx, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r9
mulx r9, rbp, [ rsi + 0x0 ]
adox rbx, rax
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], r14
mulx r14, rax, rdx
clc
adcx rax, r9
adox rdi, r12
mov rdx, [ rsi + 0x8 ]
mulx r9, r12, [ rsi + 0x10 ]
adcx r12, r14
adcx r9, [ rsp - 0x40 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x20 ], r15
mulx r15, r14, r8
setc r8b
clc
adcx rbp, rbx
adcx rax, rdi
adox r14, r11
adcx r12, r14
mov r11, 0xffffffffffffffff 
mov rdx, rbp
mulx rbx, rbp, r11
mov rdi, 0xffffffff 
mulx r11, r14, rdi
adox r15, rcx
adcx r9, r15
seto cl
mov r15, -0x2 
inc r15
adox r14, rbx
mov rbx, 0x0 
adox r11, rbx
mov r15, -0x3 
inc r15
adox rbp, rdx
adox r14, rax
movzx rbp, r8b
mov rax, [ rsp - 0x48 ]
lea rbp, [ rbp + rax ]
adox r11, r12
mov rax, 0xffffffff00000001 
mulx r12, r8, rax
movzx rdx, cl
adcx rdx, rbp
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, rbp, [ rsi + 0x10 ]
adox r8, r9
adox r12, rcx
setc dl
clc
adcx rbp, r14
movzx r9, dl
mov r14, 0x0 
adox r9, r14
mov rdx, -0x3 
inc rdx
adox r13, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rcx, rdx
adcx r13, r11
adox rcx, r10
adcx rcx, r8
adox rbx, [ rsp - 0x20 ]
mov rdx, 0xffffffffffffffff 
mulx r11, r10, rbp
mov r8, [ rsp - 0x28 ]
adox r8, r14
mov rdx, rbp
mulx r14, rbp, rdi
adcx rbx, r12
inc r15
adox r10, rdx
adcx r8, r9
setc r10b
clc
adcx rbp, r11
mov r12, 0x0 
adcx r14, r12
adox rbp, r13
adox r14, rcx
mulx r13, r9, rax
adox r9, rbx
mov rdx, [ rsi + 0x18 ]
mulx r11, rcx, rdx
adox r13, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, [ rsi + 0x18 ]
movzx rdx, r10b
adox rdx, r12
mov r10, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, r12, [ rsi + 0x18 ]
xor rdx, rdx
adox r12, [ rsp - 0x30 ]
adox rbx, r15
adcx rbp, [ rsp - 0x38 ]
adox rcx, r8
adcx r12, r14
adcx rbx, r9
adcx rcx, r13
adox r11, rdx
adcx r11, r10
mov r14, 0xffffffffffffffff 
mov rdx, rbp
mulx r9, rbp, r14
mov r13, -0x2 
inc r13
adox rbp, rdx
mulx r8, rbp, rdi
setc r10b
clc
adcx rbp, r9
mov r15, 0x0 
adcx r8, r15
adox rbp, r12
adox r8, rbx
mulx rbx, r12, rax
adox r12, rcx
adox rbx, r11
movzx rdx, r10b
adox rdx, r15
mov rcx, rbp
sub rcx, r14
mov r10, r8
sbb r10, rdi
mov r11, r12
sbb r11, r15
mov r9, rbx
sbb r9, rax
sbb rdx, r15
cmovc r10, r8
cmovc r9, rbx
cmovc rcx, rbp
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], rcx
cmovc r11, r12
mov [ rdx + 0x10 ], r11
mov [ rdx + 0x18 ], r9
mov [ rdx + 0x8 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.6765
; seed 1997566554455099 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1027115 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=114, initial num_batches=31): 75837 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07383496492603067
; number reverted permutation / tried permutation: 71701 / 95177 =75.334%
; number reverted decision / tried decision: 62846 / 94822 =66.278%
; validated in 1.014s
