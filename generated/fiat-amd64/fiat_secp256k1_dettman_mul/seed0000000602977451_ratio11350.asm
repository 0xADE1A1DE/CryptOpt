SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x18 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r13
mulx r13, r14, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r11
mulx r11, r15, [ rax + 0x10 ]
add r9, rcx
adcx r8, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, rcx, [ rax + 0x10 ]
xor rdx, rdx
adox r9, r15
adox r11, r8
mov rdx, [ rax + 0x0 ]
mulx r8, r15, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x30 ], r10
mov [ rsp - 0x28 ], r12
mulx r12, r10, [ rsi + 0x10 ]
adcx r15, r10
adcx r12, r8
mov rdx, [ rsi + 0x0 ]
mulx r10, r8, [ rax + 0x18 ]
add r15, rcx
adcx rbx, r12
test al, al
adox r15, r8
adox r10, rbx
adcx r14, r15
adcx r10, r13
mov rdx, r14
shrd rdx, r10, 52
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx r12, rcx, [ rax + 0x18 ]
test al, al
adox r9, rcx
adox r12, r11
mov rdx, 0xfffffffffffff 
and r14, rdx
adox r9, rbp
adox r12, [ rsp - 0x28 ]
adcx r9, r13
adc r12, 0x0
mov rbp, 0x1000003d10000 
mov rdx, rbp
mulx r11, rbp, rdi
mov rdx, [ rax + 0x10 ]
mulx rbx, r8, [ rsi + 0x18 ]
xor rdx, rdx
adox rbp, r9
adox r12, r11
mov r15, 0xfffffffffffff 
mov r10, rbp
and r10, r15
shrd rbp, r12, 52
mov rdx, [ rsi + 0x20 ]
mulx rcx, r13, [ rax + 0x8 ]
xor rdx, rdx
adox r13, r8
adox rbx, rcx
adcx r13, [ rsp - 0x30 ]
adcx rbx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, rdi, [ rax + 0x20 ]
xor rdx, rdx
adox r13, rdi
adox r9, rbx
mov rdx, [ rsi + 0x18 ]
mulx r8, r11, [ rax + 0x18 ]
adcx r13, rbp
adc r9, 0x0
mov rdx, r13
and rdx, r15
shrd r13, r9, 52
shl rdx, 4
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, rbp, [ rax + 0x20 ]
mov rdx, [ rax + 0x10 ]
mulx rdi, rbx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x18 ]
mulx r15, r9, [ rsi + 0x20 ]
xor rdx, rdx
adox rbx, r11
adox r8, rdi
adcx rbx, rbp
adcx rcx, r8
mov r11, r10
shr r11, 48
lea r11, [ r11 + r12 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, r12, [ rax + 0x20 ]
add r9, r12
adcx rbp, r15
mov rdx, 0x1000003d1 
mulx r15, rdi, r11
xor r8, r8
adox rdi, [ rsp - 0x40 ]
adox r15, [ rsp - 0x48 ]
adcx rbx, r13
adc rcx, 0x0
mov r13, rbx
shrd r13, rcx, 52
xor r11, r11
adox r9, r13
adox rbp, r11
mov rdx, [ rax + 0x0 ]
mulx r12, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], rbp
mulx rbp, r11, [ rax + 0x8 ]
adcx r8, rcx
adcx r13, r12
mov rdx, rdi
shrd rdx, r15, 52
add r8, rdx
adc r13, 0x0
mov r15, 0x34 
bzhi r12, rbx, r15
mov rdx, [ rax + 0x0 ]
mulx rcx, rbx, [ rsi + 0x10 ]
adox rbx, r11
adox rbp, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x18 ], r14
mulx r14, r15, r12
xor r12, r12
adox r15, r8
adox r13, r14
adcx rbx, r11
adcx rcx, rbp
mulx rbp, r8, r9
mov r9, r15
shrd r9, r13, 52
xor r11, r11
adox rbx, r9
adox rcx, r11
adcx r8, rbx
adcx rcx, rbp
mov r12, r8
shrd r12, rcx, 52
add r12, [ rsp - 0x18 ]
mov r14, 0x1000003d10000 
mov rdx, [ rsp - 0x20 ]
mulx rbp, r13, r14
xor rdx, rdx
adox r13, r12
adox rbp, rdx
mov r11, 0xfffffffffffff 
mov r9, r13
and r9, r11
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x18 ], r9
mov rcx, 0x30 
bzhi r12, r10, rcx
and r8, r11
shrd r13, rbp, 52
and rdi, r11
lea r13, [ r13 + r12 ]
mov [ rbx + 0x20 ], r13
and r15, r11
mov [ rbx + 0x8 ], r15
mov [ rbx + 0x0 ], rdi
mov [ rbx + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.1350
; seed 3434152007083974 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1633709 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=118, initial num_batches=31): 100726 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06165479898806948
; number reverted permutation / tried permutation: 74667 / 95080 =78.531%
; number reverted decision / tried decision: 56629 / 94919 =59.660%
; validated in 0.634s
