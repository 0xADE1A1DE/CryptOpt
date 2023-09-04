SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rax
mov r15, 0xfffffffefffffc2f 
mov rdx, r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r9
mulx r9, r10, [ rsi + 0x18 ]
adox rbp, rcx
adox r10, rbx
mov rdx, 0xffffffffffffffff 
mulx rbx, rcx, r14
mov r14, rcx
adcx r14, rdi
mov rdi, 0x0 
adox r9, rdi
mov rdx, -0x3 
inc rdx
adox r15, rax
adox r14, r11
mov r15, rcx
adcx r15, rbx
adox r15, rbp
adcx rcx, rbx
adox rcx, r10
adcx rbx, rdi
adox rbx, r9
clc
adcx r8, r13
seto al
mov r13, -0x3 
inc r13
adox r12, r14
mov r13, 0xd838091dd2253531 
mov rdx, r13
mulx r11, r13, r12
adox r8, r15
mov r11, 0xfffffffefffffc2f 
mov rdx, r11
mulx rbp, r11, r13
mov rdx, [ rsi + 0x10 ]
mulx r9, r10, [ rsi + 0x8 ]
adcx r10, [ rsp - 0x38 ]
adox r10, rcx
mov rdx, [ rsi + 0x8 ]
mulx r15, r14, [ rsi + 0x18 ]
adcx r14, r9
adcx r15, rdi
adox r14, rbx
mov rdx, 0xffffffffffffffff 
mulx rbx, rcx, r13
mov r13, rcx
clc
adcx r13, rbp
mov rbp, rcx
adcx rbp, rbx
adcx rcx, rbx
adcx rbx, rdi
clc
adcx r11, r12
adcx r13, r8
adcx rbp, r10
mov rdx, [ rsi + 0x10 ]
mulx r12, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x0 ]
setc dl
clc
adcx r11, r9
movzx r10, al
adox r10, r15
seto al
dec rdi
movzx rdx, dl
adox rdx, rdi
adox r14, rcx
adox rbx, r10
seto r15b
inc rdi
adox r8, r13
adcx r12, [ rsp - 0x40 ]
mov rcx, 0xd838091dd2253531 
mov rdx, r8
mulx r13, r8, rcx
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, r9, [ rsi + 0x18 ]
adox r11, rbp
adox r12, r14
adcx r9, [ rsp - 0x48 ]
mov rdx, 0xfffffffefffffc2f 
mulx r14, rbp, r8
adox r9, rbx
mov rbx, 0xffffffffffffffff 
mov rdx, r8
mulx rdi, r8, rbx
movzx rdx, r15b
movzx rax, al
lea rdx, [ rdx + rax ]
mov rax, 0x0 
adcx r10, rax
mov r15, r8
clc
adcx r15, r14
adox r10, rdx
seto r14b
mov rdx, -0x3 
inc rdx
adox rbp, r13
mov rbp, r8
adcx rbp, rdi
adox r15, r11
adcx r8, rdi
adcx rdi, rax
adox rbp, r12
mov rdx, [ rsi + 0x0 ]
mulx r11, r13, [ rsi + 0x18 ]
adox r8, r9
adox rdi, r10
mov rdx, [ rsi + 0x10 ]
mulx r9, r12, [ rsi + 0x18 ]
movzx rdx, r14b
adox rdx, rax
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx rax, r10, [ rsi + 0x8 ]
xor rdx, rdx
adox r10, r11
adcx r13, r15
adcx r10, rbp
mov rdx, rcx
mulx r15, rcx, r13
adox r12, rax
adcx r12, r8
mov rdx, [ rsi + 0x18 ]
mulx rbp, r15, rdx
adox r15, r9
adcx r15, rdi
mov rdx, 0x0 
adox rbp, rdx
mov r11, 0xfffffffefffffc2f 
mov rdx, rcx
mulx r8, rcx, r11
adcx rbp, r14
mulx r9, rdi, rbx
mov r14, -0x2 
inc r14
adox rcx, r13
mov rcx, rdi
setc al
clc
adcx rcx, r8
mov r13, rdi
adcx r13, r9
adox rcx, r10
adox r13, r12
adcx rdi, r9
mov r10, 0x0 
adcx r9, r10
adox rdi, r15
adox r9, rbp
movzx rdx, al
adox rdx, r10
mov r12, rcx
sub r12, r11
mov r15, r13
sbb r15, rbx
mov r8, rdi
sbb r8, rbx
mov rax, r9
sbb rax, rbx
sbb rdx, r10
cmovc rax, r9
cmovc r15, r13
cmovc r8, rdi
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r8
mov [ rdx + 0x8 ], r15
cmovc r12, rcx
mov [ rdx + 0x18 ], rax
mov [ rdx + 0x0 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.7348
; seed 3163894561976425 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1262376 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=89, initial num_batches=31): 83345 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06602232615322218
; number reverted permutation / tried permutation: 74790 / 94908 =78.803%
; number reverted decision / tried decision: 66562 / 95091 =69.998%
; validated in 3.51s
