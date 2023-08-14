SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, r12
mov r12, rbp
test al, al
adox r12, rdi
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r14
mulx r14, rdi, [ rsi + 0x8 ]
mov rdx, rbp
adox rdx, rbx
adcx rdi, rcx
adox rbp, rbx
mov rcx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], r10
mulx r10, r13, [ rsi + 0x0 ]
adcx r13, r14
mov rdx, 0x0 
adox rbx, rdx
adcx r8, r10
mov r14, -0x3 
inc r14
adox r15, r11
adox r12, rdi
adox rcx, r13
adox rbp, r8
adcx r9, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rsi + 0x8 ]
clc
adcx rax, r11
mov rdx, [ rsi + 0x10 ]
mulx r10, rdi, [ rsi + 0x8 ]
adox rbx, r9
seto dl
inc r14
adox r15, r12
adox rax, rcx
mov r13b, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, [ rsi + 0x8 ]
mov rdx, 0xd838091dd2253531 
mulx r9, rcx, r15
adcx rdi, [ rsp - 0x28 ]
adcx r8, r10
mov r9, 0x0 
adcx r12, r9
adox rdi, rbp
adox r8, rbx
movzx rbp, r13b
adox rbp, r12
mov r11, 0xfffffffefffffc2f 
mov rdx, rcx
mulx r10, rcx, r11
mov r13, 0xffffffffffffffff 
mulx r12, rbx, r13
clc
adcx rcx, r15
mov rcx, rbx
seto r15b
mov rdx, -0x3 
inc rdx
adox rcx, r10
mov r10, rbx
adox r10, r12
adox rbx, r12
adcx rcx, rax
adcx r10, rdi
adox r12, r9
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, rdx
adcx rbx, r8
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r13, r14, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r14, r9
adox rax, r13
adox rdi, [ rsp - 0x30 ]
mov r9, [ rsp - 0x38 ]
mov r13, 0x0 
adox r9, r13
mov rdx, -0x3 
inc rdx
adox r8, rcx
adox r14, r10
adcx r12, rbp
adox rax, rbx
adox rdi, r12
movzx rbp, r15b
adcx rbp, r13
mov r15, 0xd838091dd2253531 
mov rdx, r15
mulx rcx, r15, r8
mov rcx, 0xffffffffffffffff 
mov rdx, r15
mulx r10, r15, rcx
adox r9, rbp
mulx r12, rbx, r11
clc
adcx rbx, r8
mov rbx, r15
seto r8b
mov rbp, -0x3 
inc rbp
adox rbx, r12
adcx rbx, r14
mov r14, r15
adox r14, r10
adox r15, r10
adox r10, r13
adcx r14, rax
adcx r15, rdi
adcx r10, r9
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, -0x3 
inc rdx
adox r9, rbx
movzx rdx, r8b
adcx rdx, r13
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mulx r13, rbx, [ rsi + 0x18 ]
clc
adcx rbx, r12
adox rbx, r14
adcx rax, r13
mov rdx, 0xd838091dd2253531 
mulx r12, r14, r9
adcx rdi, [ rsp - 0x40 ]
mov r12, [ rsp - 0x48 ]
mov r13, 0x0 
adcx r12, r13
mov rdx, r14
mulx r13, r14, r11
adox rax, r15
adox rdi, r10
mulx r10, r15, rcx
mov rdx, r15
clc
adcx rdx, r13
mov r13, r15
adcx r13, r10
adox r12, r8
adcx r15, r10
seto r8b
inc rbp
adox r14, r9
adox rdx, rbx
adox r13, rax
adox r15, rdi
mov r14, 0x0 
adcx r10, r14
adox r10, r12
movzx r9, r8b
adox r9, r14
mov rbx, rdx
sub rbx, r11
mov rax, r13
sbb rax, rcx
mov rdi, r15
sbb rdi, rcx
mov r8, r10
sbb r8, rcx
sbb r9, r14
cmovc rdi, r15
cmovc rax, r13
cmovc r8, r10
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], rdi
mov [ r9 + 0x18 ], r8
cmovc rbx, rdx
mov [ r9 + 0x0 ], rbx
mov [ r9 + 0x8 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.6654
; seed 1898063511930699 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1918246 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=70, initial num_batches=31): 134688 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07021414354571832
; number reverted permutation / tried permutation: 74606 / 95032 =78.506%
; number reverted decision / tried decision: 61945 / 94967 =65.228%
; validated in 3.825s
