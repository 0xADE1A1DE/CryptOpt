SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
imul rax, [ rdx + 0x8 ], 0xa
mov r10, rdx
mov rdx, [ rdx + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ r10 + 0x10 ]
lea r8, [rdx + 4 * rdx]
mov rdx, r8
mulx r9, r8, [ rsi + 0x10 ]
imul rdx, [ r10 + 0x10 ], 0xa
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, r11
adox rcx, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, r11, rax
adcx r11, rbx
adcx rbp, r9
mov rdx, [ rsi + 0x0 ]
mulx rbx, rax, [ r10 + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, r9, [ r10 + 0x8 ]
add r11, rax
adcx rbx, rbp
imul rdx, [ r10 + 0x8 ], 0x2
mov rbp, r11
shrd rbp, rbx, 44
xor rax, rax
adox r8, r9
adox r12, rcx
adcx r8, rbp
adc r12, 0x0
mulx r9, rcx, [ rsi + 0x8 ]
mov rbx, r8
shrd rbx, r12, 43
mov rdx, [ r10 + 0x0 ]
mulx r12, rbp, [ rsi + 0x10 ]
add rbp, rcx
adcx r9, r12
mov rdx, [ r10 + 0x10 ]
mulx r12, rcx, [ rsi + 0x0 ]
mov rdx, 0x7ffffffffff 
and r8, rdx
adox rbp, rcx
adox r12, r9
adcx rbp, rbx
adc r12, 0x0
mov rbx, rbp
shrd rbx, r12, 43
and rbp, rdx
mov r9, 0xfffffffffff 
and r11, r9
lea rcx, [rbx + 4 * rbx]
lea r11, [ r11 + rcx ]
mov r12, r11
shr r12, 44
lea r12, [ r12 + r8 ]
mov r8, r12
shr r8, 43
and r11, r9
mov [ rdi + 0x0 ], r11
lea r8, [ r8 + rbp ]
mov [ rdi + 0x10 ], r8
and r12, rdx
mov [ rdi + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2222
; seed 2092515808618690 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2089 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=467, initial num_batches=31): 310 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.14839636189564384
; number reverted permutation / tried permutation: 417 / 534 =78.090%
; number reverted decision / tried decision: 352 / 465 =75.699%
; validated in 0.094s
