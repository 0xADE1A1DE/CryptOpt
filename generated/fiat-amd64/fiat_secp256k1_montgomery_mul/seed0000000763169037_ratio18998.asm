SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, r8
mov r8, 0xfffffffefffffc2f 
mov rdx, rbp
mov [ rsp - 0x40 ], r9
mulx r9, rbp, r8
mov rdx, r14
adcx rdx, r9
adox rdi, r11
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rax + 0x10 ]
mov rdx, r14
adcx rdx, r15
adcx r14, r15
mov [ rsp - 0x38 ], r8
mov r8, 0x0 
adcx r15, r8
clc
adcx rbp, rcx
adcx r11, r10
adcx rdx, rdi
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mulx r10, rcx, [ rax + 0x0 ]
adox r12, rbx
adox r13, r8
adcx r14, r12
adcx r15, r13
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbx, [ rax + 0x8 ]
mov rdx, -0x3 
inc rdx
adox rcx, r11
mov rdx, [ rax + 0x10 ]
mulx r12, r11, [ rsi + 0x8 ]
setc dl
clc
adcx rbx, r10
adox rbx, rbp
adcx r11, rdi
adox r11, r14
mov bpl, dl
mov rdx, [ rsi + 0x8 ]
mulx r13, r10, [ rax + 0x18 ]
adcx r10, r12
adox r10, r15
adcx r13, r8
mov rdx, 0xd838091dd2253531 
mulx r15, r14, rcx
movzx r15, bpl
adox r15, r13
mov rbp, 0xfffffffefffffc2f 
mov rdx, rbp
mulx rdi, rbp, r14
clc
adcx rbp, rcx
mov rbp, 0xffffffffffffffff 
mov rdx, r14
mulx rcx, r14, rbp
mov r12, r14
seto r13b
mov rdx, -0x3 
inc rdx
adox r12, rdi
mov rdi, r14
adox rdi, rcx
adox r14, rcx
adcx r12, rbx
adcx rdi, r11
adox rcx, r8
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, [ rax + 0x8 ]
adcx r14, r10
adcx rcx, r15
mov rdx, [ rax + 0x0 ]
mulx r15, r10, [ rsi + 0x10 ]
mov rdx, -0x3 
inc rdx
adox r10, r12
movzx r12, r13b
adcx r12, r8
clc
adcx rbx, r15
mov rdx, [ rax + 0x18 ]
mulx r15, r13, [ rsi + 0x10 ]
adcx r11, [ rsp - 0x40 ]
mov rdx, 0xd838091dd2253531 
mulx rbp, r8, r10
adox rbx, rdi
adox r11, r14
adcx r13, [ rsp - 0x48 ]
adox r13, rcx
mov rbp, 0x0 
adcx r15, rbp
mov rdx, [ rax + 0x0 ]
mulx r14, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx rbp, rcx, [ rsi + 0x18 ]
clc
adcx rcx, r14
adcx r9, rbp
mov rdx, 0xffffffffffffffff 
mulx rbp, r14, r8
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], rcx
mulx rcx, r9, [ rsi + 0x18 ]
adcx r9, [ rsp - 0x38 ]
adox r15, r12
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x20 ], r9
mulx r9, r12, r8
seto r8b
mov rdx, -0x2 
inc rdx
adox r12, r10
mov r12, 0x0 
adcx rcx, r12
mov r10, r14
clc
adcx r10, r9
mov r9, r14
adcx r9, rbp
adcx r14, rbp
adox r10, rbx
adox r9, r11
seto bl
mov r11, -0x3 
inc r11
adox rdi, r10
adcx rbp, r12
clc
movzx rbx, bl
adcx rbx, rdx
adcx r13, r14
adox r9, [ rsp - 0x28 ]
adox r13, [ rsp - 0x30 ]
adcx rbp, r15
mov r15, 0xd838091dd2253531 
mov rdx, rdi
mulx r14, rdi, r15
adox rbp, [ rsp - 0x20 ]
mov r14, 0xfffffffefffffc2f 
xchg rdx, r14
mulx rbx, r10, rdi
movzx r12, r8b
mov r11, 0x0 
adcx r12, r11
adox rcx, r12
clc
adcx r10, r14
mov r10, 0xffffffffffffffff 
mov rdx, rdi
mulx r8, rdi, r10
mov r14, rdi
seto dl
mov r12, -0x3 
inc r12
adox r14, rbx
mov rbx, rdi
adox rbx, r8
adox rdi, r8
adcx r14, r9
adcx rbx, r13
adox r8, r11
adcx rdi, rbp
adcx r8, rcx
movzx r9, dl
adc r9, 0x0
mov r13, 0xfffffffefffffc2f 
mov rbp, r14
sub rbp, r13
mov rdx, rbx
sbb rdx, r10
mov rcx, rdi
sbb rcx, r10
mov r11, r8
sbb r11, r10
mov r12, 0x0 
sbb r9, r12
cmovc r11, r8
cmovc rbp, r14
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x18 ], r11
cmovc rdx, rbx
cmovc rcx, rdi
mov [ r9 + 0x8 ], rdx
mov [ r9 + 0x10 ], rcx
mov [ r9 + 0x0 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.8998
; seed 1439760768121423 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1348649 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 88027 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06527050403774444
; number reverted permutation / tried permutation: 78662 / 94759 =83.013%
; number reverted decision / tried decision: 65109 / 95240 =68.363%
; validated in 3.001s
