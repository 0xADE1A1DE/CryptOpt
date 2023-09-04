SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
adcx rax, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, rcx, [ rsi + 0x10 ]
adcx rbx, r10
adcx r12, rbp
adcx rcx, r13
mov rdx, 0x0 
adcx r14, rdx
clc
adcx r8, rbx
adcx r9, r12
mov r10, rdx
adcx r10, rcx
adox rax, rax
adox r8, r8
adox r9, r9
mov rbp, rdx
adcx rbp, r14
adox r10, r10
mov rdx, [ rsi + 0x0 ]
mulx rbx, r13, rdx
adox rbp, rbp
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, rdx
setc dl
clc
adcx rbx, r11
adcx r12, rax
movzx r11, dl
mov r14, 0x0 
adox r11, r14
movzx rax, dl
lea rax, [ rax + r11 ]
adcx rcx, r8
mov rdx, [ rsi + 0x10 ]
mulx r11, r8, rdx
adcx r8, r9
mov rdx, 0x26 
mulx r14, r9, r8
adcx r11, r10
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, rdx
adcx r10, rbp
mov rdx, 0x26 
mov [ rsp - 0x58 ], r15
mulx r15, rbp, r11
adcx rax, r8
test al, al
adox rbp, rbx
mulx r11, rbx, r10
adox rbx, r12
adcx r9, r13
adcx r14, rbp
adcx r15, rbx
mulx r12, r13, rax
adox r13, rcx
mov rcx, 0x0 
adox r12, rcx
adcx r11, r13
adc r12, 0x0
mulx r10, r8, r12
test al, al
adox r8, r9
mov r10, rcx
adox r10, r14
mov rax, rcx
adox rax, r15
mov [ rdi + 0x8 ], r10
mov rbp, rcx
adox rbp, r11
mov [ rdi + 0x18 ], rbp
mov rbx, rcx
cmovo rbx, rdx
adcx r8, rbx
mov [ rdi + 0x10 ], rax
mov [ rdi + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.4631
; seed 0154839357919789 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 728683 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=235, initial num_batches=31): 80735 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11079577813672063
; number reverted permutation / tried permutation: 80395 / 95134 =84.507%
; number reverted decision / tried decision: 56604 / 94865 =59.668%
; validated in 0.344s
