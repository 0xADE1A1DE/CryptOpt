SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx rcx, r11, rax
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
test al, al
adox r11, rax
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r11, [ rsi + 0x8 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rax
adcx r15, rcx
mov rcx, 0x0 
adcx rdi, rcx
clc
adcx r8, r10
adcx rbx, r9
adcx r12, rbp
adox r15, r8
adox rdi, rbx
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rsi + 0x8 ]
mov rdx, 0xffffffff00000001 
mulx r8, rbp, rax
adox rbp, r12
adcx r13, rcx
adox r8, r13
mov rdx, [ rsi + 0x18 ]
mulx rbx, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, r12, rdx
clc
adcx r10, r15
mov rdx, [ rsi + 0x10 ]
mulx rcx, r15, [ rsi + 0x8 ]
seto dl
mov [ rsp - 0x48 ], r14
mov r14, -0x2 
inc r14
adox r12, r9
adcx r12, rdi
adox r15, r13
adox rax, rcx
mov rdi, 0x0 
adox rbx, rdi
adcx r15, rbp
adcx rax, r8
mov r9, 0xffffffffffffffff 
xchg rdx, r9
mulx r8, rbp, r10
mov r13, -0x3 
inc r13
adox rbp, r10
movzx rbp, r9b
adcx rbp, rbx
mov r9, 0xffffffff 
mov rdx, r9
mulx rcx, r9, r10
setc bl
clc
adcx r9, r8
adox r9, r12
adcx rcx, rdi
adox rcx, r15
mov r12, 0xffffffff00000001 
mov rdx, r12
mulx r15, r12, r10
adox r12, rax
adox r15, rbp
mov rdx, [ rsi + 0x0 ]
mulx rax, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rbp, r8, [ rsi + 0x10 ]
clc
adcx r8, rax
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, rdx
movzx rdx, bl
mov r13, 0x0 
adox rdx, r13
mov rbx, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox r10, r9
mov r9, 0xffffffff 
mov rdx, r9
mov [ rsp - 0x40 ], r11
mulx r11, r9, r10
adox r8, rcx
adcx rax, rbp
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx rbp, rcx, r10
adcx r13, rdi
mov rdi, 0x0 
adcx r14, rdi
adox rax, r12
adox r13, r15
clc
adcx r9, rbp
adcx r11, rdi
adox r14, rbx
clc
adcx rcx, r10
adcx r9, r8
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, rdx
adcx r11, rax
mov rdx, 0xffffffff00000001 
mulx rbx, r15, r10
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, [ rsi + 0x0 ]
seto dl
mov rbp, -0x3 
inc rbp
adox r10, r9
adcx r15, r13
mov rax, 0xffffffffffffffff 
xchg rdx, rax
mulx r9, r13, r10
adcx rbx, r14
movzx r14, al
adcx r14, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, [ rsi + 0x18 ]
clc
adcx r8, [ rsp - 0x40 ]
adox r8, r11
adcx rax, [ rsp - 0x48 ]
adox rax, r15
adcx rcx, rdi
mov rdx, 0x0 
adcx r12, rdx
mov r11, 0xffffffff 
mov rdx, r10
mulx r15, r10, r11
clc
adcx r10, r9
adox rcx, rbx
adox r12, r14
seto r9b
inc rbp
adox r13, rdx
adox r10, r8
mov r13, 0x0 
adcx r15, r13
adox r15, rax
mov rbx, 0xffffffff00000001 
mulx rdi, r14, rbx
adox r14, rcx
adox rdi, r12
movzx rdx, r9b
adox rdx, r13
mov r8, 0xffffffffffffffff 
mov rax, r10
sub rax, r8
mov rcx, r15
sbb rcx, r11
mov r9, r14
sbb r9, r13
mov r12, rdi
sbb r12, rbx
sbb rdx, r13
cmovc rax, r10
cmovc r12, rdi
cmovc r9, r14
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], rax
mov [ rdx + 0x10 ], r9
mov [ rdx + 0x18 ], r12
cmovc rcx, r15
mov [ rdx + 0x8 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6199
; seed 2520977633112081 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1740460 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=85, initial num_batches=31): 121998 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07009526217206945
; number reverted permutation / tried permutation: 85686 / 95585 =89.644%
; number reverted decision / tried decision: 60904 / 94414 =64.507%
; validated in 1.966s
