SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, 0x1 
shlx r10, [ rsi + 0x8 ], rax
shlx r11, [ rsi + 0x0 ], rax
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx rax, r9, rdx
mov rdx, 0x1000003d10 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mulx r12, rcx, r11
mov rdx, r10
mov [ rsp - 0x68 ], r13
mulx r13, r10, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
xor r14, r14
adox r10, rcx
adox r12, r13
adcx rbx, r10
adcx r12, rbp
mulx rcx, rbp, [ rsi + 0x20 ]
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, r10, rdx
mov rdx, 0xfffffffffffff 
mov [ rsp - 0x58 ], r15
mov r15, rbx
and r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, r13
mov rdx, 0x1000003d10000 
mov [ rsp - 0x40 ], rax
mulx rax, r13, r8
adox r10, rdi
adox r15, r14
mov rdx, [ rsi + 0x20 ]
mulx r14, r8, r11
adcx r10, r8
adcx r14, r15
shrd rbx, r12, 52
add r10, rbx
adc r14, 0x0
xor rdx, rdx
adox r13, r10
adox r14, rax
mov r12, 0x34 
bzhi rdi, r13, r12
shrd r13, r14, 52
imul rax, [ rsi + 0x10 ], 0x2
mov rdx, rax
mulx r15, rax, [ rsi + 0x18 ]
mulx rbx, r8, [ rsi + 0x20 ]
mov r10, rdi
shr r10, 48
xor r14, r14
adox rax, rbp
adox rcx, r15
adcx rax, r13
adc rcx, 0x0
mov rbp, rax
shrd rbp, rcx, 52
bzhi r13, rax, r12
shl r13, 4
lea r10, [ r10 + r13 ]
mov rdx, [ rsi + 0x18 ]
mulx rax, r15, rdx
add r15, r8
adcx rbx, rax
xor rdx, rdx
adox r15, rbp
adox rbx, rdx
bzhi r14, r15, r12
mov r8, 0x1000003d1 
mov rdx, r8
mulx rcx, r8, r10
imul rbp, [ rsi + 0x18 ], 0x2
mov rdx, [ rsi + 0x20 ]
mulx r10, r13, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, rax, r11
shrd r15, rbx, 52
xor rdx, rdx
adox r8, r9
adox rcx, [ rsp - 0x40 ]
adcx r13, r15
adc r10, 0x0
bzhi r9, r8, r12
shrd r8, rcx, 52
xor rbx, rbx
adox rax, r8
adox rbp, rbx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r15, rdx
mov rdx, 0x1000003d10 
mulx rbx, r8, r14
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x0 ], r9
adcx r8, rax
adcx rbp, rbx
mov rdx, [ rsi + 0x10 ]
mulx rax, r9, r11
mov rdx, 0x1000003d10000 
mulx rbx, r11, r10
mov r10, 0x1000003d10 
mov rdx, r13
mulx r12, r13, r10
add r15, r9
adcx rax, rcx
mov rcx, r8
shrd rcx, rbp, 52
xor rbp, rbp
adox r15, rcx
adox rax, rbp
adcx r13, r15
adcx rax, r12
mov r9, 0xfffffffffffff 
mov rdx, r13
and rdx, r9
mov [ r14 + 0x10 ], rdx
shrd r13, rax, 52
add r13, [ rsp - 0x48 ]
mov r12, 0xffffffffffff 
and rdi, r12
adox r11, r13
adox rbx, rbp
mov rcx, r11
shrd rcx, rbx, 52
and r8, r9
and r11, r9
mov [ r14 + 0x8 ], r8
lea rcx, [ rcx + rdi ]
mov [ r14 + 0x18 ], r11
mov [ r14 + 0x20 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.0835
; seed 2751039043835824 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1211405 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=162, initial num_batches=31): 92953 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0767315637627383
; number reverted permutation / tried permutation: 75659 / 94569 =80.004%
; number reverted decision / tried decision: 66969 / 95430 =70.176%
; validated in 0.391s
