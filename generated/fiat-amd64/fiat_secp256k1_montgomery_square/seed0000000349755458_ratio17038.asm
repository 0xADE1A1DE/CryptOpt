SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbx
add rax, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r12
mulx r12, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], rcx
mulx rcx, r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], rbp
mov [ rsp - 0x28 ], rcx
mulx rcx, rbp, [ rsi + 0x0 ]
adcx r8, r10
adcx r13, r9
mov rdx, -0x2 
inc rdx
adox r15, r11
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r10, r15, rbx
mov r11, 0x0 
adcx r14, r11
mov r9, r15
clc
adcx r9, rdi
adox r9, rax
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbx, [ rsi + 0x8 ]
mov rdx, r15
adcx rdx, r10
adox rdx, r8
adcx r15, r10
adcx r10, r11
adox r15, r13
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r13, r8, [ rsi + 0x8 ]
clc
adcx r8, r9
mov rdx, 0xd838091dd2253531 
mulx r11, r9, r8
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rbp
mulx rbp, r11, [ rsi + 0x8 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x18 ], rcx
mov [ rsp - 0x10 ], rdi
mulx rdi, rcx, r9
adox r10, r14
seto r14b
mov rdx, -0x2 
inc rdx
adox r12, r13
adcx r12, rax
adox r11, [ rsp - 0x28 ]
mov rax, 0xffffffffffffffff 
mov rdx, r9
mulx r13, r9, rax
adcx r11, r15
mov rdx, [ rsi + 0x18 ]
mulx rax, r15, [ rsi + 0x8 ]
adox r15, rbp
mov rdx, 0x0 
adox rax, rdx
adcx r15, r10
movzx rbp, r14b
adcx rbp, rax
mov r14, -0x3 
inc r14
adox rcx, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, r9
setc r10b
clc
adcx rdx, rdi
adox rdx, r12
mov rdi, r9
adcx rdi, r13
adcx r9, r13
setc r12b
clc
adcx rcx, rdx
adox rdi, r11
mov r11, 0xd838091dd2253531 
mov rdx, r11
mulx rax, r11, rcx
adox r9, r15
movzx rax, r12b
lea rax, [ rax + r13 ]
adox rax, rbp
movzx r13, r10b
mov r15, 0x0 
adox r13, r15
mov r10, -0x3 
inc r10
adox rbx, r8
adcx rbx, rdi
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, [ rsi + 0x18 ]
mov rdx, [ rsp - 0x30 ]
adox rdx, [ rsp - 0x10 ]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx rdi, r12, [ rsi + 0x8 ]
adox r10, [ rsp - 0x48 ]
adox rbp, r15
adcx r8, r9
adcx r10, rax
mov rdx, -0x3 
inc rdx
adox r12, [ rsp - 0x18 ]
adox rdi, [ rsp - 0x38 ]
mov rdx, 0xfffffffefffffc2f 
mulx rax, r9, r11
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r14, r15, r11
adcx rbp, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, rdx
adox r11, [ rsp - 0x40 ]
setc dl
clc
adcx r9, rcx
mov r9, r15
seto cl
mov [ rsp - 0x8 ], r11
mov r11, -0x2 
inc r11
adox r9, rax
movzx rax, cl
lea rax, [ rax + r13 ]
mov r13, r15
adox r13, r14
adcx r9, rbx
adcx r13, r8
adox r15, r14
mov rbx, 0x0 
adox r14, rbx
adcx r15, r10
adcx r14, rbp
mov r8, -0x3 
inc r8
adox r9, [ rsp - 0x20 ]
movzx r10, dl
adcx r10, rbx
mov rdx, 0xd838091dd2253531 
mulx rcx, rbp, r9
mov rcx, 0xfffffffefffffc2f 
mov rdx, rbp
mulx rbx, rbp, rcx
adox r12, r13
adox rdi, r15
adox r14, [ rsp - 0x8 ]
mov r13, 0xffffffffffffffff 
mulx r8, r15, r13
adox rax, r10
mov r10, r15
clc
adcx r10, rbx
mov rdx, r15
adcx rdx, r8
adcx r15, r8
seto bl
inc r11
adox rbp, r9
adcx r8, r11
adox r10, r12
adox rdx, rdi
adox r15, r14
adox r8, rax
movzx rbp, bl
adox rbp, r11
mov r9, r10
sub r9, rcx
mov r12, rdx
sbb r12, r13
mov rdi, r15
sbb rdi, r13
mov r14, r8
sbb r14, r13
sbb rbp, r11
cmovc r9, r10
cmovc r12, rdx
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x8 ], r12
cmovc rdi, r15
mov [ rbp + 0x10 ], rdi
cmovc r14, r8
mov [ rbp + 0x0 ], r9
mov [ rbp + 0x18 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.7038
; seed 0458085431550023 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1064609 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=100, initial num_batches=31): 75605 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07101668312028171
; number reverted permutation / tried permutation: 74361 / 94797 =78.442%
; number reverted decision / tried decision: 64865 / 95202 =68.134%
; validated in 2.037s
