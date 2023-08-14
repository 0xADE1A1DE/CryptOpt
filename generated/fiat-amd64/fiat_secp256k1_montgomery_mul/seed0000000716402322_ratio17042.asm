SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r9
mov rdi, 0xffffffffffffffff 
mov rdx, r15
mov [ rsp - 0x48 ], r14
mulx r14, r15, rdi
test al, al
adox r10, rbx
adox rbp, r11
mov r11, 0xfffffffefffffc2f 
mulx rdi, rbx, r11
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x40 ], r13
mulx r13, r11, [ rsi + 0x10 ]
adox rcx, r12
mov rdx, 0x0 
adox r8, rdx
mov r12, r15
adcx r12, rdi
mov rdi, r15
adcx rdi, r14
adcx r15, r14
adc r14, 0x0
mov [ rsp - 0x38 ], r13
xor r13, r13
adox rbx, r9
adox r12, r10
adox rdi, rbp
adox r15, rcx
adox r14, r8
mov rdx, [ rsi + 0x8 ]
mulx r9, rbx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rbp, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r11
mulx r11, r13, [ rax + 0x8 ]
adcx r13, r9
adcx rcx, r11
adcx r10, r8
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx rbx, r12
mov r12, 0xd838091dd2253531 
mov rdx, r12
mulx r9, r12, rbx
mov r9, 0xfffffffefffffc2f 
mov rdx, r12
mulx r8, r12, r9
adcx r13, rdi
adcx rcx, r15
adcx r10, r14
seto dil
movzx rdi, dil
adcx rdi, rbp
mov r15, 0xffffffffffffffff 
mulx r11, r14, r15
mov rbp, -0x2 
inc rbp
adox r12, rbx
mov r12, r14
setc bl
clc
adcx r12, r8
adox r12, r13
mov rdx, r14
adcx rdx, r11
adcx r14, r11
mov r8, 0x0 
adcx r11, r8
adox rdx, rcx
adox r14, r10
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, rcx, [ rax + 0x10 ]
adox r11, rdi
movzx rdx, bl
adox rdx, r8
test al, al
adox r12, [ rsp - 0x30 ]
mov rdi, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x48 ]
adox rdi, r13
adox rcx, r14
mov rbx, 0xd838091dd2253531 
xchg rdx, rbx
mulx r14, r13, r12
mov rdx, [ rsi + 0x10 ]
mulx r8, r14, [ rax + 0x18 ]
adcx r14, r10
mov rdx, r9
mulx r10, r9, r13
mov rbp, 0x0 
adcx r8, rbp
clc
adcx r9, r12
adox r14, r11
mov rdx, r15
mulx r15, r9, r13
adox r8, rbx
mov r11, r9
seto bl
mov r12, -0x3 
inc r12
adox r11, r10
adcx r11, rdi
mov rdi, r9
adox rdi, r15
mov rdx, [ rax + 0x8 ]
mulx r10, r13, [ rsi + 0x18 ]
adox r9, r15
adox r15, rbp
adcx rdi, rcx
adcx r9, r14
adcx r15, r8
mov rdx, [ rax + 0x0 ]
mulx r14, rcx, [ rsi + 0x18 ]
movzx rdx, bl
adc rdx, 0x0
mov rbx, rdx
mov rdx, [ rax + 0x10 ]
mulx rbp, r8, [ rsi + 0x18 ]
xor rdx, rdx
adox r13, r14
adcx rcx, r11
adcx r13, rdi
adox r8, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, r11, [ rax + 0x18 ]
adcx r8, r9
mov rdx, 0xd838091dd2253531 
mulx r9, rdi, rcx
adox r11, rbp
mov r9, 0x0 
adox r10, r9
adcx r11, r15
mov r15, 0xfffffffefffffc2f 
mov rdx, rdi
mulx r14, rdi, r15
mov rbp, -0x3 
inc rbp
adox rdi, rcx
mov rdi, 0xffffffffffffffff 
mulx rcx, rbp, rdi
adcx r10, rbx
mov rbx, rbp
setc dl
clc
adcx rbx, r14
adox rbx, r13
mov r13, rbp
adcx r13, rcx
adcx rbp, rcx
adox r13, r8
adcx rcx, r9
adox rbp, r11
adox rcx, r10
movzx r8, dl
adox r8, r9
mov r11, rbx
sub r11, r15
mov r14, r13
sbb r14, rdi
mov rdx, rbp
sbb rdx, rdi
mov r10, rcx
sbb r10, rdi
sbb r8, r9
cmovc r10, rcx
cmovc rdx, rbp
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x10 ], rdx
cmovc r14, r13
mov [ r8 + 0x8 ], r14
mov [ r8 + 0x18 ], r10
cmovc r11, rbx
mov [ r8 + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.7042
; seed 3621627451044131 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1980074 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=65, initial num_batches=31): 127975 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0646314228660141
; number reverted permutation / tried permutation: 69667 / 95022 =73.317%
; number reverted decision / tried decision: 61370 / 94977 =64.616%
; validated in 6.008s
