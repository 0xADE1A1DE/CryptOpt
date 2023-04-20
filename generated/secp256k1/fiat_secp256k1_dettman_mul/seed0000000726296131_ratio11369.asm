SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, 0x34 
mov [ rsp - 0x58 ], r15
bzhi r15, r13, rdx
mov rdx, 0x1000003d10 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, r15
shrd r13, r14, 52
mov rdx, [ rax + 0x20 ]
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x40 ], r15
mov [ rsp - 0x38 ], r14
mulx r14, r15, [ rsi + 0x18 ]
xor rdx, rdx
adox r15, rbp
adox r12, r14
mov rdx, [ rax + 0x10 ]
mulx r14, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], rcx
mov [ rsp - 0x28 ], r13
mulx r13, rcx, [ rax + 0x18 ]
adcx r15, rbp
adcx r14, r12
test al, al
adox r15, rcx
adox r13, r14
adcx rdi, r15
adcx r13, r8
mov rdx, [ rax + 0x8 ]
mulx r12, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, rbp, [ rax + 0x0 ]
xor rdx, rdx
adox rbp, r8
adox r12, rcx
adcx rbp, r10
adcx r11, r12
test al, al
adox rbp, r9
adox rbx, r11
mov rdx, [ rax + 0x20 ]
mulx r9, r10, [ rsi + 0x0 ]
adcx rbp, r10
adcx r9, rbx
mov rdx, rdi
shrd rdx, r13, 52
mov r14, 0x1000003d10 
mov r15, rdx
mov rdx, [ rsp - 0x28 ]
mulx r8, r13, r14
xor rdx, rdx
adox r15, rbp
adox r9, rdx
adcx r13, r15
adcx r9, r8
mov rcx, 0x34 
bzhi r12, rdi, rcx
bzhi rdi, r13, rcx
shrd r13, r9, 52
mov rdx, [ rsi + 0x20 ]
mulx rbx, r11, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, r10, [ rax + 0x10 ]
test al, al
adox r11, r10
adox rbp, rbx
mov rdx, [ rsi + 0x8 ]
mulx r15, r8, [ rax + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mulx rbx, r9, [ rax + 0x18 ]
adcx r11, r9
adcx rbx, rbp
add r11, r8
adcx r15, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbp, r10, [ rax + 0x18 ]
add r13, r11
adc r15, 0x0
mov rdx, [ rax + 0x10 ]
mulx r9, r8, [ rsi + 0x20 ]
xor rdx, rdx
adox r8, r10
adox rbp, r9
bzhi rbx, r13, rcx
mov r11, 0x30 
bzhi r10, rdi, r11
shrd r13, r15, 52
shr rdi, 48
mov rdx, [ rax + 0x20 ]
mulx r9, r15, [ rsi + 0x10 ]
shl rbx, 4
test al, al
adox r8, r15
adox r9, rbp
lea rbx, [ rbx + rdi ]
mov rdx, 0x1000003d1 
mulx rdi, rbp, rbx
adcx r13, r8
adc r9, 0x0
mov rdx, [ rax + 0x0 ]
mulx r8, r15, [ rsi + 0x0 ]
xor rdx, rdx
adox rbp, r15
adox r8, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rax + 0x8 ]
bzhi rdx, r13, rcx
mov [ rsp - 0x20 ], r10
mulx r10, rcx, r14
adox rbx, r15
adox r11, rdi
mov rdx, [ rax + 0x8 ]
mulx r15, rdi, [ rsi + 0x8 ]
mov rdx, rbp
shrd rdx, r8, 52
add rdx, rbx
adc r11, 0x0
shrd r13, r9, 52
xor r9, r9
adox rcx, rdx
adox r11, r10
mov r8, rdi
adcx r8, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x48 ]
mov r10, 0x34 
bzhi rbx, rcx, r10
shrd rcx, r11, 52
mov rdx, [ rsi + 0x20 ]
mulx r11, rdi, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r10, r9, [ rax + 0x10 ]
xor rdx, rdx
adox r8, r9
adox r10, r15
adcx rdi, [ rsp - 0x38 ]
adcx r11, [ rsp - 0x40 ]
mov r15, 0xfffffffffffff 
and rbp, r15
adox r13, rdi
adox r11, rdx
mov r9, r13
shrd r9, r11, 52
and r13, r15
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], rbp
mov rdx, r9
mulx rbp, r9, r14
adox rcx, r8
mov r11, 0x0 
adox r10, r11
mov rdx, r13
mulx r8, r13, r14
adcx r13, rcx
adcx r10, r8
mov rdx, r13
shrd rdx, r10, 52
lea r12, [ r12 + rdx ]
and r13, r15
adox r9, r12
adox rbp, r11
mov rcx, r9
shrd rcx, rbp, 52
add rcx, [ rsp - 0x20 ]
mov [ rdi + 0x20 ], rcx
and r9, r15
mov [ rdi + 0x18 ], r9
mov [ rdi + 0x10 ], r13
mov [ rdi + 0x8 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.1369
; seed 3480357731961045 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1608161 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=174, initial num_batches=31): 99050 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06159209183657607
; number reverted permutation / tried permutation: 72090 / 90244 =79.883%
; number reverted decision / tried decision: 53520 / 89755 =59.629%
; validated in 0.536s
