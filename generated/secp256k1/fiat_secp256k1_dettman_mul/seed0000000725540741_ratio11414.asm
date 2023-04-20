SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r9
mulx r9, rbx, [ rax + 0x0 ]
xor rdx, rdx
adox rbp, r10
adox r11, r12
adcx rbp, r15
adcx rdi, r11
mov rdx, [ rax + 0x20 ]
mulx r12, r10, [ rsi + 0x10 ]
add rbp, rcx
adcx r8, rdi
mov rdx, [ rax + 0x8 ]
mulx r15, rcx, [ rsi + 0x0 ]
mov rdx, r13
shrd rdx, r14, 52
mov r14, 0x1000003d10 
mulx rdi, r11, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r9
mulx r9, r14, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rbx
mov [ rsp - 0x28 ], r15
mulx r15, rbx, [ rax + 0x10 ]
xor rdx, rdx
adox r14, [ rsp - 0x40 ]
adox r9, [ rsp - 0x48 ]
adcx r14, rbx
adcx r15, r9
mov rbx, 0xfffffffffffff 
and r13, rbx
mov r9, 0x1000003d10 
mov rdx, r9
mulx rbx, r9, r13
adox r9, rbp
adox r8, rbx
mov rdx, [ rsi + 0x8 ]
mulx r13, rbp, [ rax + 0x18 ]
adcx r14, rbp
adcx r13, r15
mov rdx, [ rsi + 0x0 ]
mulx rbx, r15, [ rax + 0x20 ]
xor rdx, rdx
adox r14, r15
adox rbx, r13
mov rbp, r9
shrd rbp, r8, 52
test al, al
adox rbp, r14
adox rbx, rdx
adcx r11, rbp
adcx rbx, rdi
mov rdi, 0x34 
bzhi r8, r11, rdi
shrd r11, rbx, 52
mov rdx, [ rax + 0x8 ]
mulx r15, r13, [ rsi + 0x20 ]
mov rdx, 0x30 
bzhi r14, r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rax + 0x10 ]
shr r8, 48
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r14
mulx r14, rdi, [ rax + 0x20 ]
test al, al
adox r13, rbp
adox rbx, r15
mov rdx, [ rsi + 0x10 ]
mulx rbp, r15, [ rax + 0x18 ]
adcx r13, r15
adcx rbp, rbx
test al, al
adox r13, rdi
adox r14, rbp
mov rdx, [ rsi + 0x20 ]
mulx rbx, rdi, [ rax + 0x10 ]
adcx r11, r13
adc r14, 0x0
mov rdx, [ rax + 0x18 ]
mulx rbp, r15, [ rsi + 0x18 ]
add rdi, r15
adcx rbp, rbx
xor rdx, rdx
adox rdi, r10
adox r12, rbp
mov r10, r11
shrd r10, r14, 52
add r10, rdi
adc r12, 0x0
mov r13, 0x34 
bzhi rbx, r10, r13
shrd r10, r12, 52
bzhi r15, r11, r13
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, [ rax + 0x0 ]
shl r15, 4
lea r15, [ r15 + r8 ]
mov rdx, [ rax + 0x20 ]
mulx rbp, r8, [ rsi + 0x18 ]
mov rdx, 0x1000003d1 
mulx r12, rdi, r15
xor r15, r15
adox rdi, r11
adox r14, r12
mov rdx, [ rsi + 0x20 ]
mulx r12, r11, [ rax + 0x18 ]
adcx r11, r8
adcx rbp, r12
mov rdx, 0x1000003d10 
mulx r12, r8, rbx
mov rbx, rdi
shrd rbx, r14, 52
mov r14, rcx
add r14, [ rsp - 0x30 ]
mov r13, [ rsp - 0x38 ]
adcx r13, [ rsp - 0x28 ]
xor rcx, rcx
adox rbx, r14
adox r13, rcx
mov rdx, [ rsi + 0x8 ]
mulx r14, r15, [ rax + 0x8 ]
adcx r8, rbx
adcx r13, r12
mov rdx, [ rax + 0x0 ]
mulx rbx, r12, [ rsi + 0x10 ]
xor rdx, rdx
adox r12, r15
adox r14, rbx
mov rdx, [ rax + 0x10 ]
mulx r15, rcx, [ rsi + 0x0 ]
adcx r10, r11
adc rbp, 0x0
xor rdx, rdx
adox r12, rcx
adox r15, r14
mov r11, 0xfffffffffffff 
mov rbx, r10
and rbx, r11
mov r14, 0x1000003d10 
mov rdx, r14
mulx rcx, r14, rbx
and rdi, r11
mov rbx, r8
shrd rbx, r13, 52
xor r13, r13
adox rbx, r12
adox r15, r13
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x0 ], rdi
adcx r14, rbx
adcx r15, rcx
mov rcx, r14
shrd rcx, r15, 52
and r9, r11
and r14, r11
shrd r10, rbp, 52
mov [ r12 + 0x10 ], r14
lea r9, [ r9 + rcx ]
mulx rdi, rbp, r10
xor rbx, rbx
adox rbp, r9
adox rdi, rbx
mov r13, rbp
and r13, r11
mov [ r12 + 0x18 ], r13
shrd rbp, rdi, 52
add rbp, [ rsp - 0x20 ]
and r8, r11
mov [ r12 + 0x8 ], r8
mov [ r12 + 0x20 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.1414
; seed 1118411911017543 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1365923 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=227, initial num_batches=31): 90959 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06659160142994883
; number reverted permutation / tried permutation: 68681 / 89745 =76.529%
; number reverted decision / tried decision: 52564 / 90254 =58.240%
; validated in 0.487s
