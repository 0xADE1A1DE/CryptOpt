SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x0 ]
lea rdx, [r11 + r11]
mov r11, 0xfffffffffffff 
mov rcx, rax
and rcx, r11
mulx r9, r8, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov rbx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [rbx + rbx]
mov rbx, 0x1000003d10 
xchg rdx, rbx
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rcx
mov rdx, rbp
mulx rcx, rbp, [ rsi + 0x10 ]
adox rbp, r8
adox r9, rcx
adcx r12, rbp
adcx r9, r13
mov r8, r12
shrd r8, r9, 52
mulx rcx, r13, [ rsi + 0x18 ]
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, r9, rdx
shrd rax, r10, 52
add r9, r13
adcx rcx, r14
mov rdx, 0x1000003d10 
mulx r13, r10, rax
mov rdx, rbx
mulx r14, rbx, [ rsi + 0x20 ]
xor rax, rax
adox r9, rbx
adox r14, rcx
adcx r8, r9
adc r14, 0x0
xor rcx, rcx
adox r10, r8
adox r14, r13
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbx, r13, rbp
mov rdx, r10
shrd rdx, r14, 52
and r10, r11
imul rbp, [ rsi + 0x10 ], 0x2
mov r9, r10
shr r9, 48
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, rbp
xor rdx, rdx
adox r14, r13
adox rbx, rcx
adcx r8, r14
adc rbx, 0x0
mov r13, r8
shrd r13, rbx, 52
and r8, r11
shl r8, 4
lea r8, [ r8 + r9 ]
mov r9, 0x1000003d1 
mov rdx, r9
mulx rcx, r9, r8
mov rdx, [ rsi + 0x0 ]
mulx rbx, r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r8, rdx
xor rdx, rdx
adox r9, r14
adox rbx, rcx
mov rcx, r9
and rcx, r11
mov r14, 0xffffffffffff 
and r10, r14
shrd r9, rbx, 52
mov rdx, rbp
mulx rbx, rbp, [ rsi + 0x20 ]
xor rdx, rdx
adox r8, rbp
adox rbx, r15
mov [ rdi + 0x0 ], rcx
adcx r13, r8
adc rbx, 0x0
mov r15, [ rsi + 0x18 ]
lea rcx, [r15 + r15]
mov r15, r13
and r15, r11
mov rbp, 0x1000003d10 
mov rdx, r15
mulx r8, r15, rbp
mov rdx, rax
mulx r14, rax, [ rsi + 0x8 ]
shrd r13, rbx, 52
xor rbx, rbx
adox r9, rax
adox r14, rbx
adcx r15, r9
adcx r14, r8
mov r8, r15
and r8, r11
mov [ rdi + 0x8 ], r8
shrd r15, r14, 52
mulx r9, rax, [ rsi + 0x10 ]
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x20 ]
xor rdx, rdx
adox r13, rcx
adox r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rbx, rdx
and r12, r11
adox rbx, rax
adox r9, r8
adcx r15, rbx
adc r9, 0x0
mov rdx, r13
and rdx, r11
mulx rcx, rax, rbp
adox rax, r15
adox r9, rcx
mov r8, rax
shrd r8, r9, 52
lea r12, [ r12 + r8 ]
shrd r13, r14, 52
mov rdx, rbp
mulx r14, rbp, r13
xor rbx, rbx
adox rbp, r12
adox r14, rbx
mov r15, rbp
shrd r15, r14, 52
and rbp, r11
lea r10, [ r10 + r15 ]
mov [ rdi + 0x18 ], rbp
mov [ rdi + 0x20 ], r10
and rax, r11
mov [ rdi + 0x10 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3043
; seed 0285821761006696 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 649010 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=413, initial num_batches=31): 76683 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.11815380348530839
; number reverted permutation / tried permutation: 71748 / 89776 =79.919%
; number reverted decision / tried decision: 65812 / 90223 =72.944%
; validated in 0.164s
