SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, 0x1 
shlx r10, [ rsi + 0x8 ], rax
mov r11, [ rsi + 0x0 ]
mov rdx, r11
shl rdx, 0x1
mov r11, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, rdx
mov rdx, 0x1000003d10000 
mulx rax, r9, r8
mov rdx, r11
mulx r8, r11, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
xor rdx, rdx
adox rbp, r11
adox r8, r12
mov r11, 0x1000003d10 
mov rdx, r11
mulx r12, r11, rcx
adcx r11, rbp
adcx r8, r12
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, r10
xor rdx, rdx
adox rcx, r12
adox r13, rbp
mov rdx, [ rsi + 0x20 ]
mulx r12, rbp, rbx
mov rdx, r11
shrd rdx, r8, 52
test al, al
adox rcx, rbp
adox r12, r13
adcx rcx, rdx
adc r12, 0x0
xor r8, r8
adox r9, rcx
adox r12, rax
mov rax, [ rsi + 0x10 ]
mov r13, rax
shl r13, 0x1
mov rdx, r10
mulx r10, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, rbp, r13
mov rdx, r9
shrd rdx, r12, 52
xor r12, r12
adox rbp, rax
adox r10, rcx
adcx rbp, rdx
adc r10, 0x0
mov r8, 0xfffffffffffff 
mov rax, rbp
and rax, r8
shrd rbp, r10, 52
and r9, r8
shl rax, 4
mov rcx, r9
shr rcx, 48
mov rdx, r13
mulx r10, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r12, rdx
xor rdx, rdx
adox r12, r13
adox r10, r14
adcx r12, rbp
adc r10, 0x0
mov rbp, [ rsi + 0x18 ]
mov r13, rbp
shl r13, 0x1
lea rcx, [ rcx + rax ]
mov rbp, r12
and rbp, r8
mov rdx, [ rsi + 0x0 ]
mulx r14, rax, rdx
mov rdx, 0x1000003d1 
mov [ rsp - 0x58 ], r15
mulx r8, r15, rcx
adox r15, rax
adox r14, r8
mov rcx, r15
shrd rcx, r14, 52
mov rdx, r13
mulx rax, r13, [ rsi + 0x20 ]
shrd r12, r10, 52
xor r10, r10
adox r13, r12
adox rax, r10
mov rdx, [ rsi + 0x10 ]
mulx r14, r8, rbx
mov rdx, [ rsi + 0x8 ]
mulx r10, r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rbx
adcx r12, r8
adcx r14, r10
mov rdx, 0x1000003d10 
mulx r8, rbx, rbp
xor rbp, rbp
adox rdi, rcx
adox r13, rbp
adcx rbx, rdi
adcx r13, r8
mov rcx, rbx
shrd rcx, r13, 52
mov r10, 0xfffffffffffff 
and r11, r10
adox r12, rcx
adox r14, rbp
and rbx, r10
mulx rdi, r8, [ rsp - 0x48 ]
adox r8, r12
adox r14, rdi
mov r13, r8
shrd r13, r14, 52
lea r13, [ r13 + r11 ]
mov rcx, 0x30 
bzhi r11, r9, rcx
and r8, r10
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r8
mov r12, 0x1000003d10000 
mov rdx, r12
mulx rdi, r12, rax
adox r12, r13
adox rdi, rbp
mov r14, r12
shrd r14, rdi, 52
lea r14, [ r14 + r11 ]
and r12, r10
mov [ r9 + 0x20 ], r14
and r15, r10
mov [ r9 + 0x0 ], r15
mov [ r9 + 0x18 ], r12
mov [ r9 + 0x8 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.0833
; seed 0400378029871766 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 790777 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=237, initial num_batches=31): 75139 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09501920263234769
; number reverted permutation / tried permutation: 72249 / 94978 =76.069%
; number reverted decision / tried decision: 66870 / 95021 =70.374%
; validated in 0.207s
