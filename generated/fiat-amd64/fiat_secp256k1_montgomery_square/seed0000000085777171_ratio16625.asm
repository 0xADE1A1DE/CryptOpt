SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
xor rdx, rdx
adox r12, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, rbp, [ rsi + 0x8 ]
adox rbp, r13
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x58 ], r15
mulx r15, r13, r11
adox rax, r14
mov r15, 0xfffffffefffffc2f 
mov rdx, r15
mulx r14, r15, r13
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rax
mulx rax, rdi, r13
mov r13, rdi
adcx r13, r14
mov r14, rdi
adcx r14, rax
adcx rdi, rax
mov rdx, 0x0 
adcx rax, rdx
adox r10, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], rax
mulx rax, r10, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, rcx
adcx r15, r11
adox r8, rax
adcx r13, r10
adcx r14, r8
mov rdx, [ rsi + 0x18 ]
mulx r11, r15, [ rsi + 0x0 ]
adox r15, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, rcx, [ rsi + 0x0 ]
adcx rdi, r15
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r11, rdx
mov r8, -0x3 
inc r8
adox rax, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, r15, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rax
mulx rax, r8, [ rsi + 0x18 ]
adox r15, r10
adox r8, r9
seto dl
mov r10, -0x2 
inc r10
adox rbx, r13
movzx r13, dl
lea r13, [ r13 + rax ]
adox r12, r14
adox rbp, rdi
adcx r11, [ rsp - 0x38 ]
mov r14, 0xd838091dd2253531 
mov rdx, r14
mulx rdi, r14, rbx
adox r11, [ rsp - 0x48 ]
mov rdi, 0xfffffffefffffc2f 
mov rdx, r14
mulx r9, r14, rdi
setc al
movzx rax, al
adox rax, [ rsp - 0x40 ]
clc
adcx r14, rbx
mov r14, 0xffffffffffffffff 
mulx r10, rbx, r14
mov rdx, rbx
seto r14b
mov rdi, -0x2 
inc rdi
adox rdx, r9
adcx rdx, r12
mov r12, rbx
adox r12, r10
adox rbx, r10
mov r9, 0x0 
adox r10, r9
adcx r12, rbp
mov rbp, -0x3 
inc rbp
adox rcx, rdx
adox r12, [ rsp - 0x30 ]
mov rdx, 0xd838091dd2253531 
mulx rbp, r9, rcx
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx rdi, rbp, r9
adcx rbx, r11
adcx r10, rax
adox r15, rbx
adox r8, r10
mov r11, 0xfffffffefffffc2f 
mov rdx, r9
mulx rax, r9, r11
movzx rdx, r14b
mov rbx, 0x0 
adcx rdx, rbx
adox r13, rdx
mov r14, rbp
clc
adcx r14, rax
mov r10, rbp
adcx r10, rdi
seto al
mov rdx, -0x3 
inc rdx
adox r9, rcx
adcx rbp, rdi
adox r14, r12
mov rdx, [ rsi + 0x18 ]
mulx rcx, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rbx, r12, [ rsi + 0x18 ]
adox r10, r15
mov rdx, [ rsi + 0x18 ]
mulx r11, r15, rdx
adox rbp, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], rbp
mulx rbp, r8, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r9, rbp
adcx r12, rcx
adcx r15, rbx
adox rdi, r13
movzx r13, al
adox r13, rdx
adc r11, 0x0
xor rax, rax
adox r8, r14
mov rdx, 0xd838091dd2253531 
mulx rcx, r14, r8
mov rcx, 0xfffffffefffffc2f 
mov rdx, r14
mulx rbx, r14, rcx
adcx r14, r8
adox r9, r10
adox r12, [ rsp - 0x28 ]
adox r15, rdi
adox r11, r13
mov r14, 0xffffffffffffffff 
mulx rbp, r10, r14
mov rdi, r10
seto r13b
mov r8, -0x3 
inc r8
adox rdi, rbx
adcx rdi, r9
mov rdx, r10
adox rdx, rbp
adox r10, rbp
adcx rdx, r12
adcx r10, r15
adox rbp, rax
adcx rbp, r11
movzx rbx, r13b
adc rbx, 0x0
mov r9, rdi
sub r9, rcx
mov r12, rdx
sbb r12, r14
mov r15, r10
sbb r15, r14
mov r13, rbp
sbb r13, r14
sbb rbx, rax
cmovc r9, rdi
cmovc r13, rbp
cmovc r15, r10
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x0 ], r9
mov [ rbx + 0x10 ], r15
cmovc r12, rdx
mov [ rbx + 0x8 ], r12
mov [ rbx + 0x18 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6625
; seed 0527975111321673 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1435381 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=69, initial num_batches=31): 92503 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06444491044538
; number reverted permutation / tried permutation: 73232 / 95127 =76.983%
; number reverted decision / tried decision: 62163 / 94872 =65.523%
; validated in 3.724s
