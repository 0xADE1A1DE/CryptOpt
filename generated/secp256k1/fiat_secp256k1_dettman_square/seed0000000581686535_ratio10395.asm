SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, [ rsi + 0x0 ]
mov r10, rax
shl r10, 0x1
mov rdx, [ rsi + 0x20 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x8 ]
lea rcx, [rdx + rdx]
mov rdx, [ rsi + 0x10 ]
mov r8, rdx
shl r8, 0x1
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rcx
mov rdx, rax
shrd rdx, r11, 52
mov r11, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r11
mov rdx, rcx
mov [ rsp - 0x58 ], r15
mulx r15, rcx, [ rsi + 0x10 ]
mov rdx, r10
mulx r11, r10, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov rdi, 0xfffffffffffff 
and rax, rdi
adox rcx, r10
adox r11, r15
mov r15, 0x1000003d10 
xchg rdx, r15
mulx rdi, r10, rax
adcx r10, rcx
adcx r11, rdi
mov rax, r10
shrd rax, r11, 52
mov rdx, [ rsi + 0x10 ]
mulx rdi, rcx, rdx
xor rdx, rdx
adox rcx, r9
adox rbx, rdi
mov rdx, [ rsi + 0x20 ]
mulx r11, r9, r15
adcx rcx, r9
adcx r11, rbx
xor rdx, rdx
adox rax, rcx
adox r11, rdx
adcx r13, rax
adcx r11, r14
mov rdx, r8
mulx r14, r8, [ rsi + 0x20 ]
mulx rbx, rdi, [ rsi + 0x18 ]
mov rdx, r13
shrd rdx, r11, 52
xor r9, r9
adox rdi, rbp
adox r12, rbx
adcx rdx, rdi
adc r12, 0x0
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx rax, rcx, rdx
mov rdx, rbp
shrd rdx, r12, 52
mov rbx, 0x34 
bzhi rdi, r13, rbx
bzhi r13, rbp, rbx
shl r13, 4
mov r11, rdi
shr r11, 48
mov rbp, 0xffffffffffff 
and rdi, rbp
lea r13, [ r13 + r11 ]
mov r12, [ rsi + 0x18 ]
lea r11, [r12 + r12]
adox rcx, r8
adox r14, rax
adcx rdx, rcx
adc r14, 0x0
mov r12, rdx
shrd r12, r14, 52
bzhi r8, rdx, rbx
mov rax, 0x1000003d10 
mov rdx, rax
mulx rcx, rax, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, r14, rdx
mov rdx, 0x1000003d1 
mulx rbx, r9, r13
adox r9, r14
adox r8, rbx
mov rdx, r11
mulx r13, r11, [ rsi + 0x20 ]
mov rdx, 0x34 
bzhi r14, r9, rdx
mov rdx, r15
mulx rbx, r15, [ rsi + 0x8 ]
shrd r9, r8, 52
add r9, r15
adc rbx, 0x0
xor r8, r8
adox r12, r11
adox r13, r8
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x0 ], r14
mov r14, 0x34 
bzhi r15, r12, r14
adox rax, r9
adox rbx, rcx
shrd r12, r13, 52
bzhi rcx, rax, r14
bzhi r9, r10, r14
mulx r13, r10, [ rsi + 0x10 ]
mov rdx, 0x1000003d10 
mulx r14, r8, r12
shrd rax, rbx, 52
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, rdx
xor rdx, rdx
adox rbx, r10
adox r13, r12
adcx rax, rbx
adc r13, 0x0
mov r10, 0x1000003d10 
mov rdx, r10
mulx r12, r10, r15
xor r15, r15
adox r10, rax
adox r13, r12
mov rbx, r10
shrd rbx, r13, 52
lea r9, [ r9 + rbx ]
xor rax, rax
adox r8, r9
adox r14, rax
mov r15, r8
shrd r15, r14, 52
lea rdi, [ rdi + r15 ]
mov r12, 0xfffffffffffff 
and r10, r12
and r8, r12
mov [ r11 + 0x10 ], r10
mov [ r11 + 0x20 ], rdi
mov [ r11 + 0x18 ], r8
mov [ r11 + 0x8 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0395
; seed 0477606136423174 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 987912 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=232, initial num_batches=31): 85076 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.08611698207937549
; number reverted permutation / tried permutation: 74867 / 89954 =83.228%
; number reverted decision / tried decision: 53576 / 90045 =59.499%
; validated in 0.261s
