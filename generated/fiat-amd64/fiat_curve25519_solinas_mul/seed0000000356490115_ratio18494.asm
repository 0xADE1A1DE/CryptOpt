SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
sub rsp, 144
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r9
mulx r9, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], r12
mulx r12, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], r10
mulx r10, r11, [ rsi + 0x8 ]
xor rdx, rdx
adox r13, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r11
mulx r11, rbx, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x10 ], r11
mov [ rsp - 0x8 ], r8
mulx r8, r11, [ rsi + 0x0 ]
adox rbx, rdi
adcx rcx, r13
adcx r14, rbx
mov rdx, 0x0 
adox r10, rdx
mov rdx, [ rax + 0x18 ]
mulx r13, rdi, [ rsi + 0x10 ]
mov rdx, 0x0 
mov rbx, rdx
adcx rbx, r10
adc r13, 0x0
xor r10, r10
adox r15, r9
adox r12, rcx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r9, [ rax + 0x10 ]
adox r9, r14
mov rdx, [ rsi + 0x18 ]
mulx r10, r14, [ rax + 0x10 ]
adcx rbp, r15
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x0 ], r11
mulx r11, r15, [ rsi + 0x8 ]
adcx r15, r12
adcx r9, [ rsp - 0x8 ]
adox r14, rbx
mov rdx, 0x0 
mov rbx, rdx
adox rbx, r13
adcx r14, [ rsp - 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx r12, r13, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r12, rdx
mov [ rsp + 0x8 ], r10
mov r10, rdx
adcx r10, rbx
adcx r12, rdx
xor rbx, rbx
adox r8, [ rsp - 0x20 ]
adox rbp, [ rsp - 0x28 ]
adox r15, [ rsp - 0x30 ]
adcx r8, [ rsp - 0x38 ]
adcx rbp, [ rsp - 0x40 ]
adcx r15, [ rsp - 0x48 ]
adox r9, [ rsp - 0x18 ]
adox rdi, r14
adcx r11, r9
mov rdx, 0x26 
mulx r9, r14, r11
adox r13, r10
adcx rcx, rdi
adcx r13, [ rsp + 0x8 ]
adox r12, rbx
mulx rdi, r10, r13
adcx r12, rbx
mulx r13, r11, rcx
xor rcx, rcx
adox r11, r8
adox r10, rbp
adcx r14, [ rsp + 0x0 ]
adcx r9, r11
mulx r8, rbx, r12
adox rbx, r15
adcx r13, r10
adcx rdi, rbx
adox r8, rcx
adc r8, 0x0
mulx r15, rbp, r8
xor r15, r15
adox rbp, r14
mov rcx, r15
adox rcx, r9
mov r12, r15
adox r12, r13
mov r11, r15
adox r11, rdi
mov r10, r15
cmovo r10, rdx
adcx rbp, r10
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], rbp
mov [ r14 + 0x8 ], rcx
mov [ r14 + 0x18 ], r11
mov [ r14 + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 144
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.8494
; seed 1872164905866030 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1050843 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=135, initial num_batches=31): 88566 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08428090590126212
; number reverted permutation / tried permutation: 79634 / 95147 =83.696%
; number reverted decision / tried decision: 59053 / 94852 =62.258%
; validated in 0.536s
