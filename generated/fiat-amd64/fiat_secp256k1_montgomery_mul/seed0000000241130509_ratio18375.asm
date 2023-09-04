SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r10
mov rbx, 0xffffffffffffffff 
mov rdx, rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r9
mov [ rsp - 0x70 ], r12
mov r12, 0xfffffffefffffc2f 
mov rdx, r9
mov [ rsp - 0x68 ], r13
mulx r13, r9, r12
mov rdx, rbx
test al, al
adox rdx, r13
mov r13, rbx
adox r13, rbp
mov [ rsp - 0x60 ], r14
mov r14, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r12, r15, [ rsi + 0x0 ]
adcx r15, r11
adox rbx, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r11, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rbp, rdx
mov [ rsp - 0x48 ], rcx
mov rcx, -0x3 
inc rcx
adox r9, r10
adox r14, r15
adcx r11, r12
adox r13, r11
mov rdx, [ rax + 0x18 ]
mulx r10, r9, [ rsi + 0x0 ]
adcx r9, rdi
adox rbx, r9
mov rdx, [ rsi + 0x8 ]
mulx r15, r12, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r11, rdi, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r10, rdx
clc
adcx rdi, r15
mov rdx, [ rax + 0x10 ]
mulx r15, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r8
mulx r8, rcx, [ rsi + 0x8 ]
adcx r9, r11
adcx rcx, r15
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r12, r14
mov r14, 0xd838091dd2253531 
mov rdx, r14
mulx r11, r14, r12
mov r11, 0xfffffffefffffc2f 
mov rdx, r11
mulx r15, r11, r14
adcx rdi, r13
adcx r9, rbx
adox rbp, r10
adcx rcx, rbp
mov r13, 0xffffffffffffffff 
mov rdx, r13
mulx rbx, r13, r14
seto r10b
movzx r10, r10b
adcx r10, r8
mov r8, r13
mov r14, -0x2 
inc r14
adox r8, r15
mov rdx, [ rax + 0x18 ]
mulx rbp, r15, [ rsi + 0x10 ]
mov rdx, r13
adox rdx, rbx
adox r13, rbx
setc r14b
clc
adcx r11, r12
adcx r8, rdi
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r12, [ rax + 0x10 ]
adcx r11, r9
adcx r13, rcx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r9, [ rax + 0x8 ]
mov rdx, 0x0 
adox rbx, rdx
mov [ rsp - 0x38 ], rbp
mov rbp, -0x3 
inc rbp
adox r9, [ rsp - 0x40 ]
adox r12, rcx
adcx rbx, r10
adox r15, rdi
movzx r10, r14b
adcx r10, rdx
clc
adcx r8, [ rsp - 0x48 ]
mov r14, 0xd838091dd2253531 
mov rdx, r14
mulx rdi, r14, r8
adcx r9, r11
adcx r12, r13
adcx r15, rbx
mov rdi, 0xfffffffefffffc2f 
mov rdx, rdi
mulx r11, rdi, r14
mov r13, 0xffffffffffffffff 
mov rdx, r14
mulx rcx, r14, r13
mov rbx, r14
seto dl
inc rbp
adox rbx, r11
mov r11, r14
adox r11, rcx
movzx rbp, dl
mov r13, [ rsp - 0x38 ]
lea rbp, [ rbp + r13 ]
adcx rbp, r10
adox r14, rcx
setc r13b
clc
adcx rdi, r8
adcx rbx, r9
adcx r11, r12
adcx r14, r15
mov rdi, 0x0 
adox rcx, rdi
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, [ rax + 0x8 ]
adcx rcx, rbp
mov rdx, [ rax + 0x0 ]
mulx r12, r9, [ rsi + 0x18 ]
movzx rdx, r13b
adc rdx, 0x0
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, r13, [ rax + 0x10 ]
xor rdx, rdx
adox r10, r12
adcx r9, rbx
mov rdi, 0xd838091dd2253531 
mov rdx, r9
mulx rbx, r9, rdi
mov rbx, 0xfffffffefffffc2f 
xchg rdx, rbx
mulx rdi, r12, r9
adcx r10, r11
mov r11, 0xffffffffffffffff 
mov rdx, r9
mov [ rsp - 0x30 ], r10
mulx r10, r9, r11
adox r13, r8
mov rdx, [ rsi + 0x18 ]
mulx r11, r8, [ rax + 0x18 ]
adox r8, rbp
adcx r13, r14
adcx r8, rcx
mov rdx, 0x0 
adox r11, rdx
mov r14, -0x3 
inc r14
adox r12, rbx
adcx r11, r15
mov r12, r9
setc cl
clc
adcx r12, rdi
mov r15, r9
adcx r15, r10
adcx r9, r10
adox r12, [ rsp - 0x30 ]
adox r15, r13
adox r9, r8
adcx r10, rdx
adox r10, r11
movzx rbp, cl
adox rbp, rdx
mov rbx, 0xfffffffefffffc2f 
mov rdi, r12
sub rdi, rbx
mov r13, 0xffffffffffffffff 
mov r8, r15
sbb r8, r13
mov rcx, r9
sbb rcx, r13
mov r11, r10
sbb r11, r13
sbb rbp, rdx
cmovc r11, r10
cmovc rdi, r12
cmovc rcx, r9
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], rdi
cmovc r8, r15
mov [ rbp + 0x18 ], r11
mov [ rbp + 0x8 ], r8
mov [ rbp + 0x10 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.8375
; seed 3383739588560741 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2135866 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=68, initial num_batches=31): 137480 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06436733390577873
; number reverted permutation / tried permutation: 81961 / 94912 =86.355%
; number reverted decision / tried decision: 66571 / 95087 =70.011%
; validated in 3.911s
