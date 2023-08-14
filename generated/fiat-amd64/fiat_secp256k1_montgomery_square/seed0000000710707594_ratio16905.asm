SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, 0xd838091dd2253531 
mov rdx, r11
mulx rcx, r11, rax
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r11
mov [ rsp - 0x68 ], r13
mov r13, 0xffffffffffffffff 
mov rdx, r11
mov [ rsp - 0x60 ], r14
mulx r14, r11, r13
mov rdx, r11
mov [ rsp - 0x58 ], r15
xor r15, r15
adox rdx, r12
mov r12, r11
adox r12, r14
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, [ rsi + 0x8 ]
adcx r13, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], rcx
mulx rcx, r10, [ rsi + 0x10 ]
adcx r10, rdi
adcx r9, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rdi, rdx
adox r11, r14
mov rdx, 0x0 
adcx rbx, rdx
clc
adcx rdi, r8
adox r14, rdx
mov r8, -0x3 
inc r8
adox rbp, rax
adox r15, r13
mov rdx, [ rsi + 0x8 ]
mulx rax, rbp, [ rsi + 0x10 ]
adcx rbp, rcx
adox r12, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, r13, [ rsi + 0x8 ]
adcx r13, rax
mov rdx, 0x0 
adcx r10, rdx
clc
adcx r15, [ rsp - 0x48 ]
adcx rdi, r12
adox r11, r9
mov r9, 0xd838091dd2253531 
mov rdx, r9
mulx rcx, r9, r15
adcx rbp, r11
adox r14, rbx
mov rcx, 0xfffffffefffffc2f 
mov rdx, rcx
mulx rbx, rcx, r9
mov rax, 0xffffffffffffffff 
mov rdx, rax
mulx r12, rax, r9
adcx r13, r14
mov r11, rax
seto r9b
inc r8
adox r11, rbx
mov r14, rax
adox r14, r12
adox rax, r12
movzx rbx, r9b
adcx rbx, r10
setc r10b
clc
adcx rcx, r15
adcx r11, rdi
adcx r14, rbp
mov rdx, [ rsi + 0x10 ]
mulx r15, rcx, [ rsi + 0x0 ]
mov rdx, 0x0 
adox r12, rdx
adcx rax, r13
adcx r12, rbx
mov rdi, -0x3 
inc rdi
adox rcx, r11
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx r9, rbp, rcx
mov rdx, [ rsi + 0x10 ]
mulx r13, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, rdx
movzx rdx, r10b
mov rdi, 0x0 
adcx rdx, rdi
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rdi, [ rsi + 0x10 ]
clc
adcx r9, r15
adox r9, r14
adcx rbx, r13
adcx rdi, r11
adox rbx, rax
adox rdi, r12
mov rdx, 0xfffffffefffffc2f 
mulx r15, r14, rbp
mov rax, 0x0 
adcx r8, rax
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx r13, r12, rbp
mov rbp, r12
clc
adcx rbp, r15
adox r8, r10
seto r11b
mov r10, -0x3 
inc r10
adox r14, rcx
adox rbp, r9
mov r14, r12
adcx r14, r13
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, [ rsi + 0x18 ]
adcx r12, r13
mov rdx, [ rsi + 0x10 ]
mulx rax, r15, [ rsi + 0x18 ]
adox r14, rbx
mov rdx, 0x0 
adcx r13, rdx
adox r12, rdi
adox r13, r8
movzx rbx, r11b
adox rbx, rdx
xor rdi, rdi
adox rcx, rbp
mov rdx, [ rsi + 0x18 ]
mulx r8, r11, [ rsi + 0x8 ]
adcx r11, r9
adcx r15, r8
adox r11, r14
mov rdx, 0xd838091dd2253531 
mulx r9, rbp, rcx
mov rdx, [ rsi + 0x18 ]
mulx r14, r9, rdx
mov rdx, 0xfffffffefffffc2f 
mulx rdi, r8, rbp
adcx r9, rax
mov rax, 0x0 
adcx r14, rax
adox r15, r12
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx rax, r12, rbp
mov rbp, r12
clc
adcx rbp, rdi
mov rdi, r12
adcx rdi, rax
adox r9, r13
adcx r12, rax
mov r13, 0x0 
adcx rax, r13
clc
adcx r8, rcx
adcx rbp, r11
adcx rdi, r15
adox r14, rbx
adcx r12, r9
adcx rax, r14
seto r8b
adc r8b, 0x0
movzx r8, r8b
mov rbx, 0xfffffffefffffc2f 
mov rcx, rbp
sub rcx, rbx
mov r11, rdi
sbb r11, rdx
mov r15, r12
sbb r15, rdx
mov r9, rax
sbb r9, rdx
movzx r8, r8b
sbb r8, r13
cmovc r9, rax
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x18 ], r9
cmovc rcx, rbp
mov [ r8 + 0x0 ], rcx
cmovc r15, r12
mov [ r8 + 0x10 ], r15
cmovc r11, rdi
mov [ r8 + 0x8 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6905
; seed 0905171655312150 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1969491 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=75, initial num_batches=31): 128145 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0650650345698457
; number reverted permutation / tried permutation: 85572 / 95358 =89.738%
; number reverted decision / tried decision: 65751 / 94641 =69.474%
; validated in 3.756s
