SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
add rbp, r9
mov rdx, rbx
mov r9, -0x2 
inc r9
adox rdx, r8
adcx rax, r12
mov rdx, [ rsi + 0x0 ]
mulx r12, r8, [ rsi + 0x18 ]
adcx r8, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mulx r13, r10, rdx
mov rdx, 0x0 
adcx r12, rdx
clc
adcx r10, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r9, r15, [ rsi + 0x10 ]
adcx r15, r13
adcx rcx, r9
mov rdx, 0x0 
adcx r14, rdx
mov r13, 0xffffffff00000000 
mov rdx, rbx
mulx r9, rbx, r13
mov r13, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, r13
mov r13, 0xffffffffffffffff 
mov [ rsp - 0x40 ], rcx
mov [ rsp - 0x38 ], r15
mulx r15, rcx, r13
clc
adcx rcx, r9
adcx rdi, r15
mov rdx, 0x0 
adcx r14, rdx
adox rbx, rbp
clc
adcx r11, rbx
mov rdx, r13
mulx rbp, r13, r11
mulx r9, rbp, r13
adox rcx, rax
adcx r10, rcx
adox rdi, r8
adox r14, r12
adcx rdi, [ rsp - 0x38 ]
adcx r14, [ rsp - 0x40 ]
seto al
movzx rax, al
adcx rax, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, r15, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r15, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, rcx, [ rsi + 0x18 ]
adox rcx, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], rcx
mulx rcx, rbx, rdx
adox rbx, r12
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x28 ], rbx
mulx rbx, r12, r13
mov rdx, 0xffffffff 
mov [ rsp - 0x20 ], r15
mov [ rsp - 0x18 ], r8
mulx r8, r15, r13
setc dl
clc
adcx rbp, rbx
adcx r15, r9
setc r9b
clc
adcx r13, r11
adcx r12, r10
mov r13, 0x0 
adox rcx, r13
mov r11b, dl
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, [ rsi + 0x8 ]
adcx rbp, rdi
mov rdx, [ rsi + 0x10 ]
mulx r13, rdi, [ rsi + 0x0 ]
adcx r15, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], rcx
mulx rcx, r14, rdx
movzx rdx, r9b
lea rdx, [ rdx + r8 ]
adcx rdx, rax
movzx rax, r11b
adc rax, 0x0
xor r11, r11
adox r10, r13
adcx rdi, r12
adox r14, rbx
adcx r10, rbp
adcx r14, r15
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, [ rsi + 0x18 ]
adox r9, rcx
mov rdx, 0xffffffffffffffff 
mulx rbp, rbx, rdi
mov rbp, 0xffffffff00000000 
mov rdx, rbx
mulx r13, rbx, rbp
adcx r9, r8
adox r12, r11
mov r15, 0xffffffffffffffff 
mulx r8, rcx, r15
adcx r12, rax
mov rax, rdx
mov r15, -0x3 
inc r15
adox rax, rdi
setc al
clc
adcx rcx, r13
adox rbx, r10
adox rcx, r14
mov rdi, 0xffffffff 
mulx r14, r10, rdi
adcx r10, r8
adox r10, r9
adcx r14, r11
adox r14, r12
movzx rdx, al
adox rdx, r11
test al, al
adox rbx, [ rsp - 0x18 ]
adox rcx, [ rsp - 0x20 ]
mov r13, 0xffffffffffffffff 
xchg rdx, r13
mulx r8, r9, rbx
adox r10, [ rsp - 0x30 ]
mulx rax, r8, r9
mov rdx, r9
mulx r12, r9, rbp
mov r15, rdx
adcx r15, rbx
adox r14, [ rsp - 0x28 ]
adox r13, [ rsp - 0x10 ]
seto r15b
mov rbx, -0x3 
inc rbx
adox r8, r12
mulx r11, r12, rdi
adox r12, rax
adcx r9, rcx
mov rcx, 0x0 
adox r11, rcx
adcx r8, r10
adcx r12, r14
adcx r11, r13
movzx rdx, r15b
adc rdx, 0x0
mov r10, r9
sub r10, 0x1
mov rax, r8
sbb rax, rbp
mov r14, 0xffffffffffffffff 
mov r15, r12
sbb r15, r14
mov r13, r11
sbb r13, rdi
sbb rdx, rcx
cmovc r13, r11
cmovc r10, r9
cmovc rax, r8
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], rax
mov [ rdx + 0x0 ], r10
cmovc r15, r12
mov [ rdx + 0x18 ], r13
mov [ rdx + 0x10 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4152
; seed 2320996819201463 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2019942 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=84, initial num_batches=31): 127250 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06299685832563509
; number reverted permutation / tried permutation: 73567 / 94819 =77.587%
; number reverted decision / tried decision: 62767 / 95180 =65.946%
; validated in 5.142s
