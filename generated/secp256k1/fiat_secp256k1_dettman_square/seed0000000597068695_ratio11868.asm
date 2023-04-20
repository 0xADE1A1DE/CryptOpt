SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x8 ]
mov rdx, r11
shl rdx, 0x1
mulx rcx, r11, [ rsi + 0x10 ]
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, 0xfffffffffffff 
mov [ rsp - 0x78 ], rbp
mov rbp, rax
and rbp, rdx
mov [ rsp - 0x70 ], r12
mov r12, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
lea r13, [r12 + r12]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r12, r13
mov rdx, 0x1000003d10 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbp
adox r11, r12
adox r14, rcx
adcx r15, r11
adcx r14, rdi
mov rcx, r15
shrd rcx, r14, 52
shrd rax, r10, 52
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, r13
mov rdx, r8
mulx r12, r8, [ rsi + 0x18 ]
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mulx r14, r11, r13
mov rdx, 0x1000003d10 
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r10
mulx r10, rbp, rax
xor rax, rax
adox r9, r8
adox r12, rbx
adcx r9, r11
adcx r14, r12
mov rbx, 0x1 
shlx r8, [ rsi + 0x10 ], rbx
add rcx, r9
adc r14, 0x0
add rbp, rcx
adcx r14, r10
mov r11, rbp
shrd r11, r14, 52
mov rdx, r8
mulx r10, r8, [ rsi + 0x18 ]
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r9, rdi
test al, al
adox r8, r9
adox rcx, r10
adcx r11, r8
adc rcx, 0x0
mov rdx, 0x34 
bzhi rdi, rbp, rdx
mov rbp, r11
shrd rbp, rcx, 52
mov r14, rdi
shr r14, 48
bzhi r10, r11, rdx
mov r9, 0x30 
bzhi r8, rdi, r9
shl r10, 4
mov rdx, r12
mulx r11, r12, [ rsi + 0x20 ]
lea r10, [ r10 + r14 ]
mov rdx, [ rsi + 0x18 ]
mulx rdi, rcx, rdx
add rcx, r12
adcx r11, rdi
shlx rdx, [ rsi + 0x18 ], rbx
mulx r12, r14, [ rsi + 0x20 ]
add rbp, rcx
adc r11, 0x0
mov rdi, 0x1000003d1 
mov rdx, rdi
mulx rcx, rdi, r10
mov r10, 0x34 
bzhi rax, rbp, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, rbx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r8
mulx r8, r9, rdx
adox rdi, rbx
adox r10, rcx
shrd rbp, r11, 52
add rbp, r14
adc r12, 0x0
mov rdx, rbp
shrd rdx, r12, 52
mov r14, rdi
shrd r14, r10, 52
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbx, rcx, r13
xor rdx, rdx
adox r14, rcx
adox rbx, rdx
mov r13, 0x1000003d10 
mov rdx, r13
mulx r10, r13, rax
adcx r13, r14
adcx rbx, r10
mov rax, 0x34 
bzhi r12, r13, rax
bzhi rcx, rbp, rax
shrd r13, rbx, 52
test al, al
adox r9, [ rsp - 0x40 ]
adox r8, [ rsp - 0x48 ]
adcx r13, r9
adc r8, 0x0
mulx r14, rbp, rcx
bzhi r10, r15, rax
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x8 ], r12
adox rbp, r13
adox r8, r14
mov rbx, rbp
shrd rbx, r8, 52
lea r10, [ r10 + rbx ]
mulx rcx, r12, r11
add r12, r10
adc rcx, 0x0
bzhi r11, r12, rax
bzhi r9, rbp, rax
mov [ r15 + 0x10 ], r9
mov [ r15 + 0x18 ], r11
shrd r12, rcx, 52
add r12, [ rsp - 0x38 ]
bzhi r13, rdi, rax
mov [ r15 + 0x0 ], r13
mov [ r15 + 0x20 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.1868
; seed 0400077642063282 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1017237 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=272, initial num_batches=31): 82289 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.08089461944463286
; number reverted permutation / tried permutation: 76134 / 89992 =84.601%
; number reverted decision / tried decision: 65579 / 90007 =72.860%
; validated in 0.334s
