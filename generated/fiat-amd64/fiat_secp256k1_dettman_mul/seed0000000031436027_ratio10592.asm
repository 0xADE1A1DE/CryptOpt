SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, [ rsi + 0x10 ]
test al, al
adox r10, rcx
adox r8, r11
mov rdx, [ rax + 0x18 ]
mulx rcx, r11, [ rsi + 0x18 ]
adcx r10, rbp
adcx r12, r8
mov rdx, [ rsi + 0x18 ]
mulx r8, rbp, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
test al, al
adox rbp, r15
adox rdi, r8
mov rdx, [ rsi + 0x8 ]
mulx r15, r8, [ rax + 0x10 ]
adcx rbp, r8
adcx r15, rdi
mov rdx, [ rax + 0x18 ]
mulx r8, rdi, [ rsi + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r11
mulx r11, rcx, [ rsi + 0x0 ]
xor rdx, rdx
adox rbp, rdi
adox r8, r15
mov r15, 0x1000003d10 
mov rdx, r9
mulx rdi, r9, r15
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x18 ], r14
mulx r14, r15, [ rsi + 0x8 ]
adcx r9, rbp
adcx r8, rdi
mov rdx, r9
shrd rdx, r8, 52
test al, al
adox r10, r15
adox r14, r12
adcx r10, rcx
adcx r11, r14
xor r12, r12
adox r10, rdx
adox r11, r12
mov rcx, 0x1000003d10000 
mov rdx, rbx
mulx rbp, rbx, rcx
adcx rbx, r10
adcx r11, rbp
mov rdi, rbx
shrd rdi, r11, 52
mov r15, 0xfffffffffffff 
and rbx, r15
mov rdx, [ rax + 0x10 ]
mulx r14, r8, [ rsi + 0x18 ]
adox r13, r8
adox r14, [ rsp - 0x18 ]
mov rdx, [ rax + 0x0 ]
mulx rbp, r10, [ rsi + 0x0 ]
mov rdx, rbx
shr rdx, 48
mov r11, rdx
mov rdx, [ rax + 0x18 ]
mulx r12, r8, [ rsi + 0x10 ]
xor rdx, rdx
adox r13, r8
adox r12, r14
mov rdx, [ rax + 0x20 ]
mulx r8, r14, [ rsi + 0x8 ]
adcx r13, r14
adcx r8, r12
add r13, rdi
adc r8, 0x0
mov rdx, r13
and rdx, r15
shl rdx, 4
shrd r13, r8, 52
lea r11, [ r11 + rdx ]
mov rdi, 0x1000003d1 
mov rdx, rdi
mulx r12, rdi, r11
xor r14, r14
adox rdi, r10
adox rbp, r12
mov r10, rdi
and r10, r15
mov rdx, [ rsi + 0x10 ]
mulx r11, r8, [ rax + 0x20 ]
shrd rdi, rbp, 52
mov rdx, [ rax + 0x10 ]
mulx rbp, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx r15, r14, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], r10
mulx r10, rcx, [ rsi + 0x20 ]
add r12, [ rsp - 0x20 ]
adcx rbp, [ rsp - 0x28 ]
test al, al
adox r12, r8
adox r11, rbp
adcx r12, r13
adc r11, 0x0
mov rdx, [ rax + 0x8 ]
mulx r8, r13, [ rsi + 0x0 ]
mov rdx, 0x34 
bzhi rbp, r12, rdx
shrd r12, r11, 52
xor r11, r11
adox r14, r13
adox r8, r15
mov rdx, [ rax + 0x8 ]
mulx r13, r15, [ rsi + 0x8 ]
mov rdx, r15
adcx rdx, [ rsp - 0x30 ]
adcx r13, [ rsp - 0x38 ]
mov r15, 0x34 
bzhi r11, r9, r15
adox r14, rdi
mov r9, 0x0 
adox r8, r9
mov rdi, 0x1000003d10 
xchg rdx, rdi
mulx r15, r9, rbp
xor rbp, rbp
adox r9, r14
adox r8, r15
mov r14, 0xfffffffffffff 
mov r15, r9
and r15, r14
shrd r9, r8, 52
xor r8, r8
adox rcx, [ rsp - 0x40 ]
adox r10, [ rsp - 0x48 ]
adcx rcx, r12
adc r10, 0x0
mov rbp, 0x1000003d10000 
mov rdx, rbp
mulx r12, rbp, r10
mov r10, 0x1000003d10 
mov rdx, rcx
mulx r8, rcx, r10
mov rdx, [ rax + 0x10 ]
mulx r10, r14, [ rsi + 0x0 ]
test al, al
adox rdi, r14
adox r10, r13
adcx rdi, r9
adc r10, 0x0
xor rdx, rdx
adox rcx, rdi
adox r10, r8
mov r13, rcx
shrd r13, r10, 52
mov r9, 0x34 
bzhi r8, rcx, r9
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x10 ], r8
lea r13, [ r13 + r11 ]
mov r11, 0x30 
bzhi rdi, rbx, r11
adox rbp, r13
adox r12, rdx
mov rbx, [ rsp - 0x10 ]
mov [ r14 + 0x0 ], rbx
bzhi rbx, rbp, r9
shrd rbp, r12, 52
mov [ r14 + 0x8 ], r15
lea rbp, [ rbp + rdi ]
mov [ r14 + 0x20 ], rbp
mov [ r14 + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0592
; seed 4369541510414477 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1415797 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=151, initial num_batches=31): 94005 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06639723067643172
; number reverted permutation / tried permutation: 74481 / 94822 =78.548%
; number reverted decision / tried decision: 56507 / 95177 =59.370%
; validated in 0.43s
