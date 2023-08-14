SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
test al, al
adox rbp, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, rbp, [ rax + 0x0 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, r10
adcx r13, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r15
mulx r15, r11, [ rsi + 0x0 ]
adcx rcx, r14
adcx r11, r8
mov rdx, 0x0 
adcx r15, rdx
clc
adcx rdi, r12
adcx r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, [ rax + 0x8 ]
clc
adcx r8, rbx
mov rdx, [ rax + 0x10 ]
mulx r14, rbx, [ rsi + 0x18 ]
adcx rbx, r12
adox rdi, r13
adox r9, rcx
mov rdx, [ rax + 0x18 ]
mulx rcx, r13, [ rsi + 0x18 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x38 ], rbx
mulx rbx, r12, r10
adox r12, r11
adox rbx, r15
adcx r13, r14
seto r10b
mov r11, -0x2 
inc r11
adox rbp, rdi
mov r15, 0x0 
adcx rcx, r15
mov rdx, [ rsi + 0x8 ]
mulx rdi, r14, [ rax + 0x8 ]
clc
adcx r14, [ rsp - 0x40 ]
mov rdx, 0xffffffff 
mulx r11, r15, rbp
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x30 ], rcx
mov [ rsp - 0x28 ], r13
mulx r13, rcx, [ rsi + 0x8 ]
adox r14, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r8
mulx r8, r9, [ rax + 0x10 ]
adcx r9, rdi
adox r9, r12
adcx rcx, r8
mov rdx, [ rsi + 0x10 ]
mulx rdi, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov byte [ rsp - 0x18 ], r10b
mulx r10, r8, [ rax + 0x0 ]
adox rcx, rbx
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r12, r10
mov rdx, [ rax + 0x18 ]
mulx r10, rbx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r12
mov [ rsp - 0x8 ], r8
mulx r8, r12, [ rsi + 0x10 ]
adcx r12, rdi
adcx rbx, r8
mov rdx, 0x0 
adcx r10, rdx
mov rdi, 0xffffffffffffffff 
mov rdx, rbp
mulx r8, rbp, rdi
clc
adcx r15, r8
mov r8, 0x0 
adcx r11, r8
clc
adcx rbp, rdx
adcx r15, r14
adcx r11, r9
mov rbp, 0xffffffff00000001 
mulx r9, r14, rbp
adcx r14, rcx
movzx rdx, byte [ rsp - 0x18 ]
adox rdx, r13
adcx r9, rdx
setc cl
clc
adcx r15, [ rsp - 0x8 ]
mov rdx, r15
mulx r13, r15, rdi
adcx r11, [ rsp - 0x10 ]
adcx r12, r14
adcx rbx, r9
movzx r14, cl
adox r14, r8
adcx r10, r14
mov rcx, -0x3 
inc rcx
adox r15, rdx
mov r15, 0xffffffff 
mulx r14, r9, r15
setc cl
clc
adcx r9, r13
adcx r14, r8
adox r9, r11
clc
adcx r9, [ rsp - 0x48 ]
adox r14, r12
mulx r11, r13, rbp
adox r13, rbx
mov rdx, r9
mulx r12, r9, rdi
adox r11, r10
adcx r14, [ rsp - 0x20 ]
movzx rbx, cl
adox rbx, r8
adcx r13, [ rsp - 0x38 ]
adcx r11, [ rsp - 0x28 ]
adcx rbx, [ rsp - 0x30 ]
mulx r10, rcx, r15
mov rdi, -0x3 
inc rdi
adox rcx, r12
setc r12b
clc
adcx r9, rdx
adcx rcx, r14
mulx r14, r9, rbp
adox r10, r8
adcx r10, r13
adcx r9, r11
adcx r14, rbx
movzx rdx, r12b
adc rdx, 0x0
mov r13, 0xffffffffffffffff 
mov r11, rcx
sub r11, r13
mov r12, r10
sbb r12, r15
mov rbx, r9
sbb rbx, r8
mov r8, r14
sbb r8, rbp
mov rdi, 0x0 
sbb rdx, rdi
cmovc r8, r14
cmovc r12, r10
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r12
cmovc rbx, r9
cmovc r11, rcx
mov [ rdx + 0x0 ], r11
mov [ rdx + 0x10 ], rbx
mov [ rdx + 0x18 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6225
; seed 1257309422667313 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1438283 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=78, initial num_batches=31): 93945 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06531746533887976
; number reverted permutation / tried permutation: 71183 / 95089 =74.859%
; number reverted decision / tried decision: 59772 / 94910 =62.978%
; validated in 2.28s
