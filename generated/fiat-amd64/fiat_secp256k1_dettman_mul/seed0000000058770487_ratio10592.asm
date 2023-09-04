SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
add r15, r10
adcx r11, rdi
mov rdx, 0x1000003d10 
mulx rdi, r10, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], r12
mulx r12, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], rbx
mulx rbx, rbp, [ rsi + 0x18 ]
add r9, rbp
adcx rbx, r12
test al, al
adox r15, r13
adox r14, r11
adcx r15, rcx
adcx r8, r14
mov rdx, [ rsi + 0x0 ]
mulx r13, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx r12, r11, [ rsi + 0x8 ]
test al, al
adox r10, r15
adox r8, rdi
mov rdx, [ rax + 0x10 ]
mulx rbp, rdi, [ rsi + 0x10 ]
mov rdx, 0x34 
bzhi r14, r10, rdx
adox r9, rdi
adox rbp, rbx
mov rdx, [ rax + 0x18 ]
mulx r15, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r14
mulx r14, rdi, [ rax + 0x20 ]
xor rdx, rdx
adox r9, rbx
adox r15, rbp
shrd r10, r8, 52
xor r8, r8
adox r9, rdi
adox r14, r15
mov rdx, [ rax + 0x18 ]
mulx rbx, rbp, [ rsi + 0x10 ]
mov rdx, 0x1000003d10000 
mulx r15, rdi, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r13
mulx r13, r8, [ rax + 0x10 ]
adcx r9, r10
adc r14, 0x0
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], rcx
mulx rcx, r10, [ rax + 0x8 ]
xor rdx, rdx
adox rdi, r9
adox r14, r15
adcx r10, r8
adcx r13, rcx
mov rdx, [ rsi + 0x20 ]
mulx r8, r15, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, [ rax + 0x0 ]
test al, al
adox r10, rbp
adox rbx, r13
mov rdx, [ rax + 0x18 ]
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r11
mulx r11, r12, [ rsi + 0x0 ]
adcx r9, r12
adcx r11, rcx
xor rdx, rdx
adox r10, [ rsp - 0x40 ]
adox rbx, [ rsp - 0x48 ]
adcx r15, rbp
adcx r13, r8
mov rdx, [ rax + 0x20 ]
mulx rcx, r8, [ rsi + 0x10 ]
mov rdx, rdi
shrd rdx, r14, 52
xor r14, r14
adox r10, rdx
adox rbx, r14
mov rbp, 0xfffffffffffff 
and rdi, rbp
mov r12, 0xffffffffffff 
mov rdx, rdi
and rdx, r12
mov r14, r10
shrd r14, rbx, 52
mov rbx, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbp, r12, [ rax + 0x18 ]
test al, al
adox r15, r8
adox rcx, r13
adcx r15, r14
adc rcx, 0x0
mov rdx, [ rsi + 0x18 ]
mulx r8, r13, [ rax + 0x20 ]
mov rdx, r15
shrd rdx, rcx, 52
xor r14, r14
adox r12, r13
adox r8, rbp
adcx r12, rdx
adc r8, 0x0
shr rdi, 48
mov rbp, 0xfffffffffffff 
and r10, rbp
shl r10, 4
lea rdi, [ rdi + r10 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, rcx, [ rax + 0x0 ]
mov rdx, 0x1000003d1 
mulx r14, r10, rdi
test al, al
adox r10, rcx
adox r13, r14
mov rdi, r10
and rdi, rbp
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x0 ], rdi
shrd r10, r13, 52
xor r14, r14
adox r9, r10
adox r11, r14
mov rdx, [ rax + 0x0 ]
mulx rdi, r13, [ rsi + 0x10 ]
and r15, rbp
adox r13, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
mov rdx, 0x1000003d10 
mulx r14, r10, r15
adcx r10, r9
adcx r11, r14
mov r9, r10
shrd r9, r11, 52
xor r15, r15
adox r13, [ rsp - 0x20 ]
adox rdi, [ rsp - 0x28 ]
mulx r11, r14, r12
adcx r13, r9
adc rdi, 0x0
xor r12, r12
adox r14, r13
adox rdi, r11
mov r15, r14
shrd r15, rdi, 52
add r15, [ rsp - 0x30 ]
mov r9, 0x1000003d10000 
mov rdx, r8
mulx r11, r8, r9
test al, al
adox r8, r15
adox r11, r12
mov rdx, r8
shrd rdx, r11, 52
lea rdx, [ rdx + rbx ]
mov [ rcx + 0x20 ], rdx
and r10, rbp
mov [ rcx + 0x8 ], r10
and r8, rbp
and r14, rbp
mov [ rcx + 0x10 ], r14
mov [ rcx + 0x18 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.0592
; seed 1383194432882020 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1387304 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=150, initial num_batches=31): 76838 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.055386562714444705
; number reverted permutation / tried permutation: 75111 / 94479 =79.500%
; number reverted decision / tried decision: 57654 / 95520 =60.358%
; validated in 0.34s
