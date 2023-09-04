SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, 0xd838091dd2253531 
mulx r8, rcx, r10
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rax + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r12
mulx r12, rcx, [ rax + 0x10 ]
test al, al
adox rdi, r10
mov rdi, rbx
adcx rdi, r13
mov rdx, rbx
adcx rdx, rbp
adcx rbx, rbp
mov r10, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], r12
mulx r12, r13, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r13, r11
adox rdi, r13
mov rdx, [ rsi + 0x10 ]
mulx r13, r11, [ rax + 0x10 ]
adcx r8, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r13
mulx r13, r12, [ rax + 0x18 ]
adox r10, r8
adcx r12, r9
mov rdx, 0x0 
adcx r13, rdx
mov rdx, [ rax + 0x0 ]
mulx r8, r9, [ rsi + 0x8 ]
adox rbx, r12
clc
adcx r9, rdi
adox rbp, r13
mov rdx, [ rax + 0x18 ]
mulx r12, rdi, [ rsi + 0x8 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x28 ], r11
mulx r11, r13, r9
mov r11, 0xffffffffffffffff 
mov rdx, r13
mov [ rsp - 0x20 ], r12
mulx r12, r13, r11
seto r11b
mov [ rsp - 0x18 ], rbp
mov rbp, -0x2 
inc rbp
adox r14, r8
adcx r14, r10
adox rcx, r15
adox rdi, [ rsp - 0x38 ]
adcx rcx, rbx
mov r15, 0xfffffffefffffc2f 
mulx r8, r10, r15
mov rbx, r13
seto dl
inc rbp
adox rbx, r8
mov r8, r13
adox r8, r12
adox r13, r12
adcx rdi, [ rsp - 0x18 ]
movzx rbp, dl
mov r15, [ rsp - 0x20 ]
lea rbp, [ rbp + r15 ]
movzx r15, r11b
adcx r15, rbp
setc r11b
clc
adcx r10, r9
adcx rbx, r14
adcx r8, rcx
adcx r13, rdi
mov r10, 0x0 
adox r12, r10
adcx r12, r15
movzx r9, r11b
adc r9, 0x0
mov rdx, [ rax + 0x18 ]
mulx rcx, r14, [ rsi + 0x10 ]
add rbx, [ rsp - 0x40 ]
mov rdx, 0xd838091dd2253531 
mulx rbp, rdi, rbx
mov rdx, [ rsi + 0x10 ]
mulx r11, rbp, [ rax + 0x8 ]
mov rdx, 0xfffffffefffffc2f 
mulx r10, r15, rdi
mov rdx, -0x2 
inc rdx
adox rbp, [ rsp - 0x48 ]
adox r11, [ rsp - 0x28 ]
adox r14, [ rsp - 0x30 ]
mov rdx, 0x0 
adox rcx, rdx
adcx rbp, r8
adcx r11, r13
adcx r14, r12
adcx rcx, r9
mov rdx, [ rsi + 0x18 ]
mulx r13, r8, [ rax + 0x0 ]
mov rdx, -0x2 
inc rdx
adox r15, rbx
mov r15, 0xffffffffffffffff 
mov rdx, rdi
mulx r12, rdi, r15
mov r9, rdi
setc bl
clc
adcx r9, r10
adox r9, rbp
mov rdx, rdi
adcx rdx, r12
adcx rdi, r12
mov r10, 0x0 
adcx r12, r10
adox rdx, r11
adox rdi, r14
adox r12, rcx
movzx rbp, bl
adox rbp, r10
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r14, [ rax + 0x8 ]
test al, al
adox r14, r13
adcx r8, r9
adcx r14, r11
mov rdx, 0xd838091dd2253531 
mulx r13, rcx, r8
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r10, r11, [ rax + 0x18 ]
adox r13, rbx
adcx r13, rdi
adox r11, r9
adcx r11, r12
mov rdx, 0x0 
adox r10, rdx
adcx r10, rbp
mov rdi, 0xfffffffefffffc2f 
mov rdx, rdi
mulx r12, rdi, rcx
mov rbp, -0x2 
inc rbp
adox rdi, r8
mov rdx, r15
mulx r15, rdi, rcx
mov rbx, rdi
setc r8b
clc
adcx rbx, r12
mov rcx, rdi
adcx rcx, r15
adox rbx, r14
adox rcx, r13
adcx rdi, r15
mov r14, 0x0 
adcx r15, r14
adox rdi, r11
adox r15, r10
movzx r9, r8b
adox r9, r14
mov r13, 0xfffffffefffffc2f 
mov r11, rbx
sub r11, r13
mov r8, rcx
sbb r8, rdx
mov r10, rdi
sbb r10, rdx
mov r12, r15
sbb r12, rdx
sbb r9, r14
cmovc r11, rbx
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x0 ], r11
cmovc r10, rdi
mov [ r9 + 0x10 ], r10
cmovc r8, rcx
cmovc r12, r15
mov [ r9 + 0x8 ], r8
mov [ r9 + 0x18 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.8630
; seed 3891681890240762 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1350248 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 86597 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06413414424609405
; number reverted permutation / tried permutation: 71508 / 94849 =75.391%
; number reverted decision / tried decision: 65547 / 95150 =68.888%
; validated in 3.513s
