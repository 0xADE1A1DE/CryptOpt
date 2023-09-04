SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
imul r11, [ rsi + 0x8 ], 0x2
imul rdx, [ rsi + 0x10 ], 0x14
mulx r8, rcx, [ rsi + 0x8 ]
xor r9, r9
adox rcx, rax
adox r10, r8
mov rax, [ rsi + 0x10 ]
lea rdx, [rax + 4 * rax]
mulx r8, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
adcx rax, r9
adcx rbx, r8
mov rdx, rcx
shrd rdx, r10, 44
add rax, rdx
adc rbx, 0x0
mov r10, rax
shrd r10, rbx, 43
imul r8, [ rsi + 0x10 ], 0x2
mov rdx, [ rsi + 0x0 ]
mulx rbx, r9, r8
mov rdx, r11
mulx r8, r11, [ rsi + 0x8 ]
xor rdx, rdx
adox r11, r9
adox rbx, r8
adcx r11, r10
adc rbx, 0x0
mov r10, 0xfffffffffff 
and rcx, r10
mov r9, r11
shrd r9, rbx, 43
lea r8, [r9 + 4 * r9]
lea rcx, [ rcx + r8 ]
mov rbx, rcx
and rbx, r10
mov r9, 0x7ffffffffff 
and r11, r9
shr rcx, 44
and rax, r9
lea rcx, [ rcx + rax ]
mov r8, rcx
and r8, r9
mov [ rdi + 0x8 ], r8
shr rcx, 43
lea rcx, [ rcx + r11 ]
mov [ rdi + 0x10 ], rcx
mov [ rdi + 0x0 ], rbx
mov rbx, [ rsp - 0x80 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1869
; seed 0220574641222642 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1421 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=604, initial num_batches=31): 290 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.20408163265306123
; number reverted permutation / tried permutation: 337 / 477 =70.650%
; number reverted decision / tried decision: 437 / 522 =83.716%
; validated in 0.065s
