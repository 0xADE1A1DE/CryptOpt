SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
sub rsp, 168
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
xor rbx, rbx
adox r10, r8
mov rdx, [ rsi + 0x10 ]
mulx rbx, r8, [ rax + 0x18 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r13
mulx r13, r9, [ rax + 0x10 ]
adox r9, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], rbx
mulx rbx, r11, [ rax + 0x18 ]
adox r11, r13
mov rdx, r15
adcx rdx, r12
mov r12, r15
adcx r12, rdi
adcx r15, rdi
mov r13, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], r14
mulx r14, r8, [ rsi + 0x18 ]
mov rdx, 0x0 
adox rbx, rdx
mov [ rsp - 0x28 ], r8
mov r8, -0x3 
inc r8
adox rbp, rcx
adox r13, r10
adox r12, r9
adox r15, r11
adcx rdi, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rbp, [ rax + 0x0 ]
clc
adcx rbp, r13
mov rdx, [ rax + 0x8 ]
mulx r9, r10, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mulx r13, r11, rbp
mov r13, 0xfffffffefffffc2f 
mov rdx, r13
mulx r8, r13, r11
adox rdi, rbx
seto bl
mov rdx, -0x2 
inc rdx
adox r10, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r14
mov [ rsp - 0x18 ], r10
mulx r10, r14, [ rax + 0x10 ]
adox r14, r9
adox r10, [ rsp - 0x38 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x10 ], r10
mulx r10, r9, r11
mov r11, [ rsp - 0x40 ]
mov rdx, 0x0 
adox r11, rdx
mov [ rsp - 0x8 ], r11
mov r11, r9
mov [ rsp + 0x0 ], r14
mov r14, -0x3 
inc r14
adox r11, r8
mov r8, r9
adox r8, r10
mov rdx, [ rax + 0x8 ]
mov byte [ rsp + 0x8 ], bl
mulx rbx, r14, [ rsi + 0x8 ]
adox r9, r10
mov rdx, 0x0 
adox r10, rdx
mov [ rsp + 0x10 ], r10
mov r10, -0x3 
inc r10
adox r14, rcx
mov rdx, [ rax + 0x10 ]
mulx r10, rcx, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x18 ], r9
mov [ rsp + 0x20 ], rdi
mulx rdi, r9, [ rsi + 0x8 ]
adox rcx, rbx
adox r9, r10
mov rdx, 0x0 
adox rdi, rdx
adcx r14, r12
adcx rcx, r15
mov r12, -0x3 
inc r12
adox r13, rbp
adox r11, r14
adox r8, rcx
adcx r9, [ rsp + 0x20 ]
adox r9, [ rsp + 0x18 ]
movzx r13, byte [ rsp + 0x8 ]
adcx r13, rdi
setc r15b
clc
adcx r11, [ rsp - 0x48 ]
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx rbx, rbp, r11
mov rbx, 0xfffffffefffffc2f 
mov rdx, rbp
mulx r10, rbp, rbx
adox r13, [ rsp + 0x10 ]
adcx r8, [ rsp - 0x18 ]
adcx r9, [ rsp + 0x0 ]
adcx r13, [ rsp - 0x10 ]
movzx rdi, r15b
mov r14, 0x0 
adox rdi, r14
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rax + 0x10 ]
adcx rdi, [ rsp - 0x8 ]
mov rdx, 0xffffffffffffffff 
mulx rbx, r12, rcx
mov rcx, -0x2 
inc rcx
adox rbp, r11
mov rbp, r12
setc r11b
clc
adcx rbp, r10
mov r10, r12
adcx r10, rbx
adox rbp, r8
adox r10, r9
adcx r12, rbx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rax + 0x8 ]
mov rdx, 0x0 
adcx rbx, rdx
adox r12, r13
clc
adcx r8, [ rsp - 0x20 ]
adox rbx, rdi
adcx r15, r9
movzx r13, r11b
adox r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx rdi, r11, [ rax + 0x18 ]
inc rcx
adox rbp, [ rsp - 0x28 ]
adox r8, r10
adox r15, r12
adcx r11, r14
adcx rdi, rcx
mov rdx, 0xd838091dd2253531 
mulx r10, r14, rbp
adox r11, rbx
mov r10, 0xfffffffefffffc2f 
mov rdx, r10
mulx r9, r10, r14
mov r12, 0xffffffffffffffff 
mov rdx, r14
mulx rbx, r14, r12
mov rdx, r14
clc
adcx rdx, r9
mov r9, r14
adcx r9, rbx
adcx r14, rbx
adox rdi, r13
seto r13b
mov r12, -0x3 
inc r12
adox r10, rbp
adox rdx, r8
adox r9, r15
adcx rbx, rcx
adox r14, r11
adox rbx, rdi
movzx r10, r13b
adox r10, rcx
mov rbp, 0xfffffffefffffc2f 
mov r8, rdx
sub r8, rbp
mov r15, 0xffffffffffffffff 
mov r11, r9
sbb r11, r15
mov r13, r14
sbb r13, r15
mov rdi, rbx
sbb rdi, r15
sbb r10, rcx
cmovc rdi, rbx
cmovc r13, r14
cmovc r11, r9
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x8 ], r11
mov [ r10 + 0x18 ], rdi
cmovc r8, rdx
mov [ r10 + 0x0 ], r8
mov [ r10 + 0x10 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 168
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.7495
; seed 3426459697193816 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1175736 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=95, initial num_batches=31): 79954 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06800336129879497
; number reverted permutation / tried permutation: 73580 / 94856 =77.570%
; number reverted decision / tried decision: 65928 / 95143 =69.294%
; validated in 2.143s
