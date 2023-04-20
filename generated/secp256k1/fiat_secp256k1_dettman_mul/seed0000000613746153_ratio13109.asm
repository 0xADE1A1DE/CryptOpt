SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
xor rdx, rdx
adox r9, r10
adox r11, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, [ rax + 0x8 ]
adcx rcx, r10
adcx rbx, r8
mov rdx, [ rsi + 0x10 ]
mulx r10, r8, [ rax + 0x10 ]
test al, al
adox r9, r8
adox r10, r11
mov rdx, [ rsi + 0x20 ]
mulx r8, r11, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
adcx r9, rbp
adcx r12, r10
mov rdx, [ rax + 0x10 ]
mulx rbp, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, 0xfffffffffffff 
mov [ rsp - 0x58 ], r15
mov r15, r11
and r15, rdx
mov rdx, 0x1000003d10 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, r15
adox rcx, r10
adox rbp, rbx
adcx rcx, r13
adcx r14, rbp
xor rbx, rbx
adox rdi, rcx
adox r14, r12
mov r10, rdi
shrd r10, r14, 52
mov rdx, [ rax + 0x20 ]
mulx r15, r13, [ rsi + 0x0 ]
xor rdx, rdx
adox r9, r13
adox r15, [ rsp - 0x48 ]
adcx r10, r9
adc r15, 0x0
shrd r11, r8, 52
mov rbx, 0x1000003d10 
mov rdx, r11
mulx r8, r11, rbx
xor r12, r12
adox r11, r10
adox r15, r8
mov rbp, 0xfffffffffffff 
mov rcx, r11
and rcx, rbp
mov rdx, [ rax + 0x8 ]
mulx r13, r14, [ rsi + 0x20 ]
mov rdx, [ rax + 0x20 ]
mulx r10, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx r12, r8, [ rsi + 0x18 ]
adox r14, r8
adox r12, r13
mov rdx, [ rsi + 0x10 ]
mulx r8, r13, [ rax + 0x18 ]
shrd r11, r15, 52
add r14, r13
adcx r8, r12
mov rdx, 0xffffffffffff 
mov r15, rcx
and r15, rdx
adox r14, r9
adox r10, r8
adcx r11, r14
adc r10, 0x0
mov r9, r11
and r9, rbp
shl r9, 4
shrd r11, r10, 52
mov rdx, [ rax + 0x20 ]
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mulx r14, r8, [ rsi + 0x20 ]
mov rdx, [ rax + 0x18 ]
mulx rbx, r10, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, r10
adox rbx, r14
adcx r8, r12
adcx r13, rbx
test al, al
adox r11, r8
adox r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r12, [ rax + 0x20 ]
mov rdx, r11
shrd rdx, r13, 52
shr rcx, 48
lea r9, [ r9 + rcx ]
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, [ rax + 0x18 ]
test al, al
adox rbx, r12
adox r14, r8
mov rdx, 0x1000003d1 
mulx r12, r13, r9
adcx r10, rbx
adc r14, 0x0
mov rdx, [ rax + 0x0 ]
mulx r9, rcx, [ rsi + 0x0 ]
test al, al
adox r13, rcx
adox r9, r12
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx rcx, r12, [ rsi + 0x8 ]
mov rdx, r13
shrd rdx, r9, 52
xor r9, r9
adox r12, r8
adox rbx, rcx
adcx rdx, r12
adc rbx, 0x0
and r11, rbp
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mulx r12, rcx, [ rax + 0x8 ]
mov rdx, 0x1000003d10 
mulx rbp, r9, r11
adox r9, r8
adox rbx, rbp
mov r8, r9
shrd r8, rbx, 52
mov r11, 0xfffffffffffff 
and rdi, r11
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, [ rax + 0x0 ]
adox rbp, rcx
adox r12, rbx
mov rdx, r10
and rdx, r11
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, rbx, [ rax + 0x10 ]
adox rbp, rbx
adox r11, r12
adcx r8, rbp
adc r11, 0x0
mov rdx, 0x1000003d10 
mulx rbx, r12, rcx
xor rcx, rcx
adox r12, r8
adox r11, rbx
mov rbp, r12
shrd rbp, r11, 52
shrd r10, r14, 52
lea rdi, [ rdi + rbp ]
mulx r8, r14, r10
xor rbx, rbx
adox r14, rdi
adox r8, rbx
mov rcx, 0xfffffffffffff 
and r9, rcx
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x8 ], r9
and r12, rcx
mov [ r11 + 0x10 ], r12
mov rbp, r14
and rbp, rcx
and r13, rcx
mov [ r11 + 0x0 ], r13
shrd r14, r8, 52
lea r15, [ r15 + r14 ]
mov [ r11 + 0x20 ], r15
mov [ r11 + 0x18 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3109
; seed 0776551918094352 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 843274 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=325, initial num_batches=31): 81228 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.09632456354636808
; number reverted permutation / tried permutation: 68683 / 90102 =76.228%
; number reverted decision / tried decision: 51900 / 89897 =57.733%
; validated in 0.246s
