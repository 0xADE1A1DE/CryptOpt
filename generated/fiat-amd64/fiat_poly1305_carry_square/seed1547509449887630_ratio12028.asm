SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
mov rax, [ rsi + 0x10 ]
lea r10, [rax + 4 * rax]
mov rdx, [ rsi + 0x0 ]
mulx r11, rax, rdx
imul rdx, [ rsi + 0x10 ], 0x14
mulx r8, rcx, [ rsi + 0x8 ]
xor r9, r9
adox rcx, rax
adox r11, r8
mov rax, rcx
shrd rax, r11, 44
mov rdx, [ rsi + 0x8 ]
lea r8, [rdx + rdx]
mov rdx, [ rsi + 0x10 ]
mulx r9, r11, r10
mov rdx, r8
mulx r10, r8, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
xor rbx, rbx
adox r11, r8
adox r10, r9
adcx r11, rax
adc r10, 0x0
mov rax, r11
shrd rax, r10, 43
imul r9, [ rsi + 0x10 ], 0x2
mulx r10, r8, [ rsi + 0x8 ]
mov rdx, r9
mulx rbx, r9, [ rsi + 0x0 ]
xor rdx, rdx
adox r8, r9
adox rbx, r10
adcx r8, rax
adc rbx, 0x0
mov rax, r8
shrd rax, rbx, 43
lea r10, [rax + 4 * rax]
mov r9, 0xfffffffffff 
and rcx, r9
lea rcx, [ rcx + r10 ]
mov rbx, rcx
shr rbx, 44
mov rax, 0x7ffffffffff 
and r11, rax
lea rbx, [ rbx + r11 ]
mov r10, rbx
shr r10, 43
and r8, rax
and rbx, rax
lea r10, [ r10 + r8 ]
and rcx, r9
mov [ rdi + 0x8 ], rbx
mov [ rdi + 0x10 ], r10
mov [ rdi + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2028
; seed 1547509449887630 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1664 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=594, initial num_batches=31): 308 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.18509615384615385
; number reverted permutation / tried permutation: 350 / 520 =67.308%
; number reverted decision / tried decision: 391 / 479 =81.628%
; validated in 0.08s
