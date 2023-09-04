SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
imul rax, [ rsi + 0x10 ], 0x5
mov r10, [ rsi + 0x8 ]
mov r11, r10
shl r11, 0x1
imul r10, [ rsi + 0x10 ], 0x14
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, rax
mov rdx, [ rsi + 0x8 ]
mulx rax, r9, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, rdx
xor rdx, rdx
adox r9, r10
adox rbx, rax
mov rax, r9
shrd rax, rbx, 44
mov rdx, r11
mulx r10, r11, [ rsi + 0x0 ]
xor rbx, rbx
adox rcx, r11
adox r10, r8
adcx rcx, rax
adc r10, 0x0
mov r8, rcx
shrd r8, r10, 43
mulx r11, rax, [ rsi + 0x8 ]
imul rdx, [ rsi + 0x10 ], 0x2
mulx rbx, r10, [ rsi + 0x0 ]
xor rdx, rdx
adox rax, r10
adox rbx, r11
adcx rax, r8
adc rbx, 0x0
mov r8, rax
shrd r8, rbx, 43
lea r11, [r8 + 4 * r8]
mov r10, 0xfffffffffff 
and r9, r10
lea r9, [ r9 + r11 ]
mov rbx, r9
shr rbx, 44
and r9, r10
mov r8, 0x7ffffffffff 
and rcx, r8
lea rbx, [ rbx + rcx ]
and rax, r8
mov r11, rbx
shr r11, 43
lea r11, [ r11 + rax ]
and rbx, r8
mov [ rdi + 0x8 ], rbx
mov [ rdi + 0x10 ], r11
mov [ rdi + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2049
; seed 0819181267704963 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 281650 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=589, initial num_batches=31): 57740 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.20500621338540742
; number reverted permutation / tried permutation: 74502 / 94966 =78.451%
; number reverted decision / tried decision: 81177 / 95033 =85.420%
; validated in 0.076s
