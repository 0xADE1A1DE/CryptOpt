SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
imul rax, [ rsi + 0x8 ], 0x2
imul r10, [ rsi + 0x10 ], 0x14
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, r10
mulx r8, r10, [ rsi + 0x8 ]
mov r9, [ rsi + 0x10 ]
lea rdx, [r9 + 4 * r9]
xor r9, r9
adox r10, r11
adox rcx, r8
mulx r8, r11, [ rsi + 0x10 ]
mov rdx, rax
mulx r9, rax, [ rsi + 0x0 ]
adcx r11, rax
adcx r9, r8
mov r8, r10
shrd r8, rcx, 44
xor rcx, rcx
adox r11, r8
adox r9, rcx
imul rax, [ rsi + 0x10 ], 0x2
mov r8, r11
shrd r8, r9, 43
mulx rcx, r9, [ rsi + 0x8 ]
mov rdx, rax
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, [ rsi + 0x0 ]
mov rdx, 0x7ffffffffff 
and r11, rdx
adox r9, rax
adox rbx, rcx
adcx r9, r8
adc rbx, 0x0
mov r8, r9
shrd r8, rbx, 43
mov rcx, 0xfffffffffff 
and r10, rcx
lea rax, [r8 + 4 * r8]
lea r10, [ r10 + rax ]
mov rbx, r10
shr rbx, 44
lea rbx, [ rbx + r11 ]
and r9, rdx
mov r11, rbx
shr r11, 43
and r10, rcx
mov [ rdi + 0x0 ], r10
lea r11, [ r11 + r9 ]
and rbx, rdx
mov [ rdi + 0x10 ], r11
mov [ rdi + 0x8 ], rbx
mov rbx, [ rsp - 0x80 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2077
; seed 1423064809924844 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1385 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=599, initial num_batches=31): 300 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.21660649819494585
; number reverted permutation / tried permutation: 366 / 507 =72.189%
; number reverted decision / tried decision: 417 / 492 =84.756%
; validated in 0.065s
