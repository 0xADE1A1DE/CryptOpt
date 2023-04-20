SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rax + 0x20 ]
mov rdx, r10
shrd rdx, r11, 52
mov rcx, rdx
mov rdx, [ rax + 0x10 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r13
mulx r13, r14, [ rsi + 0x10 ]
add r15, r11
adcx rbx, rdi
mov rdx, 0x1000003d10 
mulx rdi, r11, rcx
mov rcx, 0x34 
bzhi rdx, r10, rcx
adox r15, r14
adox r13, rbx
mov r10, rdx
mov rdx, [ rax + 0x0 ]
mulx rbx, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r12
mulx r12, rcx, [ rax + 0x8 ]
test al, al
adox r14, rcx
adox r12, rbx
adcx r14, r8
adcx r9, r12
mov rdx, [ rax + 0x18 ]
mulx rbx, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox r14, r8
adox rbx, r9
mov rcx, 0x1000003d10 
mov rdx, rcx
mulx r12, rcx, r10
adcx rcx, r14
adcx rbx, r12
mov r10, rcx
shrd r10, rbx, 52
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx r12, r14, [ rax + 0x8 ]
test al, al
adox r14, r9
adox r8, r12
mov rdx, [ rsi + 0x10 ]
mulx r9, rbx, [ rax + 0x18 ]
adcx r14, rbx
adcx r9, r8
mov rdx, [ rax + 0x18 ]
mulx r8, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, r12
adox r8, r13
mov rdx, [ rsi + 0x0 ]
mulx rbx, r13, [ rax + 0x20 ]
adcx r15, r13
adcx rbx, r8
xor rdx, rdx
adox r10, r15
adox rbx, rdx
mov rdx, [ rax + 0x20 ]
mulx r8, r12, [ rsi + 0x8 ]
adcx r14, r12
adcx r8, r9
test al, al
adox r11, r10
adox rbx, rdi
mov rdx, r11
shrd rdx, rbx, 52
add rdx, r14
adc r8, 0x0
mov rdi, 0xfffffffffffff 
mov r9, rdx
and r9, rdi
mov r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r15, [ rax + 0x10 ]
adox r15, rbp
adox r10, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, [ rax + 0x20 ]
shrd r13, r8, 52
test al, al
adox r15, rbp
adox r12, r10
adcx r13, r15
adc r12, 0x0
mov rdx, r13
shrd rdx, r12, 52
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rbx, [ rax + 0x20 ]
mov rdx, [ rax + 0x18 ]
mulx rbp, r10, [ rsi + 0x20 ]
and r11, rdi
mov rdx, r11
shr rdx, 48
add r10, rbx
adcx r8, rbp
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r12, [ rax + 0x8 ]
add r14, r10
adc r8, 0x0
shl r9, 4
lea r9, [ r9 + r15 ]
mov rdx, [ rax + 0x0 ]
mulx r15, rbp, [ rsi + 0x10 ]
mov rdx, 0x1000003d1 
mulx rdi, r10, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r8
mulx r8, r9, [ rax + 0x8 ]
add rbp, r12
adcx rbx, r15
mov rdx, 0x30 
bzhi r12, r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, r11, [ rax + 0x0 ]
adox r11, r9
adox r8, r15
mov rdx, [ rax + 0x0 ]
mulx r15, r9, [ rsi + 0x0 ]
test al, al
adox r10, r9
adox r15, rdi
mov rdx, 0xfffffffffffff 
mov rdi, r10
and rdi, rdx
and r13, rdx
shrd r10, r15, 52
add r10, r11
adc r8, 0x0
mov r11, 0x1000003d10 
mov rdx, r13
mulx r9, r13, r11
xor r15, r15
adox r13, r10
adox r8, r9
mov rdx, 0xfffffffffffff 
mov r10, r14
and r10, rdx
mov r9, r13
and r9, rdx
adox rbp, [ rsp - 0x40 ]
adox rbx, [ rsp - 0x48 ]
shrd r13, r8, 52
test al, al
adox r13, rbp
adox rbx, r15
mov rdx, r11
mulx r8, r11, r10
adcx r11, r13
adcx rbx, r8
mov r10, 0xfffffffffffff 
and rcx, r10
mov rbp, r11
shrd rbp, rbx, 52
mov r13, [ rsp - 0x30 ]
shrd r14, r13, 52
mulx r8, r13, r14
lea rcx, [ rcx + rbp ]
test al, al
adox r13, rcx
adox r8, r15
mov rbx, r13
shrd rbx, r8, 52
lea r12, [ r12 + rbx ]
and r11, r10
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], rdi
mov [ rbp + 0x20 ], r12
mov [ rbp + 0x10 ], r11
mov [ rbp + 0x8 ], r9
and r13, r10
mov [ rbp + 0x18 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.0542
; seed 1958252796983144 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2118750 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=183, initial num_batches=31): 114667 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.0541201179941003
; number reverted permutation / tried permutation: 66777 / 90257 =73.985%
; number reverted decision / tried decision: 35730 / 89742 =39.814%
; validated in 0.447s
