SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
xor rdx, rdx
adox rax, rax
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
adcx r8, r10
adox r8, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
adcx r10, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
adcx r9, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, rbx, [ rsi + 0x18 ]
adcx rbx, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, rbp, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r14, rdx
clc
adcx rbp, r10
adox rbp, rbp
adcx r15, r9
mov r10, rdx
adcx r10, rbx
adox r15, r15
adox r10, r10
mov r9, rdx
adcx r9, r14
adox r9, r9
setc bl
clc
adcx rcx, rax
adcx r12, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rax, rdx
adcx r13, rbp
adcx rax, r15
adcx r8, r10
mov rdx, [ rsi + 0x18 ]
mulx rbp, r14, rdx
mov rdx, 0x26 
mulx r10, r15, r8
adcx r14, r9
movzx r9, bl
mov r8, 0x0 
adox r9, r8
movzx r8, bl
lea r8, [ r8 + r9 ]
mulx r9, rbx, rax
adcx r8, rbp
xor rax, rax
adox rbx, r11
mulx rbp, r11, r14
adcx r15, rcx
mulx r14, rcx, r8
adcx r11, r12
adox r9, r15
adox r10, r11
adcx rcx, r13
adcx r14, rax
adox rbp, rcx
adox r14, rax
mulx r13, r12, r14
add r12, rbx
mov r13, rax
adcx r13, r9
mov r8, rax
adcx r8, r10
mov rbx, rax
adcx rbx, rbp
mov [ rdi + 0x10 ], r8
mov r15, rax
cmovc r15, rdx
mov r11, -0x3 
inc r11
adox r12, r15
mov [ rdi + 0x0 ], r12
mov [ rdi + 0x18 ], rbx
mov [ rdi + 0x8 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.4120
; seed 3048338967132002 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 437436 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=263, initial num_batches=31): 60726 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.13882259347653142
; number reverted permutation / tried permutation: 78973 / 95063 =83.074%
; number reverted decision / tried decision: 57089 / 94936 =60.134%
; validated in 0.256s
