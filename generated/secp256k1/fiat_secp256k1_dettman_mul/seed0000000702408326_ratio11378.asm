SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x20 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r9
mulx r9, rbx, [ rax + 0x0 ]
test al, al
adox rbx, r15
adox rdi, r9
adcx rbp, r10
adcx r11, r12
mov rdx, [ rax + 0x10 ]
mulx r12, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mulx r9, r15, [ rsi + 0x8 ]
xor rdx, rdx
adox rbp, r10
adox r12, r11
mov r11, rcx
shrd r11, r8, 52
add rbx, r15
adcx r9, rdi
mov rdx, [ rax + 0x18 ]
mulx rdi, r8, [ rsi + 0x0 ]
add rbx, r8
adcx rdi, r9
mov rdx, 0xfffffffffffff 
and rcx, rdx
mov r10, 0x1000003d10 
mov rdx, rcx
mulx r15, rcx, r10
adox rcx, rbx
adox rdi, r15
mov rdx, [ rsi + 0x8 ]
mulx r8, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r15, rbx, [ rax + 0x20 ]
adcx rbp, r9
adcx r8, r12
mov rdx, [ rax + 0x8 ]
mulx r9, r12, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], r14
mulx r14, r10, [ rsi + 0x18 ]
xor rdx, rdx
adox rbp, rbx
adox r15, r8
mov rbx, rcx
shrd rbx, rdi, 52
xor rdi, rdi
adox rbx, rbp
adox r15, rdi
mov rdx, 0x1000003d10 
mulx rbp, r8, r11
adcx r8, rbx
adcx r15, rbp
mov r11, 0x34 
bzhi rbx, rcx, r11
adox r12, r10
adox r14, r9
bzhi rcx, r8, r11
mov rdx, [ rsi + 0x10 ]
mulx r10, r9, [ rax + 0x18 ]
adox r12, r9
adox r10, r14
mov rdx, [ rsi + 0x8 ]
mulx r14, rbp, [ rax + 0x20 ]
xor rdx, rdx
adox r12, rbp
adox r14, r10
mov rdx, [ rsi + 0x18 ]
mulx r9, rdi, [ rax + 0x18 ]
adcx r13, rdi
adcx r9, [ rsp - 0x38 ]
mov rdx, 0x30 
bzhi r10, rcx, rdx
mov rdx, [ rax + 0x20 ]
mulx rdi, rbp, [ rsi + 0x10 ]
shrd r8, r15, 52
add r8, r12
adc r14, 0x0
xor rdx, rdx
adox r13, rbp
adox rdi, r9
bzhi r15, r8, r11
shrd r8, r14, 52
test al, al
adox r8, r13
adox rdi, rdx
bzhi r12, r8, r11
mov rdx, [ rsi + 0x0 ]
mulx rbp, r9, [ rax + 0x8 ]
shr rcx, 48
mov rdx, [ rax + 0x0 ]
mulx r13, r14, [ rsi + 0x8 ]
shl r15, 4
test al, al
adox r14, r9
adox rbp, r13
lea r15, [ r15 + rcx ]
shrd r8, rdi, 52
mov rdx, [ rax + 0x0 ]
mulx r9, rdi, [ rsi + 0x0 ]
mov rdx, 0x1000003d1 
mulx r13, rcx, r15
add rcx, rdi
adcx r9, r13
mov r15, rcx
shrd r15, r9, 52
xor rdi, rdi
adox r15, r14
adox rbp, rdi
mov rdx, [ rsi + 0x18 ]
mulx r13, r14, [ rax + 0x20 ]
bzhi rdx, rcx, r11
mov rcx, rdx
mov rdx, [ rax + 0x18 ]
mulx rdi, r9, [ rsi + 0x20 ]
adox r9, r14
adox r13, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, r14, [ rax + 0x8 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x30 ], r10
mulx r10, r11, r12
test al, al
adox r11, r15
adox rbp, r10
mov r12, r14
adcx r12, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, r15, [ rax + 0x10 ]
xor rdx, rdx
adox r12, r15
adox r14, rdi
adcx r8, r9
adc r13, 0x0
mov r9, r11
shrd r9, rbp, 52
mov r10, 0xfffffffffffff 
mov rbp, r8
and rbp, r10
adox r9, r12
adox r14, rdx
mov rdi, 0x1000003d10 
mov rdx, rdi
mulx r15, rdi, rbp
adcx rdi, r9
adcx r14, r15
mov r12, rdi
shrd r12, r14, 52
lea rbx, [ rbx + r12 ]
shrd r8, r13, 52
mulx rbp, r13, r8
xor r9, r9
adox r13, rbx
adox rbp, r9
mov r15, r13
and r15, r10
and rdi, r10
shrd r13, rbp, 52
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x10 ], rdi
mov [ r14 + 0x0 ], rcx
add r13, [ rsp - 0x30 ]
and r11, r10
mov [ r14 + 0x8 ], r11
mov [ r14 + 0x18 ], r15
mov [ r14 + 0x20 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.1378
; seed 2850125747812948 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1606759 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=171, initial num_batches=31): 98880 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.0615400318280464
; number reverted permutation / tried permutation: 69603 / 89894 =77.428%
; number reverted decision / tried decision: 52720 / 90105 =58.510%
; validated in 0.55s
