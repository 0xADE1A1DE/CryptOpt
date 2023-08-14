SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x18 ]
xor rdx, rdx
adox r11, r10
adox r8, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
adcx r10, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mulx r12, r8, [ rsi + 0x8 ]
adox r8, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mulx r13, r9, [ rsi + 0x10 ]
adox r9, r12
mov rdx, 0x0 
adox r13, rdx
mov r12, -0x3 
inc r12
adox rax, rax
adox r11, r11
adox r10, r10
adcx rcx, r8
mov r8, rdx
adcx r8, r9
mov r9, rdx
adcx r9, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r12, r15, rdx
setc dl
clc
adcx r14, rax
adcx r15, r11
adox rcx, rcx
adox r8, r8
adox r9, r9
adcx r12, r10
adcx rbx, rcx
movzx rax, dl
mov r11, 0x0 
adox rax, r11
adcx rbp, r8
movzx r10, dl
lea r10, [ r10 + rax ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, rdx
adcx rcx, r9
adcx r10, r8
mov rdx, 0x26 
mulx rax, r9, rbx
mulx r8, rbx, rcx
xor rcx, rcx
adox r9, r13
mulx r13, r11, rbp
adcx r11, r14
adox rax, r11
adcx rbx, r15
adox r13, rbx
mulx r15, r14, r10
adcx r14, r12
adox r8, r14
adcx r15, rcx
adox r15, rcx
mulx rbp, r12, r15
add r12, r9
mov rbp, rcx
adcx rbp, rax
mov [ rdi + 0x8 ], rbp
mov r10, rcx
adcx r10, r13
mov r9, rcx
adcx r9, r8
mov [ rdi + 0x10 ], r10
mov [ rdi + 0x18 ], r9
mov r11, rcx
cmovc r11, rdx
mov rax, -0x3 
inc rax
adox r12, r11
mov [ rdi + 0x0 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.4262
; seed 2612480697508219 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 440441 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=263, initial num_batches=31): 61036 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.13857928757767782
; number reverted permutation / tried permutation: 78460 / 95032 =82.562%
; number reverted decision / tried decision: 57273 / 94967 =60.308%
; validated in 0.255s
