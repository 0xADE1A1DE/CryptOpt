SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
test al, al
adox rcx, r13
adox r14, r8
mov rdx, [ rsi + 0x20 ]
mulx r13, r8, [ rax + 0x20 ]
adcx rcx, rbp
adcx r12, r14
mov rdx, 0x1000003d10000 
mulx r14, rbp, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], rbx
mulx rbx, r13, [ rax + 0x0 ]
xor rdx, rdx
adox r13, r15
adox rdi, rbx
adcx r13, r10
adcx r11, rdi
mov rdx, [ rax + 0x18 ]
mulx r15, r10, [ rsi + 0x0 ]
mov rdx, 0x1000003d10 
mulx rdi, rbx, r8
test al, al
adox rcx, r10
adox r15, r12
adcx rbx, rcx
adcx r15, rdi
mov rdx, [ rax + 0x18 ]
mulx r8, r12, [ rsi + 0x8 ]
mov rdx, rbx
shrd rdx, r15, 52
test al, al
adox r13, r12
adox r8, r11
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx rdi, r10, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mulx r15, rcx, [ rsi + 0x20 ]
adcx r13, r10
adcx rdi, r8
mov rdx, [ rax + 0x10 ]
mulx r8, r12, [ rsi + 0x18 ]
test al, al
adox r13, r11
mov rdx, 0x0 
adox rdi, rdx
adcx rbp, r13
adcx rdi, r14
mov r14, 0xfffffffffffff 
mov r11, rbp
and r11, r14
mov r10, r11
shr r10, 48
add rcx, r12
adcx r8, r15
mov rdx, [ rsi + 0x10 ]
mulx r12, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], r10
mulx r10, r9, [ rsi + 0x10 ]
test al, al
adox rcx, r15
adox r12, r8
adcx rcx, r13
adcx r14, r12
shrd rbp, rdi, 52
xor rdx, rdx
adox rcx, rbp
adox r14, rdx
mov rdx, [ rax + 0x10 ]
mulx r8, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, r15, [ rax + 0x18 ]
adcx rdi, r15
adcx r13, r8
mov rdx, rcx
shrd rdx, r14, 52
add rdi, r9
adcx r10, r13
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbp, r12, [ rax + 0x0 ]
mov rdx, 0x34 
bzhi r8, rcx, rdx
shl r8, 4
add r8, [ rsp - 0x38 ]
mov rcx, 0x1000003d1 
mov rdx, r8
mulx r14, r8, rcx
mov r15, 0x30 
bzhi r13, r11, r15
adox r8, r12
adox rbp, r14
mov rdx, [ rax + 0x0 ]
mulx r12, r11, [ rsi + 0x8 ]
xor rdx, rdx
adox rdi, r9
adox r10, rdx
mov r9, 0x34 
bzhi r14, rdi, r9
mov rdx, 0x1000003d10 
mulx r15, r9, r14
mov rdx, [ rsi + 0x8 ]
mulx rcx, r14, [ rax + 0x8 ]
shrd rdi, r10, 52
xor rdx, rdx
adox r11, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r13
mulx r13, r10, [ rax + 0x0 ]
mov rdx, r8
shrd rdx, rbp, 52
xor rbp, rbp
adox r10, r14
adox rcx, r13
adcx r11, rdx
adc r12, 0x0
add r9, r11
adcx r12, r15
mov r15, 0x34 
bzhi r14, r9, r15
mov rdx, [ rsi + 0x0 ]
mulx r11, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x20 ]
mulx r15, rbp, [ rsi + 0x18 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r14
adox r10, r13
adox r11, rcx
mov rcx, rdx
mov rdx, [ rax + 0x18 ]
mulx r13, r14, [ rsi + 0x20 ]
xor rdx, rdx
adox r14, rbp
adox r15, r13
adcx r14, rdi
adc r15, 0x0
mov rdi, 0x1000003d10 
mov rdx, rdi
mulx rbp, rdi, r14
mov r13, 0x34 
bzhi r14, rbx, r13
shrd r9, r12, 52
xor rbx, rbx
adox r10, r9
adox r11, rbx
adcx rdi, r10
adcx r11, rbp
mov r12, rdi
shrd r12, r11, 52
bzhi rbp, rdi, r13
mov [ rcx + 0x10 ], rbp
mov r9, 0x1000003d10000 
mov rdx, r9
mulx r10, r9, r15
lea r12, [ r12 + r14 ]
adox r9, r12
adox r10, rbx
bzhi r14, r9, r13
bzhi rdi, r8, r13
mov [ rcx + 0x0 ], rdi
shrd r9, r10, 52
mov [ rcx + 0x18 ], r14
add r9, [ rsp - 0x30 ]
mov [ rcx + 0x20 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.1350
; seed 1416647981692746 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2349626 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=118, initial num_batches=31): 137201 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.05839269739098903
; number reverted permutation / tried permutation: 73718 / 94986 =77.609%
; number reverted decision / tried decision: 55830 / 95013 =58.760%
; validated in 0.82s
