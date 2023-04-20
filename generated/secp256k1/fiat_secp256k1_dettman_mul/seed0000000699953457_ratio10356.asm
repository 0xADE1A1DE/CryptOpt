SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x20 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, r10
shrd rdx, r11, 52
mov r9, 0xfffffffffffff 
and r10, r9
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, [ rax + 0x8 ]
adox r9, rbp
adox rbx, rdi
mov rdx, [ rax + 0x8 ]
mulx rbp, rdi, [ rsi + 0x18 ]
adcx r14, rdi
adcx rbp, r15
mov rdx, [ rax + 0x10 ]
mulx rdi, r15, [ rsi + 0x8 ]
xor rdx, rdx
adox r9, r15
adox rdi, rbx
mov rdx, [ rsi + 0x0 ]
mulx r15, rbx, [ rax + 0x18 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rcx
mulx rcx, r8, r10
adcx r9, rbx
adcx r15, rdi
xor r10, r10
adox r8, r9
adox r15, rcx
mov rdi, 0xfffffffffffff 
mov rbx, r8
and rbx, rdi
shrd r8, r15, 52
mov rdx, [ rsi + 0x10 ]
mulx r9, rcx, [ rax + 0x10 ]
test al, al
adox r14, rcx
adox r9, rbp
mov rdx, [ rax + 0x18 ]
mulx r15, rbp, [ rsi + 0x8 ]
adcx r14, rbp
adcx r15, r9
mov rdx, [ rax + 0x10 ]
mulx r9, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x20 ]
mulx r10, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox r14, rbp
adox r10, r15
mov rdx, [ rsi + 0x20 ]
mulx rbp, r15, [ rax + 0x8 ]
adcx r15, rcx
adcx r9, rbp
add r8, r14
adc r10, 0x0
mov rdx, 0x1000003d10 
mulx r14, rcx, r11
mov rdx, [ rax + 0x18 ]
mulx rbp, r11, [ rsi + 0x18 ]
add rcx, r8
adcx r10, r14
mov rdx, rcx
shrd rdx, r10, 52
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r14, [ rax + 0x10 ]
add r14, r11
adcx rbp, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, r11, [ rax + 0x20 ]
test al, al
adox r12, r11
adox r10, r13
mov rdx, [ rax + 0x20 ]
mulx r11, r13, [ rsi + 0x8 ]
adcx r15, rdi
adcx rbx, r9
test al, al
adox r15, r13
adox r11, rbx
adcx r8, r15
adc r11, 0x0
mov rdx, 0x34 
bzhi rdi, r8, rdx
shrd r8, r11, 52
shl rdi, 4
mov rdx, [ rax + 0x20 ]
mulx r13, r9, [ rsi + 0x10 ]
xor rdx, rdx
adox r14, r9
adox r13, rbp
adcx r8, r14
adc r13, 0x0
mov rbp, r8
shrd rbp, r13, 52
test al, al
adox rbp, r12
adox r10, rdx
mov r12, 0xfffffffffffff 
and r8, r12
mov rbx, rbp
shrd rbx, r10, 52
mov rdx, [ rax + 0x8 ]
mulx r11, r15, [ rsi + 0x8 ]
and rcx, r12
mov rdx, 0x1000003d10 
mulx r14, r9, rbx
mov r13, 0xffffffffffff 
mov r10, rcx
and r10, r13
shr rcx, 48
lea rdi, [ rdi + rcx ]
mov rbx, 0x1000003d1 
mov rdx, rbx
mulx rcx, rbx, rdi
mov rdx, [ rax + 0x0 ]
mulx r13, rdi, [ rsi + 0x0 ]
test al, al
adox rbx, rdi
adox r13, rcx
mov rdx, rbx
shrd rdx, r13, 52
mov rcx, r15
test al, al
adox rcx, [ rsp - 0x30 ]
adox r11, [ rsp - 0x38 ]
and rbx, r12
mov r15, rdx
mov rdx, [ rax + 0x8 ]
mulx r13, rdi, [ rsi + 0x0 ]
mov rdx, rdi
adox rdx, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
adcx r15, rdx
adc r13, 0x0
mov rdi, 0x1000003d10 
mov rdx, r8
mulx r12, r8, rdi
test al, al
adox r8, r15
adox r13, r12
mov rdx, 0x34 
bzhi r15, rbp, rdx
mov rbp, r8
shrd rbp, r13, 52
mov rdx, rdi
mulx r12, rdi, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, r13, [ rax + 0x10 ]
xor rdx, rdx
adox rcx, r13
adox r15, r11
adcx rbp, rcx
adc r15, 0x0
xor r11, r11
adox rdi, rbp
adox r15, r12
mov rdx, rdi
shrd rdx, r15, 52
add rdx, [ rsp - 0x28 ]
test al, al
adox r9, rdx
adox r14, r11
mov r12, r9
shrd r12, r14, 52
mov r13, 0xfffffffffffff 
and r9, r13
lea r10, [ r10 + r12 ]
and r8, r13
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x0 ], rbx
mov [ rcx + 0x8 ], r8
and rdi, r13
mov [ rcx + 0x20 ], r10
mov [ rcx + 0x18 ], r9
mov [ rcx + 0x10 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0356
; seed 1518282399658794 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1438499 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=185, initial num_batches=31): 93560 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.0650400174070333
; number reverted permutation / tried permutation: 64160 / 90180 =71.147%
; number reverted decision / tried decision: 35044 / 89819 =39.016%
; validated in 0.391s
