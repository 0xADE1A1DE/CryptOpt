SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, r10
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, rax
mov rbx, 0xfffffffefffffc2f 
mov rdx, r10
mov [ rsp - 0x78 ], rbp
mulx rbp, r10, rbx
mov [ rsp - 0x70 ], r12
mov r12, 0xffffffffffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r12, r15, rdx
adcx r15, r9
mov rdx, [ rsi + 0x0 ]
mulx rbx, r9, [ rsi + 0x10 ]
adox r9, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r8
mulx r8, r15, [ rsi + 0x10 ]
adcx r15, r12
adox rcx, rbx
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r12, [ rsi + 0x18 ]
adcx r12, r8
adc rbx, 0x0
test al, al
adox r10, rax
mov r10, r13
adcx r10, rbp
mov rdx, r13
adcx rdx, r14
adcx r13, r14
adox r10, r11
adox rdx, r9
mov rax, 0x0 
adcx r14, rax
adox r13, rcx
adox r14, rdi
clc
adcx r10, [ rsp - 0x40 ]
mov r11, 0xd838091dd2253531 
xchg rdx, r10
mulx r9, rbp, r11
adcx r10, [ rsp - 0x48 ]
adcx r15, r13
adcx r12, r14
setc r9b
movzx r9, r9b
adox r9, rbx
mov r8, 0xfffffffefffffc2f 
xchg rdx, r8
mulx rdi, rcx, rbp
mov rbx, 0xffffffffffffffff 
mov rdx, rbp
mulx r13, rbp, rbx
mov r14, rbp
clc
adcx r14, rdi
mov rdx, rbp
adcx rdx, r13
adcx rbp, r13
adcx r13, rax
clc
adcx rcx, r8
adcx r14, r10
adcx rdx, r15
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, r15, [ rsi + 0x10 ]
seto dl
mov rbx, -0x3 
inc rbx
adox r15, r14
adcx rbp, r12
mov r12b, dl
mov rdx, [ rsi + 0x8 ]
mulx rax, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, rdx
adcx r13, r9
setc dl
clc
adcx r14, rdi
adcx rbx, rax
movzx r9, dl
movzx r12, r12b
lea r9, [ r9 + r12 ]
adcx r8, r11
mov r12, 0xd838091dd2253531 
mov rdx, r12
mulx rdi, r12, r15
mov rdi, 0x0 
adcx r10, rdi
mov rax, 0xfffffffefffffc2f 
mov rdx, rax
mulx r11, rax, r12
adox r14, rcx
adox rbx, rbp
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx rbp, rcx, r12
mov r12, rcx
clc
adcx r12, r11
mov r11, rcx
adcx r11, rbp
adcx rcx, rbp
adox r8, r13
adcx rbp, rdi
clc
adcx rax, r15
adcx r12, r14
adcx r11, rbx
mov rdx, [ rsi + 0x18 ]
mulx r15, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, r13, [ rsi + 0x8 ]
adox r10, r9
adcx rcx, r8
mov rdx, [ rsi + 0x18 ]
mulx rbx, r9, rdx
seto dl
mov r8, -0x3 
inc r8
adox rax, r12
mov r12, 0xd838091dd2253531 
xchg rdx, rax
mulx r8, rdi, r12
adcx rbp, r10
movzx r8, al
mov r10, 0x0 
adcx r8, r10
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r10, [ rsi + 0x18 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rbp
mulx rbp, r8, rdi
clc
adcx r13, r15
adcx r10, r14
adox r13, r11
adox r10, rcx
adcx r9, r12
mov r11, 0x0 
adcx rbx, r11
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r14, r15, rdi
mov rcx, r15
clc
adcx rcx, rbp
mov rdi, r15
adcx rdi, r14
adox r9, [ rsp - 0x30 ]
adox rbx, [ rsp - 0x38 ]
adcx r15, r14
seto r12b
mov rbp, -0x3 
inc rbp
adox r8, rax
adox rcx, r13
adox rdi, r10
adcx r14, r11
adox r15, r9
adox r14, rbx
movzx r8, r12b
adox r8, r11
mov rax, 0xfffffffefffffc2f 
mov r13, rcx
sub r13, rax
mov r10, rdi
sbb r10, rdx
mov r9, r15
sbb r9, rdx
mov r12, r14
sbb r12, rdx
sbb r8, r11
cmovc r10, rdi
cmovc r9, r15
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x8 ], r10
cmovc r13, rcx
mov [ r8 + 0x10 ], r9
cmovc r12, r14
mov [ r8 + 0x0 ], r13
mov [ r8 + 0x18 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6813
; seed 3462850414281041 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2106841 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=76, initial num_batches=31): 133211 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06322783731662712
; number reverted permutation / tried permutation: 85354 / 94972 =89.873%
; number reverted decision / tried decision: 66747 / 95027 =70.240%
; validated in 3.588s
