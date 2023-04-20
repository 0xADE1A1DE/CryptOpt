SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
xor rdx, rdx
adox rcx, rbp
adox r12, r8
mov rdx, [ rax + 0x8 ]
mulx rbp, r8, [ rsi + 0x20 ]
adcx r9, r10
adcx r11, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x20 ]
mov rdx, r13
shrd rdx, r14, 52
mov r14, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
add r9, r15
adcx rdi, r11
mov rdx, [ rsi + 0x0 ]
mulx r15, r11, [ rax + 0x18 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r8
mulx r8, rbp, r14
mov r14, 0xfffffffffffff 
and r13, r14
adox r9, r11
adox r15, rdi
mulx r11, rdi, r13
adcx rdi, r9
adcx r15, r11
mov r13, rdi
shrd r13, r15, 52
xor r9, r9
adox rcx, r10
adox rbx, r12
mov rdx, [ rsi + 0x8 ]
mulx r10, r12, [ rax + 0x18 ]
adcx rcx, r12
adcx r10, rbx
mov rdx, [ rsi + 0x0 ]
mulx r15, r11, [ rax + 0x20 ]
mov rdx, [ rax + 0x10 ]
mulx r12, rbx, [ rsi + 0x18 ]
xor rdx, rdx
adox rcx, r11
adox r15, r10
adcx r13, rcx
adc r15, 0x0
add rbp, r13
adcx r15, r8
mov r9, rbp
shrd r9, r15, 52
mov rdx, [ rsi + 0x10 ]
mulx r10, r8, [ rax + 0x18 ]
mov rdx, rbx
test al, al
adox rdx, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
adcx rdx, r8
adcx r10, r12
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rbx, [ rax + 0x20 ]
xor rdx, rdx
adox r11, rbx
adox rcx, r10
adcx r9, r11
adc rcx, 0x0
mov r13, r9
shrd r13, rcx, 52
and rbp, r14
and r9, r14
shl r9, 4
mov r15, rbp
shr r15, 48
lea r9, [ r9 + r15 ]
mov rdx, [ rax + 0x0 ]
mulx r12, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, r10, [ rax + 0x18 ]
mov rdx, 0x1000003d1 
mulx rcx, r11, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, r15, [ rax + 0x20 ]
test al, al
adox r11, r8
adox r12, rcx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r8, [ rax + 0x10 ]
adcx r8, r10
adcx rbx, rcx
xor rdx, rdx
adox r8, r15
adox r9, rbx
adcx r13, r8
adc r9, 0x0
mov r10, r13
shrd r10, r9, 52
mov r15, r11
shrd r15, r12, 52
mov rdx, [ rax + 0x20 ]
mulx rcx, r12, [ rsi + 0x18 ]
and r11, r14
mov rdx, [ rax + 0x18 ]
mulx r8, rbx, [ rsi + 0x20 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r11
adox rbx, r12
adox rcx, r8
adcx r10, rbx
adc rcx, 0x0
mov r9, r10
shrd r9, rcx, 52
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx rcx, rbx, [ rsi + 0x8 ]
mov rdx, 0x1000003d10 
mulx r12, r14, r9
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r12
mulx r12, r9, [ rsi + 0x10 ]
xor rdx, rdx
adox rbx, r11
adox r8, rcx
adcx r15, rbx
adc r8, 0x0
mov r11, 0xfffffffffffff 
and r13, r11
mov rcx, 0x1000003d10 
mov rdx, r13
mulx rbx, r13, rcx
adox r13, r15
adox r8, rbx
mov r15, r13
shrd r15, r8, 52
and rdi, r11
mov rdx, [ rsi + 0x8 ]
mulx r8, rbx, [ rax + 0x8 ]
adox r9, rbx
adox r8, r12
mov rdx, [ rsi + 0x0 ]
mulx rbx, r12, [ rax + 0x10 ]
adcx r9, r12
adcx rbx, r8
and r10, r11
mov rdx, rcx
mulx r8, rcx, r10
adox r15, r9
mov r12, 0x0 
adox rbx, r12
adcx rcx, r15
adcx rbx, r8
mov r9, rcx
shrd r9, rbx, 52
lea rdi, [ rdi + r9 ]
xor r10, r10
adox r14, rdi
mov r12, [ rsp - 0x38 ]
adox r12, r10
mov r8, 0xffffffffffff 
and rbp, r8
mov r15, r14
shrd r15, r12, 52
and rcx, r11
lea rbp, [ rbp + r15 ]
and r14, r11
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x20 ], rbp
mov [ rbx + 0x18 ], r14
and r13, r11
mov [ rbx + 0x10 ], rcx
mov [ rbx + 0x8 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3111
; seed 1521614446483783 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 828183 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=325, initial num_batches=31): 79979 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.09657165143452594
; number reverted permutation / tried permutation: 70476 / 90261 =78.080%
; number reverted decision / tried decision: 52281 / 89738 =58.260%
; validated in 0.247s
