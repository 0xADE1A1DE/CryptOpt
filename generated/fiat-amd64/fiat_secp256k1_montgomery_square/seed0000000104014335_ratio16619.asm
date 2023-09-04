SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, rbx
add r14, rbp
mov r9, 0xfffffffefffffc2f 
mov rdx, r9
mulx rbp, r9, rdi
adcx rax, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r8
mulx r8, r15, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r12
mulx r12, r13, rdi
mov rdi, r13
mov rdx, -0x2 
inc rdx
adox rdi, rbp
mov rbp, r13
adox rbp, r12
adcx r11, r10
adox r13, r12
mov r10, 0x0 
adcx rcx, r10
clc
adcx r9, rbx
adcx rdi, r14
adcx rbp, rax
adcx r13, r11
adox r12, r10
mov rdx, [ rsi + 0x8 ]
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r14, rdx
mov rdx, -0x3 
inc rdx
adox r14, rbx
adox r15, rax
adcx r12, rcx
setc r11b
clc
adcx r9, rdi
adcx r14, rbp
mov rdx, [ rsi + 0x8 ]
mulx rdi, rcx, [ rsi + 0x18 ]
adox rcx, r8
mov rdx, 0xd838091dd2253531 
mulx rbp, r8, r9
mov rbp, 0xffffffffffffffff 
mov rdx, r8
mulx rbx, r8, rbp
adox rdi, r10
mov rax, 0xfffffffefffffc2f 
mulx rbp, r10, rax
adcx r15, r13
adcx rcx, r12
mov r13, -0x2 
inc r13
adox r10, r9
movzx r10, r11b
adcx r10, rdi
mov r11, r8
setc r12b
clc
adcx r11, rbp
mov r9, r8
adcx r9, rbx
adox r11, r14
adox r9, r15
adcx r8, rbx
adox r8, rcx
mov r14, 0x0 
adcx rbx, r14
adox rbx, r10
movzx rdx, r12b
adox rdx, r14
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, rbp, [ rsi + 0x10 ]
test al, al
adox r15, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x10 ]
mulx r12, rcx, rdx
adcx rbp, r11
adox rcx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rsi + 0x10 ]
adox r10, r12
adcx r15, r9
adcx rcx, r8
adcx r10, rbx
adox r11, r14
mov rdx, 0xd838091dd2253531 
mulx r8, r9, rbp
mov rdx, r9
mulx r9, r8, rax
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r12, [ rsi + 0x0 ]
inc r13
adox r8, rbp
mov rdx, 0xffffffffffffffff 
mulx rbp, r8, rbx
adcx r11, rdi
mov rdi, r8
setc bl
clc
adcx rdi, r9
mov r9, r8
adcx r9, rbp
adcx r8, rbp
adox rdi, r15
adox r9, rcx
adox r8, r10
mov rdx, [ rsi + 0x18 ]
mulx rcx, r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r10, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r14, [ rsp - 0x40 ]
adox rbp, r11
movzx r11, bl
adox r11, rdx
adcx r10, [ rsp - 0x48 ]
adcx r15, r13
mov rbx, -0x3 
inc rbx
adox r12, rdi
adcx rcx, rdx
mov rdi, 0xd838091dd2253531 
mov rdx, rdi
mulx r13, rdi, r12
adox r14, r9
adox r10, r8
mov rdx, rdi
mulx r13, rdi, rax
mov r9, 0xffffffffffffffff 
mulx rbx, r8, r9
adox r15, rbp
mov rbp, r8
clc
adcx rbp, r13
adox rcx, r11
mov r11, r8
adcx r11, rbx
seto dl
mov r13, -0x2 
inc r13
adox rdi, r12
adox rbp, r14
adox r11, r10
adcx r8, rbx
adox r8, r15
mov rdi, 0x0 
adcx rbx, rdi
adox rbx, rcx
movzx r12, dl
adox r12, rdi
mov r14, rbp
sub r14, rax
mov r10, r11
sbb r10, r9
mov r15, r8
sbb r15, r9
mov rdx, rbx
sbb rdx, r9
sbb r12, rdi
cmovc r15, r8
cmovc rdx, rbx
cmovc r14, rbp
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x0 ], r14
mov [ r12 + 0x10 ], r15
cmovc r10, r11
mov [ r12 + 0x8 ], r10
mov [ r12 + 0x18 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6619
; seed 4106510638001884 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1421115 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=69, initial num_batches=31): 92816 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06531209648761711
; number reverted permutation / tried permutation: 73212 / 94843 =77.193%
; number reverted decision / tried decision: 62889 / 95156 =66.090%
; validated in 3.84s
