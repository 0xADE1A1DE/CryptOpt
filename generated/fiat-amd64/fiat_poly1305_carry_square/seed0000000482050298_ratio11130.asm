SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
mov rax, [ rsi + 0x8 ]
mov r10, rax
shl r10, 0x1
mov rdx, [ rsi + 0x0 ]
mulx r11, rax, r10
mov rdx, [ rsi + 0x10 ]
lea rcx, [rdx + 4 * rdx]
imul rdx, [ rsi + 0x10 ], 0x14
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, rcx
mov [ rsp - 0x80 ], rbx
mulx rbx, rcx, [ rsi + 0x10 ]
test al, al
adox rcx, rax
adox r11, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, rax, rdx
adcx r8, rax
adcx rbx, r9
mov rdx, r8
shrd rdx, rbx, 44
add rcx, rdx
adc r11, 0x0
mov r9, [ rsi + 0x10 ]
lea rax, [r9 + r9]
mov r9, rcx
shrd r9, r11, 43
mov rdx, [ rsi + 0x0 ]
mulx r11, rbx, rax
mov rdx, r10
mulx rax, r10, [ rsi + 0x8 ]
add r10, rbx
adcx r11, rax
add r10, r9
adc r11, 0x0
mov rdx, 0x7ffffffffff 
and rcx, rdx
mov r9, r10
shrd r9, r11, 43
lea rbx, [r9 + 4 * r9]
mov rax, 0xfffffffffff 
and r8, rax
lea r8, [ r8 + rbx ]
mov r11, r8
shr r11, 44
lea r11, [ r11 + rcx ]
and r10, rdx
mov rcx, r11
shr rcx, 43
lea rcx, [ rcx + r10 ]
and r8, rax
and r11, rdx
mov [ rdi + 0x8 ], r11
mov [ rdi + 0x10 ], rcx
mov [ rdi + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.1130
; seed 2436985350856617 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 458068 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=506, initial num_batches=31): 81791 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.17855645886636917
; number reverted permutation / tried permutation: 77568 / 94646 =81.956%
; number reverted decision / tried decision: 74413 / 95353 =78.039%
; validated in 0.101s
