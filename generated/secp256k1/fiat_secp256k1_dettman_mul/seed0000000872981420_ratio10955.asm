SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
add r10, rcx
adcx r8, r11
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
test al, al
adox r15, r13
adox r14, rdi
mov rdx, [ rax + 0x18 ]
mulx rdi, r13, [ rsi + 0x18 ]
adcx r11, r13
adcx rdi, rcx
mov rdx, r9
shrd rdx, rbx, 52
mov rbx, 0x1000003d10 
mulx r13, rcx, rbx
mov rdx, 0xfffffffffffff 
and r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r13
mulx r13, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rcx
mov [ rsp - 0x38 ], r8
mulx r8, rcx, [ rax + 0x10 ]
adox r15, rcx
adox r8, r14
adcx r11, rbx
adcx r13, rdi
mov rdx, 0x1000003d10 
mulx rdi, r14, r9
xor r9, r9
adox r15, rbp
adox r12, r8
adcx r14, r15
adcx r12, rdi
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, [ rax + 0x10 ]
mov rdx, r14
shrd rdx, r12, 52
add r10, rbp
adcx rbx, [ rsp - 0x38 ]
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r8, [ rax + 0x18 ]
test al, al
adox r10, r8
adox rdi, rbx
mov rdx, [ rsi + 0x0 ]
mulx r12, r15, [ rax + 0x20 ]
adcx r10, r15
adcx r12, rdi
xor rdx, rdx
adox rcx, r10
adox r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, r9, [ rax + 0x10 ]
mov rdx, rcx
adcx rdx, [ rsp - 0x40 ]
adcx r12, [ rsp - 0x48 ]
mov rbx, rdx
shrd rbx, r12, 52
mov r8, 0x34 
bzhi rdi, rdx, r8
mov r15, rdi
shr r15, 48
mov rdx, [ rax + 0x8 ]
mulx rcx, r10, [ rsi + 0x20 ]
add r10, r9
adcx rbp, rcx
mov rdx, 0x30 
bzhi r9, rdi, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r12, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, 0xfffffffffffff 
and r14, rdx
adox r10, r12
adox rdi, rbp
adcx r10, rcx
adcx r8, rdi
xor rbp, rbp
adox rbx, r10
adox r8, rbp
mov r12, rbx
and r12, rdx
shl r12, 4
lea r12, [ r12 + r15 ]
shrd rbx, r8, 52
mov r15, 0x1000003d1 
mov rdx, r15
mulx rcx, r15, r12
mov rdx, [ rax + 0x0 ]
mulx r10, rdi, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mulx r12, r8, [ rsi + 0x20 ]
test al, al
adox r15, rdi
adox r10, rcx
mov rdx, [ rsi + 0x18 ]
mulx rdi, rcx, [ rax + 0x20 ]
adcx rbx, r11
adc r13, 0x0
mov rdx, rbx
shrd rdx, r13, 52
mov r11, 0xfffffffffffff 
and rbx, r11
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, rbp, [ rax + 0x0 ]
adox r8, rcx
adox rdi, r12
mov rdx, 0x1000003d10 
mulx rcx, r12, rbx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x30 ], r9
mulx r9, rbx, [ rsi + 0x8 ]
adcx r13, r8
adc rdi, 0x0
mov rdx, 0x34 
bzhi r8, r15, rdx
mov [ rsp - 0x28 ], r8
bzhi r8, r13, rdx
shrd r15, r10, 52
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r14
mulx r14, r10, [ rax + 0x8 ]
add rbp, rbx
adcx r9, r11
mov rdx, [ rsi + 0x8 ]
mulx rbx, r11, [ rax + 0x0 ]
test al, al
adox r11, r10
adox r14, rbx
adcx r15, r11
adc r14, 0x0
mov rdx, [ rax + 0x10 ]
mulx rbx, r10, [ rsi + 0x0 ]
xor rdx, rdx
adox r12, r15
adox r14, rcx
mov rcx, 0xfffffffffffff 
mov r11, r12
and r11, rcx
adox rbp, r10
adox rbx, r9
mov r9, 0x1000003d10 
mov rdx, r9
mulx r15, r9, r8
shrd r13, rdi, 52
shrd r12, r14, 52
mulx r8, rdi, r13
xor r10, r10
adox r12, rbp
adox rbx, r10
adcx r9, r12
adcx rbx, r15
mov r14, r9
and r14, rcx
shrd r9, rbx, 52
add r9, [ rsp - 0x20 ]
xor rbp, rbp
adox rdi, r9
adox r8, rbp
mov r10, rdi
and r10, rcx
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x18 ], r10
shrd rdi, r8, 52
add rdi, [ rsp - 0x30 ]
mov [ r15 + 0x8 ], r11
mov r11, [ rsp - 0x28 ]
mov [ r15 + 0x0 ], r11
mov [ r15 + 0x10 ], r14
mov [ r15 + 0x20 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.0955
; seed 0130813129553317 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2201001 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=160, initial num_batches=31): 142667 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06481914365327412
; number reverted permutation / tried permutation: 70610 / 90137 =78.336%
; number reverted decision / tried decision: 52206 / 89862 =58.096%
; validated in 0.557s
