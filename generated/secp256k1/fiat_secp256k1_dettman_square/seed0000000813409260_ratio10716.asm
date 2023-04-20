SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
imul rax, [ rsi + 0x8 ], 0x2
mov rdx, rax
mulx r10, rax, [ rsi + 0x20 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov r8, 0x1 
shlx r9, [ rsi + 0x10 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, rbx
shrd rdx, rbp, 52
mov rbp, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov r12, rbp
shl r12, 0x1
mov rbp, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx rbp, r15, r12
mov rdx, r8
mov [ rsp - 0x50 ], rdi
mulx rdi, r8, [ rsi + 0x10 ]
add r8, r15
adcx rbp, rdi
mov rdx, 0xfffffffffffff 
and rbx, rdx
mov r15, 0x1000003d10 
mov rdx, rbx
mulx rdi, rbx, r15
adox rbx, r8
adox rbp, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, r8, rdx
adcx r8, r11
adcx rcx, rdi
mov rdx, [ rsi + 0x20 ]
mulx rdi, r11, r12
test al, al
adox r8, r11
adox rdi, rcx
mov rdx, rbx
shrd rdx, rbp, 52
xor rbp, rbp
adox rdx, r8
adox rdi, rbp
adcx r13, rdx
adcx rdi, r14
mov r14, r13
shrd r14, rdi, 52
mov rdx, r9
mulx rcx, r9, [ rsi + 0x18 ]
xor r11, r11
adox r9, rax
adox r10, rcx
mov rbp, 0x34 
bzhi rax, r13, rbp
adox r14, r9
adox r10, r11
bzhi r8, r14, rbp
shrd r14, r10, 52
mulx rdi, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, rcx, rdx
shl r8, 4
mov rdx, 0x30 
bzhi r10, rax, rdx
adox rcx, r13
adox rdi, r9
test al, al
adox r14, rcx
adox rdi, r11
mov r13, r14
shrd r13, rdi, 52
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, rdi, r12
xor rdx, rdx
adox r9, rdi
adox r11, rcx
shr rax, 48
bzhi rcx, r14, rbp
lea r8, [ r8 + rax ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, r14, rdx
mov rdx, 0x1000003d1 
mulx rbp, rax, r8
adox rax, r14
adox rdi, rbp
mov r8, rax
shrd r8, rdi, 52
imul r14, [ rsi + 0x18 ], 0x2
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbp, r12
mov rdx, r14
mulx r12, r14, [ rsi + 0x20 ]
add r8, rbp
adc rdi, 0x0
mov rdx, r15
mulx rbp, r15, rcx
xor rcx, rcx
adox r15, r8
adox rdi, rbp
mov r8, 0xfffffffffffff 
mov rbp, r15
and rbp, r8
shrd r15, rdi, 52
add r15, r9
adc r11, 0x0
add r13, r14
adc r12, 0x0
mov r9, r13
and r9, r8
mulx rdi, r14, r9
adox r14, r15
adox r11, rdi
mov r15, r14
shrd r15, r11, 52
shrd r13, r12, 52
and rbx, r8
lea rbx, [ rbx + r15 ]
mulx r9, r12, r13
and rax, r8
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], rax
adox r12, rbx
adox r9, rcx
mov r11, r12
shrd r11, r9, 52
lea r10, [ r10 + r11 ]
mov [ rdi + 0x20 ], r10
mov [ rdi + 0x8 ], rbp
and r12, r8
mov [ rdi + 0x18 ], r12
and r14, r8
mov [ rdi + 0x10 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.0716
; seed 0538514052417203 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1647392 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=423, initial num_batches=31): 163402 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.09918829276820575
; number reverted permutation / tried permutation: 75426 / 89692 =84.094%
; number reverted decision / tried decision: 65430 / 90307 =72.453%
; validated in 0.477s
