SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r8
mov rbp, 0xffffffff00000000 
mov rdx, rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r13
mulx r13, r14, [ rsi + 0x8 ]
test al, al
adox rax, rcx
adox r14, r10
adox r15, r13
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r10, [ rsi + 0x8 ]
adcx r10, r9
mov rdx, [ rsi + 0x18 ]
mulx r13, r9, [ rsi + 0x0 ]
mov rdx, rbx
mov [ rsp - 0x38 ], rdi
mov rdi, -0x2 
inc rdi
adox rdx, r8
mov rdx, [ rsi + 0x0 ]
mulx rdi, r8, [ rsi + 0x10 ]
adox rbp, r10
adcx r8, rcx
adcx r9, rdi
mov rdx, 0xffffffffffffffff 
mulx r10, rcx, rbx
mov rdi, 0x0 
adcx r13, rdi
mov rdi, 0xffffffff 
mov rdx, rbx
mov [ rsp - 0x30 ], r15
mulx r15, rbx, rdi
clc
adcx rcx, r12
adcx rbx, r10
mov rdx, 0x0 
adcx r15, rdx
adox rcx, r8
adox rbx, r9
adox r15, r13
clc
adcx r11, rbp
mov r12, 0xffffffffffffffff 
mov rdx, r12
mulx rbp, r12, r11
mulx r8, rbp, r12
adcx rax, rcx
adcx r14, rbx
adcx r15, [ rsp - 0x30 ]
seto r9b
movzx r9, r9b
adcx r9, [ rsp - 0x38 ]
mov r10, r12
mov r13, -0x2 
inc r13
adox r10, r11
mov r10, 0xffffffff00000000 
mov rdx, r12
mulx rcx, r12, r10
adox r12, rax
setc bl
clc
adcx rbp, rcx
adox rbp, r14
mulx rax, r11, rdi
adcx r11, r8
adox r11, r15
mov rdx, [ rsi + 0x10 ]
mulx r14, r8, rdx
mov rdx, 0x0 
adcx rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r15, [ rsi + 0x10 ]
adox rax, r9
clc
adcx r15, r12
seto dl
inc r13
adox rcx, [ rsp - 0x40 ]
adox r8, [ rsp - 0x48 ]
mov r9b, dl
mov rdx, [ rsi + 0x10 ]
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mulx rdi, r10, r15
adcx rcx, rbp
adcx r8, r11
mulx rbp, rdi, r10
adox r12, r14
mov r11, 0xffffffff00000000 
mov rdx, r10
mulx r14, r10, r11
adcx r12, rax
seto al
mov r11, -0x2 
inc r11
adox rdi, r14
movzx r14, r9b
movzx rbx, bl
lea r14, [ r14 + rbx ]
movzx rbx, al
lea rbx, [ rbx + r13 ]
adcx rbx, r14
mov r9, 0xffffffff 
mulx rax, r13, r9
setc r14b
clc
adcx rdx, r15
adcx r10, rcx
adcx rdi, r8
adox r13, rbp
adcx r13, r12
mov rdx, 0x0 
adox rax, rdx
adcx rax, rbx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r15, [ rsi + 0x18 ]
inc r11
adox r15, r10
mov rdx, [ rsi + 0x18 ]
mulx rbp, r8, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mulx rbx, r12, r15
movzx rbx, r14b
adcx rbx, r11
mov rdx, [ rsi + 0x8 ]
mulx r10, r14, [ rsi + 0x18 ]
clc
adcx r14, rcx
adox r14, rdi
adcx r8, r10
adox r8, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, rdi, rdx
adcx rdi, rbp
adox rdi, rax
mov rdx, 0xffffffffffffffff 
mulx rcx, rax, r12
adcx r13, r11
mov rbp, 0xffffffff00000000 
mov rdx, r12
mulx r10, r12, rbp
clc
adcx rax, r10
adox r13, rbx
mulx r10, rbx, r9
adcx rbx, rcx
adcx r10, r11
clc
adcx rdx, r15
adcx r12, r14
adcx rax, r8
adcx rbx, rdi
adcx r10, r13
seto dl
adc dl, 0x0
movzx rdx, dl
mov r15, r12
sub r15, 0x1
mov r14, rax
sbb r14, rbp
mov r8, 0xffffffffffffffff 
mov rdi, rbx
sbb rdi, r8
mov rcx, r10
sbb rcx, r9
movzx rdx, dl
sbb rdx, r11
cmovc rdi, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], rdi
cmovc rcx, r10
mov [ rdx + 0x18 ], rcx
cmovc r14, rax
mov [ rdx + 0x8 ], r14
cmovc r15, r12
mov [ rdx + 0x0 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4178
; seed 1916684869023464 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2037501 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=84, initial num_batches=31): 129067 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06334573578123397
; number reverted permutation / tried permutation: 71570 / 95091 =75.265%
; number reverted decision / tried decision: 61239 / 94908 =64.525%
; validated in 4.826s
