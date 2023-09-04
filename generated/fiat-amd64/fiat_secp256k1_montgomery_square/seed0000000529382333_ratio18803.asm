SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, 0xd838091dd2253531 
mulx r9, r8, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
test al, al
adox r13, r10
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], rdi
mulx rdi, r10, r8
adcx r9, rcx
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r15
mov [ rsp - 0x38 ], r13
mulx r13, r15, [ rsi + 0x10 ]
adox rcx, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rcx
mulx rcx, r14, [ rsi + 0x18 ]
adcx r15, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], rcx
mulx rcx, rbx, [ rsi + 0x18 ]
adcx rbx, r13
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r14
mulx r14, r13, [ rsi + 0x18 ]
adox r13, r8
mov rdx, 0x0 
adox r14, rdx
xor r8, r8
adox rbp, r11
mov rdx, r10
adcx rdx, r12
mov rbp, r10
adcx rbp, rdi
adcx r10, rdi
adox rdx, r9
adox rbp, r15
adox r10, rbx
adcx rdi, r8
clc
adcx rax, rdx
adcx rbp, [ rsp - 0x38 ]
adox rdi, rcx
mov r11, 0xd838091dd2253531 
mov rdx, r11
mulx r12, r11, rax
adcx r10, [ rsp - 0x30 ]
mov r12, 0xfffffffefffffc2f 
mov rdx, r12
mulx r9, r12, r11
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx rbx, r15, r11
seto cl
mov r11, -0x3 
inc r11
adox r12, rax
adcx r13, rdi
movzx r12, cl
adcx r12, r14
mov r14, r15
setc al
clc
adcx r14, r9
adox r14, rbp
mov rbp, r15
adcx rbp, rbx
adcx r15, rbx
adox rbp, r10
mov rdx, [ rsi + 0x10 ]
mulx rdi, rcx, rdx
adox r15, r13
adcx rbx, r8
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rsi + 0x10 ]
adox rbx, r12
movzx rdx, al
adox rdx, r8
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, rax, [ rsi + 0x10 ]
test al, al
adox r9, [ rsp - 0x40 ]
adox rcx, [ rsp - 0x48 ]
adcx r10, r14
adcx r9, rbp
adcx rcx, r15
adox rax, rdi
mov rdx, 0xd838091dd2253531 
mulx rbp, r14, r10
adox r12, r8
mov rbp, 0xfffffffefffffc2f 
mov rdx, r14
mulx rdi, r14, rbp
mov r15, 0xffffffffffffffff 
mulx r11, r8, r15
mov rdx, r8
mov r15, -0x2 
inc r15
adox rdx, rdi
mov rdi, r8
adox rdi, r11
adox r8, r11
mov r15, 0x0 
adox r11, r15
adcx rax, rbx
mov rbx, -0x3 
inc rbx
adox r14, r10
adcx r12, r13
adox rdx, r9
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r13, [ rsi + 0x0 ]
adox rdi, rcx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r9, [ rsi + 0x8 ]
setc dl
clc
adcx r9, r10
adcx rcx, [ rsp - 0x20 ]
adox r8, rax
adox r11, r12
mov al, dl
mov rdx, [ rsi + 0x18 ]
mulx r10, r12, rdx
movzx rdx, al
adox rdx, r15
adcx r12, [ rsp - 0x28 ]
adc r10, 0x0
add r13, r14
mov rax, 0xd838091dd2253531 
xchg rdx, rax
mulx r15, r14, r13
mov r15, 0xffffffffffffffff 
mov rdx, r14
mulx rbx, r14, r15
adcx r9, rdi
adcx rcx, r8
adcx r12, r11
mulx r8, rdi, rbp
mov r11, r14
mov rdx, -0x2 
inc rdx
adox r11, r8
mov r8, r14
adox r8, rbx
adox r14, rbx
adcx r10, rax
setc al
clc
adcx rdi, r13
adcx r11, r9
adcx r8, rcx
adcx r14, r12
mov rdi, 0x0 
adox rbx, rdi
adcx rbx, r10
movzx r13, al
adc r13, 0x0
mov r9, r11
sub r9, rbp
mov rcx, r8
sbb rcx, r15
mov r12, r14
sbb r12, r15
mov rax, rbx
sbb rax, r15
sbb r13, rdi
cmovc r12, r14
cmovc rcx, r8
cmovc r9, r11
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x8 ], rcx
mov [ r13 + 0x0 ], r9
cmovc rax, rbx
mov [ r13 + 0x10 ], r12
mov [ r13 + 0x18 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.8803
; seed 0014512186756988 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1625522 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=89, initial num_batches=31): 100627 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06190442208718184
; number reverted permutation / tried permutation: 82318 / 95190 =86.478%
; number reverted decision / tried decision: 65932 / 94809 =69.542%
; validated in 3.444s
