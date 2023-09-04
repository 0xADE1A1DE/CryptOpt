SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, [ rsi + 0x0 ]
mov r10, rax
shl r10, 0x1
mov rdx, [ rsi + 0x20 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, r10
mov rdx, [ rsi + 0x8 ]
mov r9, rdx
shl r9, 0x1
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r9
xor rdx, rdx
adox rbx, rcx
adox r8, rbp
mov rcx, 0x1000003d10 
mov rdx, rcx
mulx rbp, rcx, rax
mov rdx, r9
mulx rax, r9, [ rsi + 0x18 ]
adcx rcx, rbx
adcx r8, rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
xor rdx, rdx
adox r12, r9
adox rax, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, r10
adcx r12, r9
adcx r13, rax
mov rdx, 0x1000003d10000 
mulx r9, rax, r11
mov r11, rcx
shrd r11, r8, 52
xor r8, r8
adox r12, r11
adox r13, r8
adcx rax, r12
adcx r13, r9
mov r9, [ rsi + 0x10 ]
lea r11, [r9 + r9]
mov rdx, r11
mulx r9, r11, [ rsi + 0x18 ]
mov r12, 0xfffffffffffff 
mov r8, rax
and r8, r12
adox r11, rbx
adox rbp, r9
shrd rax, r13, 52
mov rbx, 0xffffffffffff 
mov r13, r8
and r13, rbx
adox r11, rax
mov r9, 0x0 
adox rbp, r9
mov rax, r11
and rax, r12
shl rax, 4
shr r8, 48
lea r8, [ r8 + rax ]
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mulx r14, r9, rdx
mov rdx, 0x1000003d1 
mov [ rsp - 0x58 ], r15
mulx rbx, r15, r8
xor r8, r8
adox r15, r9
adox r14, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r9, rdx
mov rdx, [ rsi + 0x8 ]
mulx r12, r8, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rax
adcx r9, rdi
adcx r13, rbx
shrd r11, rbp, 52
add r9, r11
adc r13, 0x0
mov rdx, r15
shrd rdx, r14, 52
mov rax, 0xfffffffffffff 
mov rbp, r9
and rbp, rax
adox r8, rdx
mov r14, 0x0 
adox r12, r14
mov rbx, 0x1000003d10 
mov rdx, rbx
mulx rdi, rbx, rbp
adcx rbx, r8
adcx r12, rdi
mov r11, rbx
and r11, rax
imul rbp, [ rsi + 0x18 ], 0x2
mov rdx, [ rsi + 0x20 ]
mulx rdi, r8, rbp
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r11
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, rbp, rdx
shrd r9, r13, 52
xor rdx, rdx
adox r8, r9
adox rdi, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r13, r10
mov rdx, 0x1000003d10 
mulx rax, r10, r8
shrd rbx, r12, 52
xor r12, r12
adox rbp, r13
adox r9, r14
adcx rbp, rbx
adc r9, 0x0
add r10, rbp
adcx r9, rax
mov r14, r10
shrd r14, r9, 52
mov r8, 0xfffffffffffff 
and r10, r8
mov [ r11 + 0x10 ], r10
and rcx, r8
lea r14, [ r14 + rcx ]
mov r13, 0x1000003d10000 
mov rdx, rdi
mulx rax, rdi, r13
adox rdi, r14
adox rax, r12
mov rbx, rdi
shrd rbx, rax, 52
and r15, r8
and rdi, r8
add rbx, [ rsp - 0x48 ]
mov [ r11 + 0x18 ], rdi
mov [ r11 + 0x20 ], rbx
mov [ r11 + 0x0 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1028
; seed 0124018927945064 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 790576 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=237, initial num_batches=31): 74533 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09427683107000466
; number reverted permutation / tried permutation: 72346 / 94729 =76.372%
; number reverted decision / tried decision: 66867 / 95270 =70.187%
; validated in 0.208s
