SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
imul rax, [ rdx + 0x10 ], 0xa
mov r10, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, rax
mov rdx, [ r10 + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
imul rdx, [ r10 + 0x8 ], 0xa
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, r11
adox rcx, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r11, [ r10 + 0x0 ]
adcx rax, r11
adcx rbx, rcx
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ r10 + 0x0 ]
imul rdx, [ r10 + 0x8 ], 0x2
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
add rcx, rbp
adcx r12, r11
mov r11, [ r10 + 0x10 ]
lea rdx, [r11 + 4 * r11]
mulx rbp, r11, [ rsi + 0x10 ]
xor rdx, rdx
adox r11, r8
adox r9, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, r8, [ r10 + 0x8 ]
adcx r11, r8
adcx rbp, r9
mov rdx, rax
shrd rdx, rbx, 44
add r11, rdx
adc rbp, 0x0
mov rbx, r11
shrd rbx, rbp, 43
mov rdx, [ rsi + 0x0 ]
mulx r8, r9, [ r10 + 0x10 ]
xor rdx, rdx
adox rcx, r9
adox r8, r12
adcx rcx, rbx
adc r8, 0x0
mov r12, rcx
shrd r12, r8, 43
mov rbp, 0x7ffffffffff 
and rcx, rbp
lea rbx, [r12 + 4 * r12]
mov r9, 0xfffffffffff 
and rax, r9
lea rax, [ rax + rbx ]
and r11, rbp
mov r8, rax
shr r8, 44
lea r8, [ r8 + r11 ]
and rax, r9
mov [ rdi + 0x0 ], rax
mov r12, r8
shr r12, 43
and r8, rbp
mov [ rdi + 0x8 ], r8
lea r12, [ r12 + rcx ]
mov [ rdi + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2211
; seed 0573130910005998 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2017 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=466, initial num_batches=31): 345 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.17104610808130888
; number reverted permutation / tried permutation: 394 / 520 =75.769%
; number reverted decision / tried decision: 366 / 479 =76.409%
; validated in 0.095s
