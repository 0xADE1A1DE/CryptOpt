SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x20 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, rcx
shrd rdx, r8, 52
mov r8, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r8
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r8, r15, [ rsi + 0x0 ]
test al, al
adox r10, rbp
adox r12, r11
adcx r10, r9
adcx rbx, r12
mov rdx, [ rsi + 0x18 ]
mulx r9, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, [ rax + 0x8 ]
test al, al
adox r11, rbp
adox r12, r9
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, [ rax + 0x10 ]
adcx r11, r9
adcx rbp, r12
mov rdx, 0xfffffffffffff 
and rcx, rdx
mov r12, 0x1000003d10 
mov rdx, r12
mulx r9, r12, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rcx, [ rax + 0x18 ]
adox r11, rcx
adox rdi, rbp
adcx r12, r11
adcx rdi, r9
mov rdx, r12
shrd rdx, rdi, 52
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, r11, [ rax + 0x20 ]
xor rdx, rdx
adox r10, r9
adox rcx, rbx
adcx r10, r11
adcx rdi, rcx
test al, al
adox rbp, r10
adox rdi, rdx
adcx r13, rbp
adcx rdi, r14
mov r14, 0xfffffffffffff 
and r12, r14
mov rbx, r13
shrd rbx, rdi, 52
and r13, r14
mov rdx, [ rsi + 0x20 ]
mulx r11, r9, [ rax + 0x8 ]
mov rdx, 0x30 
bzhi rcx, r13, rdx
shr r13, 48
mov rdx, [ rax + 0x20 ]
mulx rbp, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, rdi, [ rax + 0x10 ]
add r9, rdi
adcx r14, r11
mov rdx, [ rax + 0x10 ]
mulx rdi, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rcx
mov [ rsp - 0x40 ], r12
mulx r12, rcx, [ rax + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], r15
mulx r15, r8, [ rsi + 0x10 ]
add r9, r8
adcx r15, r14
test al, al
adox r9, rcx
adox r12, r15
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rax + 0x18 ]
adcx r11, r14
adcx rcx, rdi
add rbx, r9
adc r12, 0x0
mov rdx, 0xfffffffffffff 
mov rdi, rbx
and rdi, rdx
adox r11, r10
adox rbp, rcx
shrd rbx, r12, 52
xor r10, r10
adox rbx, r11
adox rbp, r10
shl rdi, 4
lea rdi, [ rdi + r13 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, r13, [ rax + 0x0 ]
mov rdx, 0x1000003d1 
mulx r9, r15, rdi
test al, al
adox r15, r13
adox r8, r9
mov rdx, [ rax + 0x8 ]
mulx rcx, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r11, r12, [ rax + 0x0 ]
mov rdx, 0xfffffffffffff 
mov rdi, r15
and rdi, rdx
mov r13, rbx
shrd r13, rbp, 52
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], rdi
and rbx, rdx
mov r9, 0x1000003d10 
mov rdx, rbx
mulx rdi, rbx, r9
shrd r15, r8, 52
add r12, r14
adcx rcx, r11
xor r8, r8
adox r15, r12
adox rcx, r8
adcx rbx, r15
adcx rcx, rdi
mov r10, 0x34 
bzhi r14, rbx, r10
mov rdx, [ rsi + 0x18 ]
mulx rdi, r11, [ rax + 0x20 ]
shrd rbx, rcx, 52
mov rdx, [ rsi + 0x20 ]
mulx r15, r12, [ rax + 0x18 ]
add r12, r11
adcx rdi, r15
mov rdx, [ rax + 0x0 ]
mulx r11, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, r15, [ rax + 0x8 ]
xor rdx, rdx
adox rcx, r15
adox r8, r11
adcx rcx, [ rsp - 0x30 ]
adcx r8, [ rsp - 0x38 ]
test al, al
adox r13, r12
adox rdi, rdx
adcx rbx, rcx
adc r8, 0x0
bzhi r12, r13, r10
mov rdx, r9
mulx r11, r9, r12
adox r9, rbx
adox r8, r11
mov r15, r9
shrd r15, r8, 52
shrd r13, rdi, 52
add r15, [ rsp - 0x40 ]
mulx rdi, rcx, r13
xor rbx, rbx
adox rcx, r15
adox rdi, rbx
mov r12, rcx
shrd r12, rdi, 52
add r12, [ rsp - 0x48 ]
mov [ rbp + 0x8 ], r14
bzhi r14, rcx, r10
mov [ rbp + 0x18 ], r14
bzhi r11, r9, r10
mov [ rbp + 0x10 ], r11
mov [ rbp + 0x20 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.1101
; seed 2889978931493435 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2225604 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=279, initial num_batches=31): 171805 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.07719477499141807
; number reverted permutation / tried permutation: 72604 / 90000 =80.671%
; number reverted decision / tried decision: 53621 / 89999 =59.580%
; validated in 0.826s
