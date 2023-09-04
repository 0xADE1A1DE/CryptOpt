SECTION .text
	GLOBAL fiat_secp256k1_montgomery_square
fiat_secp256k1_montgomery_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, 0xd838091dd2253531 
mov rdx, rax
mulx rcx, rax, r11
mov rcx, 0xfffffffefffffc2f 
xchg rdx, rax
mulx r9, r8, rcx
mov [ rsp - 0x80 ], rbx
mov rbx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
mov rdx, rbp
add rdx, r9
mov r9, rbp
adcx r9, r12
mov [ rsp - 0x68 ], r13
mov r13, -0x2 
inc r13
adox r8, rax
adcx rbp, r12
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mulx r14, rax, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r13, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx rbx, r11, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
clc
adcx r11, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rdi
mulx rdi, r14, [ rsi + 0x8 ]
adcx r14, rbx
adcx r15, rdi
mov rdx, [ rsi + 0x0 ]
mulx rdi, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rcx
mov [ rsp - 0x38 ], r15
mulx r15, rcx, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx rcx, r10
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, r10, [ rsi + 0x18 ]
adcx r10, rdi
adox r8, rcx
adox r9, rbx
mov rdx, 0x0 
adcx r15, rdx
clc
adcx rax, r8
mov rdi, 0xd838091dd2253531 
mov rdx, rdi
mulx rcx, rdi, rax
mov rcx, 0xfffffffefffffc2f 
mov rdx, rcx
mulx rbx, rcx, rdi
adox rbp, r10
adcx r11, r9
adcx r14, rbp
adox r12, r15
adcx r12, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, r10, [ rsi + 0x10 ]
setc dl
movzx rdx, dl
adox rdx, r13
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r13
mulx r13, rbp, [ rsi + 0x10 ]
clc
adcx rbp, r8
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rbp
mulx rbp, r8, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x20 ], r12
mov [ rsp - 0x18 ], r14
mulx r14, r12, rdi
adcx r8, r13
adcx r9, rbp
mov rdi, r12
seto r13b
mov rbp, -0x2 
inc rbp
adox rdi, rbx
mov rbx, 0x0 
adcx r15, rbx
mov rbx, r12
adox rbx, r14
adox r12, r14
clc
adcx rcx, rax
adcx rdi, r11
seto cl
inc rbp
adox r10, rdi
mov rax, 0xd838091dd2253531 
mov rdx, r10
mulx r11, r10, rax
movzx r11, cl
lea r11, [ r11 + r14 ]
mov r14, 0xffffffffffffffff 
xchg rdx, r10
mulx rdi, rcx, r14
adcx rbx, [ rsp - 0x18 ]
adcx r12, [ rsp - 0x20 ]
adox rbx, [ rsp - 0x28 ]
adcx r11, [ rsp - 0x30 ]
adox r8, r12
adox r9, r11
movzx r12, r13b
adcx r12, rbp
mov r13, 0xfffffffefffffc2f 
mulx rbp, r11, r13
mov rdx, rcx
clc
adcx rdx, rbp
mov rbp, rcx
adcx rbp, rdi
adox r15, r12
adcx rcx, rdi
mov r12, 0x0 
adcx rdi, r12
clc
adcx r11, r10
adcx rdx, rbx
adcx rbp, r8
adcx rcx, r9
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, [ rsi + 0x18 ]
adcx rdi, r15
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, rdx
seto dl
mov r15, -0x3 
inc r15
adox r10, r11
movzx r11, dl
adcx r11, r12
mov rdx, rax
mulx r12, rax, r10
mov rdx, [ rsi + 0x18 ]
mulx r15, r12, [ rsi + 0x10 ]
clc
adcx rbx, [ rsp - 0x40 ]
adox rbx, rbp
adcx r12, [ rsp - 0x48 ]
adcx r8, r15
mov rdx, 0x0 
adcx r9, rdx
adox r12, rcx
mov rdx, r14
mulx rbp, r14, rax
adox r8, rdi
mov rdx, r13
mulx rcx, r13, rax
mov rdi, r14
clc
adcx rdi, rcx
mov rax, r14
adcx rax, rbp
adcx r14, rbp
adox r9, r11
seto r11b
mov r15, -0x2 
inc r15
adox r13, r10
adox rdi, rbx
adox rax, r12
mov r13, 0x0 
adcx rbp, r13
adox r14, r8
adox rbp, r9
movzx r10, r11b
adox r10, r13
mov rbx, rdi
sub rbx, rdx
mov r12, 0xffffffffffffffff 
mov r8, rax
sbb r8, r12
mov rcx, r14
sbb rcx, r12
mov r11, rbp
sbb r11, r12
sbb r10, r13
cmovc rcx, r14
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x10 ], rcx
cmovc rbx, rdi
mov [ r10 + 0x0 ], rbx
cmovc r11, rbp
cmovc r8, rax
mov [ r10 + 0x8 ], r8
mov [ r10 + 0x18 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.7679
; seed 2218202939269712 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1647983 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=90, initial num_batches=31): 101573 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.061634737736979084
; number reverted permutation / tried permutation: 80907 / 95014 =85.153%
; number reverted decision / tried decision: 65408 / 94985 =68.861%
; validated in 3.082s
