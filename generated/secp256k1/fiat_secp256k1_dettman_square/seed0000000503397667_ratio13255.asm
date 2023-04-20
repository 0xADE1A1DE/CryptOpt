SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, 0xfffffffffffff 
mov rdx, rax
and rdx, r11
mov rcx, [ rsi + 0x0 ]
lea r8, [rcx + rcx]
mov rcx, 0x1000003d10 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r8
mov rdx, rbp
mov [ rsp - 0x60 ], r14
mulx r14, rbp, [ rsi + 0x10 ]
adox rbp, r12
adox r13, r14
adcx r9, rbp
adcx r13, rbx
mov rbx, r9
shrd rbx, r13, 52
mulx r14, r12, [ rsi + 0x18 ]
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r13, rdx
xor rdx, rdx
adox r13, r12
adox r14, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, r12, r8
adcx r13, r12
adcx r15, r14
add rbx, r13
adc r15, 0x0
shrd rax, r10, 52
mov rdx, rax
mulx r10, rax, rcx
mov r14, [ rsi + 0x10 ]
lea r12, [r14 + r14]
mov rdx, [ rsi + 0x18 ]
mulx r13, r14, r12
add rax, rbx
adcx r15, r10
mov rdx, rbp
mulx rbx, rbp, [ rsi + 0x20 ]
mov rdx, r12
mulx r10, r12, [ rsi + 0x20 ]
xor rdx, rdx
adox r14, rbp
adox rbx, r13
mov r13, rax
shrd r13, r15, 52
add r13, r14
adc rbx, 0x0
mov rdx, [ rsi + 0x18 ]
mulx rbp, r15, rdx
and rax, r11
adox r15, r12
adox r10, rbp
mov rdx, r13
and rdx, r11
shrd r13, rbx, 52
shl rdx, 4
xor r12, r12
adox r13, r15
adox r10, r12
mov r14, r13
shrd r14, r10, 52
mov rbx, rax
shr rbx, 48
lea rdx, [ rdx + rbx ]
and r13, r11
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mulx r10, r15, rdx
mov rdx, 0x1000003d1 
mulx r12, rbx, rbp
adox rbx, r15
adox r10, r12
mov rbp, rbx
shrd rbp, r10, 52
and rbx, r11
mov rdx, r13
mulx r15, r13, rcx
mov [ rdi + 0x0 ], rbx
mov rdx, r8
mulx r12, r8, [ rsi + 0x8 ]
adox rbp, r8
mov r10, 0x0 
adox r12, r10
adcx r13, rbp
adcx r12, r15
mov rbx, r13
shrd rbx, r12, 52
mulx r8, r15, [ rsi + 0x10 ]
and r13, r11
mov rdx, [ rsi + 0x18 ]
mov rbp, rdx
shl rbp, 0x1
mov [ rdi + 0x8 ], r13
and r9, r11
mov rdx, [ rsi + 0x8 ]
mulx r13, r12, rdx
mov rdx, rbp
mulx r10, rbp, [ rsi + 0x20 ]
adox r12, r15
adox r8, r13
adcx r14, rbp
adc r10, 0x0
mov r15, r14
shrd r15, r10, 52
and r14, r11
mov rdx, rcx
mulx r13, rcx, r14
adox rbx, r12
mov rbp, 0x0 
adox r8, rbp
adcx rcx, rbx
adcx r8, r13
mov r12, rcx
and r12, r11
shrd rcx, r8, 52
lea r9, [ r9 + rcx ]
mulx r14, r10, r15
mov r15, 0xffffffffffff 
and rax, r15
adox r10, r9
adox r14, rbp
mov r13, r10
shrd r13, r14, 52
lea rax, [ rax + r13 ]
and r10, r11
mov [ rdi + 0x10 ], r12
mov [ rdi + 0x18 ], r10
mov [ rdi + 0x20 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3255
; seed 2186235042864208 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 629233 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=414, initial num_batches=31): 75727 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.12034810634534425
; number reverted permutation / tried permutation: 72821 / 90244 =80.693%
; number reverted decision / tried decision: 65648 / 89755 =73.141%
; validated in 0.163s
