SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
xor rdx, rdx
adox rax, rax
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rdx
adcx r8, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r10, [ rsi + 0x8 ]
adcx r12, r9
adcx r10, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, r9, [ rsi + 0x10 ]
adcx r9, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r11
mulx r11, rdi, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx rdi, r12
adcx r11, r10
mov r12, rdx
adcx r12, r9
mov r10, rdx
adcx r10, r13
adox r8, r8
adox rdi, rdi
adox r11, r11
adox r12, r12
adox r10, r10
setc r9b
clc
adcx rcx, rax
adcx rbx, r8
adcx rbp, rdi
adcx r14, r11
mov rdx, [ rsi + 0x18 ]
mulx r13, rax, rdx
adcx r15, r12
movzx rdx, r9b
mov r8, 0x0 
adox rdx, r8
adcx rax, r10
movzx rdi, r9b
lea rdi, [ rdi + rdx ]
mov r9, 0x26 
mov rdx, rax
mulx r11, rax, r9
mov rdx, r9
mulx r12, r9, r14
adcx rdi, r13
mulx r14, r10, rdi
mulx rdi, r13, r15
xor r15, r15
adox r9, [ rsp - 0x48 ]
adcx r13, rcx
adox r12, r13
adcx rax, rbx
adox rdi, rax
adcx r10, rbp
adox r11, r10
adcx r14, r15
adox r14, r15
mulx rcx, r8, r14
xor rcx, rcx
adox r8, r9
mov r15, rcx
adox r15, r12
mov rbx, rcx
adox rbx, rdi
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x10 ], rbx
mov r9, rcx
adox r9, r11
mov r13, rcx
cmovo r13, rdx
mov [ rbp + 0x18 ], r9
adcx r8, r13
mov [ rbp + 0x0 ], r8
mov [ rbp + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.5007
; seed 3752991047011707 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 567618 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=223, initial num_batches=31): 67024 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.1180794125626742
; number reverted permutation / tried permutation: 74993 / 94681 =79.206%
; number reverted decision / tried decision: 55370 / 95318 =58.090%
; validated in 0.368s
