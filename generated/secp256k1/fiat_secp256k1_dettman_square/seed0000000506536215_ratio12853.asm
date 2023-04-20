SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x8 ]
lea rdx, [r11 + r11]
mov r11, [ rsi + 0x0 ]
mov rcx, r11
shl rcx, 0x1
mulx r8, r11, [ rsi + 0x10 ]
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
xor rdx, rdx
adox r11, rbx
adox rbp, r8
mov r8, 0xfffffffffffff 
mov rbx, rax
and rbx, r8
mov rdx, 0x1000003d10 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbx
adox r12, r11
adox rbp, r13
mov r11, r12
shrd r11, rbp, 52
mov rdx, r9
mulx rbx, r9, [ rsi + 0x18 ]
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, rbp, rdx
test al, al
adox rbp, r9
adox rbx, r14
mov rdx, [ rsi + 0x20 ]
mulx r14, r9, rcx
shrd rax, r10, 52
xor rdx, rdx
adox rbp, r9
adox r14, rbx
adcx r11, rbp
adc r14, 0x0
mov r10, 0x1000003d10 
mov rdx, r10
mulx rbx, r10, rax
add r10, r11
adcx r14, rbx
mov r9, r10
shrd r9, r14, 52
mov rdx, r13
mulx rax, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
lea rbp, [rdx + rdx]
mov rdx, rbp
mulx r11, rbp, [ rsi + 0x18 ]
and r10, r8
adox rbp, r13
adox rax, r11
mulx r14, rbx, [ rsi + 0x20 ]
adcx r9, rbp
adc rax, 0x0
mov r13, r9
and r13, r8
shl r13, 4
mov rdx, [ rsi + 0x18 ]
mulx rbp, r11, rdx
xor rdx, rdx
adox r11, rbx
adox r14, rbp
shrd r9, rax, 52
xor rbx, rbx
adox r9, r11
adox r14, rbx
mov rdx, r10
shr rdx, 48
lea r13, [ r13 + rdx ]
mov rax, r9
shrd rax, r14, 52
mov rbp, 0x1000003d1 
mov rdx, rbp
mulx r11, rbp, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r14, rdx
mov rdx, [ rsi + 0x18 ]
mov rbx, rdx
shl rbx, 0x1
mov rdx, rbx
mov [ rsp - 0x58 ], r15
mulx r15, rbx, [ rsi + 0x20 ]
xor rdx, rdx
adox rbp, r14
adox r13, r11
mov rdx, rcx
mulx r11, rcx, [ rsi + 0x8 ]
adcx rax, rbx
adc r15, 0x0
mov r14, rax
and r14, r8
mov rbx, rbp
shrd rbx, r13, 52
add rbx, rcx
adc r11, 0x0
shrd rax, r15, 52
and rbp, r8
mov [ rdi + 0x0 ], rbp
and r9, r8
mulx rcx, r13, [ rsi + 0x10 ]
mov rdx, 0x1000003d10 
mulx rbp, r15, r9
adox r15, rbx
adox r11, rbp
mov rbx, r15
and rbx, r8
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, rdx
mov rdx, 0xffffffffffff 
and r10, rdx
mov [ rdi + 0x8 ], rbx
adox r9, r13
adox rcx, rbp
shrd r15, r11, 52
xor r13, r13
adox r15, r9
adox rcx, r13
mov r11, 0x1000003d10 
mov rdx, r11
mulx rbx, r11, r14
adcx r11, r15
adcx rcx, rbx
mov r14, r11
and r14, r8
mov [ rdi + 0x10 ], r14
shrd r11, rcx, 52
and r12, r8
lea r12, [ r12 + r11 ]
mulx r9, rbp, rax
adox rbp, r12
adox r9, r13
mov rax, rbp
shrd rax, r9, 52
and rbp, r8
mov [ rdi + 0x18 ], rbp
lea r10, [ r10 + rax ]
mov [ rdi + 0x20 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2853
; seed 0051241840448214 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 646995 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=423, initial num_batches=31): 75991 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.1174522214236586
; number reverted permutation / tried permutation: 71672 / 89775 =79.835%
; number reverted decision / tried decision: 65611 / 90224 =72.720%
; validated in 0.165s
