SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, rax
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
adcx r12, r10
adcx r14, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rsi + 0x18 ]
adcx r10, r15
adcx rdi, r13
mov rdx, 0x0 
adcx r8, rdx
clc
adcx rbx, r14
adcx rbp, r10
adox r12, r12
mov r15, rdx
adcx r15, rdi
adox rbx, rbx
mov r14, rdx
adcx r14, r8
setc r13b
clc
adcx r9, rax
adcx r11, r12
adox rbp, rbp
adcx rcx, rbx
adox r15, r15
adox r14, r14
movzx rax, r13b
adox rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, rdx
adcx r10, rbp
adcx rdi, r15
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, rdx
adcx r8, r14
mov rdx, 0x26 
mulx rbp, rbx, r8
movzx r15, r13b
lea r15, [ r15 + rax ]
adcx r15, r12
mulx r14, r13, r15
mulx r12, rax, rdi
xor rdi, rdi
adox rax, r9
adox rbx, r11
adox r13, rcx
mulx r11, r9, r10
adox r14, rdi
adcx r9, [ rsp - 0x48 ]
adcx r11, rax
adcx r12, rbx
adcx rbp, r13
adc r14, 0x0
mulx r10, rcx, r14
xor r10, r10
adox rcx, r9
mov rdi, r10
adox rdi, r11
mov r8, r10
adox r8, r12
mov r15, r10
adox r15, rbp
mov rax, r10
cmovo rax, rdx
adcx rcx, rax
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x0 ], rcx
mov [ rbx + 0x10 ], r8
mov [ rbx + 0x8 ], rdi
mov [ rbx + 0x18 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.5409
; seed 3978079257266541 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 734771 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=235, initial num_batches=31): 82021 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11162797660767777
; number reverted permutation / tried permutation: 79251 / 95111 =83.325%
; number reverted decision / tried decision: 56673 / 94888 =59.726%
; validated in 0.336s
