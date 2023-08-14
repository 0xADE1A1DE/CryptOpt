SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
sub rsp, 136
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
test al, al
adox rcx, r11
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x18 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
adox r11, r8
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x48 ], r13
mulx r13, r8, r14
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], rbx
mulx rbx, r12, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], rdi
mulx rdi, r9, r14
mov r14, r9
adcx r14, r13
adox r12, rbp
mov rbp, r9
adcx rbp, rdi
mov r13, 0x0 
adox rbx, r13
adcx r9, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r15
mulx r15, r13, [ rax + 0x0 ]
adc rdi, 0x0
add r8, r10
adcx r14, rcx
mov rdx, -0x2 
inc rdx
adox r13, r14
mov r8, 0xd838091dd2253531 
mov rdx, r8
mulx r10, r8, r13
adcx rbp, r11
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx rcx, r10, r8
mov rdx, [ rsi + 0x8 ]
mulx r14, r11, [ rax + 0x18 ]
adcx r9, r12
adcx rdi, rbx
mov rdx, 0xfffffffefffffc2f 
mulx rbx, r12, r8
setc r8b
clc
adcx r15, [ rsp - 0x20 ]
adox r15, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r15
mulx r15, rbp, [ rax + 0x10 ]
adcx rbp, [ rsp - 0x28 ]
adox rbp, r9
adcx r11, r15
adox r11, rdi
mov rdx, 0x0 
adcx r14, rdx
mov r9, r10
clc
adcx r9, rbx
mov rdi, r10
adcx rdi, rcx
adcx r10, rcx
adcx rcx, rdx
movzx rbx, r8b
adox rbx, r14
mov rdx, [ rsi + 0x10 ]
mulx r15, r8, [ rax + 0x0 ]
clc
adcx r12, r13
adcx r9, [ rsp - 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], r13
mulx r13, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x8 ], r13
mov [ rsp + 0x0 ], r14
mulx r14, r13, [ rsi + 0x10 ]
adcx rdi, rbp
adcx r10, r11
adcx rcx, rbx
setc dl
clc
adcx r12, r15
seto bpl
mov r11, -0x2 
inc r11
adox r8, r9
movzx rbx, dl
movzx rbp, bpl
lea rbx, [ rbx + rbp ]
adox r12, rdi
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx r15, rbp, r8
mov r15, 0xfffffffefffffc2f 
mov rdx, r15
mulx r9, r15, rbp
mov rdi, 0xffffffffffffffff 
mov rdx, rbp
mulx r11, rbp, rdi
adcx r13, [ rsp - 0x10 ]
adcx r14, [ rsp + 0x0 ]
adox r13, r10
adox r14, rcx
mov r10, [ rsp - 0x8 ]
mov rcx, 0x0 
adcx r10, rcx
mov rdx, rbp
clc
adcx rdx, r9
mov r9, rbp
adcx r9, r11
adcx rbp, r11
adcx r11, rcx
clc
adcx r15, r8
adcx rdx, r12
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, [ rax + 0x8 ]
adcx r9, r13
adcx rbp, r14
adox r10, rbx
mov rdx, [ rsi + 0x18 ]
mulx r13, rbx, [ rax + 0x0 ]
adcx r11, r10
seto dl
mov r14, -0x3 
inc r14
adox rbx, r15
movzx r15, dl
adcx r15, rcx
clc
adcx r8, r13
adox r8, r9
adcx r12, [ rsp - 0x30 ]
adox r12, rbp
mov r9, [ rsp - 0x38 ]
adcx r9, [ rsp - 0x40 ]
adox r9, r11
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx r10, rbp, rbx
mov r10, 0xfffffffefffffc2f 
mov rdx, rbp
mulx r13, rbp, r10
mov r11, [ rsp - 0x48 ]
adcx r11, rcx
mulx r14, rcx, rdi
mov rdx, rcx
clc
adcx rdx, r13
mov r13, rcx
adcx r13, r14
adcx rcx, r14
mov r10, 0x0 
adcx r14, r10
clc
adcx rbp, rbx
adcx rdx, r8
adcx r13, r12
adox r11, r15
adcx rcx, r9
adcx r14, r11
seto bpl
setc bl
mov r15, 0xfffffffefffffc2f 
mov r8, rdx
sub r8, r15
movzx r12, bl
movzx rbp, bpl
lea r12, [ r12 + rbp ]
mov r9, r13
sbb r9, rdi
mov rbp, rcx
sbb rbp, rdi
mov r11, r14
sbb r11, rdi
sbb r12, r10
cmovc r9, r13
cmovc rbp, rcx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x10 ], rbp
cmovc r8, rdx
mov [ r12 + 0x0 ], r8
cmovc r11, r14
mov [ r12 + 0x8 ], r9
mov [ r12 + 0x18 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 136
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.7485
; seed 1743018262548742 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1085273 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=96, initial num_batches=31): 78670 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07248867335684202
; number reverted permutation / tried permutation: 74784 / 95181 =78.570%
; number reverted decision / tried decision: 64320 / 94818 =67.835%
; validated in 2.254s
