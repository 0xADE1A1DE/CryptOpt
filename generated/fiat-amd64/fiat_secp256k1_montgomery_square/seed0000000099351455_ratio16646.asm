SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
test al, al
adox rax, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r9, [ rsi + 0x10 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, r12
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], r14
mulx r14, r9, r12
mov r12, r9
adcx r12, r15
mov r15, r9
adcx r15, r14
adcx r9, r14
adox rbx, r10
mov r10, 0x0 
adcx r14, r10
clc
adcx rdi, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, rdi, [ rsi + 0x18 ]
adcx r12, rax
adox rdi, rbp
adox r8, r10
adcx r15, rbx
mov rdx, -0x3 
inc rdx
adox r11, r12
adcx r9, rdi
adcx r14, r8
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx rax, rbp, r11
mov rax, 0xffffffffffffffff 
mov rdx, rbp
mulx rbx, rbp, rax
mov r12, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, rdx
mov rdx, [ rsi + 0x18 ]
mulx rax, r10, [ rsi + 0x8 ]
setc dl
clc
adcx rdi, rcx
adox rdi, r15
mov cl, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r13
mulx r13, r15, [ rsi + 0x10 ]
adcx r15, r8
adox r15, r9
mov rdx, 0xfffffffefffffc2f 
mulx r8, r9, r12
adcx r10, r13
adox r10, r14
mov r14, 0x0 
adcx rax, r14
mov r12, rbp
clc
adcx r12, r8
movzx r13, cl
adox r13, rax
mov rcx, rbp
adcx rcx, rbx
adcx rbp, rbx
adcx rbx, r14
clc
adcx r9, r11
adcx r12, rdi
adcx rcx, r15
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, [ rsi + 0x10 ]
adcx rbp, r10
adcx rbx, r13
mov rdx, [ rsi + 0x10 ]
mulx r15, rdi, [ rsi + 0x0 ]
setc dl
clc
adcx r9, r15
movzx r8, dl
adox r8, r14
mov r10, -0x3 
inc r10
adox rdi, r12
adox r9, rcx
mov rdx, [ rsi + 0x10 ]
mulx r13, rax, rdx
adcx rax, r11
adox rax, rbp
mov rdx, [ rsi + 0x18 ]
mulx rcx, r12, [ rsi + 0x10 ]
adcx r12, r13
adcx rcx, r14
mov rdx, 0xd838091dd2253531 
mulx rbp, r11, rdi
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx r15, rbp, r11
mov rdx, [ rsi + 0x18 ]
mulx r14, r13, [ rsi + 0x0 ]
adox r12, rbx
adox rcx, r8
mov rdx, 0xfffffffefffffc2f 
mulx r8, rbx, r11
mov r11, rbp
clc
adcx r11, r8
mov r8, rbp
adcx r8, r15
seto r10b
mov rdx, -0x2 
inc rdx
adox r14, [ rsp - 0x30 ]
adcx rbp, r15
mov rdx, 0x0 
adcx r15, rdx
clc
adcx rbx, rdi
adcx r11, r9
adcx r8, rax
adcx rbp, r12
adcx r15, rcx
movzx rbx, r10b
adcx rbx, rdx
mov rdi, [ rsp - 0x40 ]
adox rdi, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mulx rax, r9, rdx
adox r9, [ rsp - 0x48 ]
mov rdx, 0x0 
adox rax, rdx
xor r12, r12
adox r13, r11
mov rdx, 0xd838091dd2253531 
mulx rcx, r10, r13
adox r14, r8
mov rcx, 0xfffffffefffffc2f 
mov rdx, r10
mulx r11, r10, rcx
adox rdi, rbp
adox r9, r15
mov r8, 0xffffffffffffffff 
mulx r15, rbp, r8
mov rdx, rbp
adcx rdx, r11
mov r11, rbp
adcx r11, r15
adcx rbp, r15
adox rax, rbx
seto bl
mov rcx, -0x3 
inc rcx
adox r10, r13
adox rdx, r14
adox r11, rdi
adox rbp, r9
adcx r15, r12
adox r15, rax
movzx r10, bl
adox r10, r12
mov r13, 0xfffffffefffffc2f 
mov r14, rdx
sub r14, r13
mov rdi, r11
sbb rdi, r8
mov r9, rbp
sbb r9, r8
mov rbx, r15
sbb rbx, r8
sbb r10, r12
cmovc rbx, r15
cmovc r14, rdx
cmovc r9, rbp
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x0 ], r14
mov [ r10 + 0x10 ], r9
cmovc rdi, r11
mov [ r10 + 0x8 ], rdi
mov [ r10 + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6646
; seed 3154247929558328 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1347208 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=69, initial num_batches=31): 90607 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06725539040742039
; number reverted permutation / tried permutation: 74328 / 94732 =78.461%
; number reverted decision / tried decision: 61455 / 95267 =64.508%
; validated in 3.987s
