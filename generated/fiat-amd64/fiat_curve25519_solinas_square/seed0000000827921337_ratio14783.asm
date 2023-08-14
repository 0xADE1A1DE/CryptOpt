SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
xor rdx, rdx
adox rax, rcx
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rcx, [ rsi + 0x18 ]
adox rcx, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, r10, [ rsi + 0x8 ]
adcx r10, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mulx r12, rcx, [ rsi + 0x8 ]
adox rcx, rbx
adcx rbp, rcx
adox r8, r12
mov rdx, 0x0 
adox r9, rdx
mov rbx, -0x3 
inc rbx
adox r11, r11
adox rax, rax
adox r10, r10
mov r12, rdx
adcx r12, r8
mov rcx, rdx
adcx rcx, r9
adox rbp, rbp
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, rdx
adox r12, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
adox rcx, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx rbx, r15, rdx
setc dl
clc
adcx r14, r11
adcx r15, rax
adcx rbx, r10
movzx r11, dl
mov rax, 0x0 
adox r11, rax
adcx r8, rbp
movzx r10, dl
lea r10, [ r10 + r11 ]
adcx r9, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, rdx
adcx rbp, rcx
mov rdx, 0x26 
mulx r11, rcx, rbp
mulx rax, rbp, r9
adcx r10, r12
xor r9, r9
adox rbp, r14
mulx r12, r14, r10
adox rcx, r15
adox r14, rbx
mulx rbx, r15, r8
adcx r15, r13
adcx rbx, rbp
adcx rax, rcx
adox r12, r9
adcx r11, r14
adc r12, 0x0
mulx r8, r13, r12
xor r8, r8
adox r13, r15
mov r9, r8
adox r9, rbx
mov r10, r8
adox r10, rax
mov [ rdi + 0x10 ], r10
mov rbp, r8
adox rbp, r11
mov rcx, r8
cmovo rcx, rdx
adcx r13, rcx
mov [ rdi + 0x0 ], r13
mov [ rdi + 0x8 ], r9
mov [ rdi + 0x18 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.4783
; seed 2137581908319479 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 565898 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=223, initial num_batches=31): 67437 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11916811863622066
; number reverted permutation / tried permutation: 73866 / 95501 =77.346%
; number reverted decision / tried decision: 54860 / 94498 =58.054%
; validated in 0.398s
