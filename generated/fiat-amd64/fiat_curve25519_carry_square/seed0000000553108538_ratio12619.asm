SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x18 ], 0x26
mov rdx, rax
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
imul rdx, [ rsi + 0x20 ], 0x26
mulx r9, r8, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
xor r12, r12
adox rax, rbx
adox rbp, r10
adcx rax, r11
adcx rcx, rbp
mov r10, rax
shrd r10, rcx, 51
mov r11, 0x7ffffffffffff 
and rax, r11
imul rbx, [ rsi + 0x18 ], 0x13
mulx rcx, rbp, [ rsi + 0x10 ]
mov rdx, rbx
mulx r12, rbx, [ rsi + 0x18 ]
xor rdx, rdx
adox rbx, rbp
adox rcx, r12
mov rbp, [ rsi + 0x8 ]
mov r12, rbp
shl r12, 0x1
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mulx r13, rbp, r12
xor rdx, rdx
adox rbx, rbp
adox r13, rcx
adcx rbx, r10
adc r13, 0x0
mov r10, rbx
and r10, r11
shrd rbx, r13, 51
mov rcx, [ rsi + 0x10 ]
mov r12, rcx
shl r12, 0x1
mov rdx, [ rsi + 0x8 ]
mulx rbp, rcx, rdx
mov rdx, r12
mulx r13, r12, [ rsi + 0x0 ]
test al, al
adox r8, rcx
adox rbp, r9
adcx r8, r12
adcx r13, rbp
add r8, rbx
adc r13, 0x0
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, r8
and rdx, r11
shrd r8, r13, 51
imul rcx, [ rsi + 0x20 ], 0x13
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx r13, rbp, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
lea r15, [rdx + rdx]
xor rdx, rdx
adox rbp, r9
adox rbx, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, r15
adcx rbp, r9
adcx r13, rbx
xor rdx, rdx
adox rbp, r8
adox r13, rdx
mov r8, [ rsi + 0x20 ]
lea rbx, [r8 + r8]
mov rdx, r15
mulx r15, r8, [ rsi + 0x8 ]
adcx rcx, r8
adcx r15, r14
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, rbx
mov rdx, rbp
and rdx, r11
adox rcx, r14
adox r9, r15
shrd rbp, r13, 51
mov [ rdi + 0x18 ], rdx
add rcx, rbp
adc r9, 0x0
mov r13, rcx
shrd r13, r9, 51
imul rbx, r13, 0x13
lea rax, [ rax + rbx ]
mov r8, rax
shr r8, 51
and rcx, r11
and rax, r11
mov [ rdi + 0x0 ], rax
mov [ rdi + 0x20 ], rcx
lea r8, [ r8 + r10 ]
mov r10, r8
and r10, r11
mov [ rdi + 0x8 ], r10
shr r8, 51
lea r8, [ r8 + r12 ]
mov [ rdi + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2619
; seed 3405002908737060 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 515257 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=273, initial num_batches=31): 59417 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11531526985562544
; number reverted permutation / tried permutation: 71696 / 95234 =75.284%
; number reverted decision / tried decision: 68920 / 94765 =72.727%
; validated in 0.17s
