SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
imul rax, [ rsi + 0x10 ], 0x14
mov r10, [ rsi + 0x10 ]
lea r11, [r10 + 4 * r10]
mov rdx, r11
mulx r11, r10, [ rsi + 0x10 ]
mov rcx, [ rsi + 0x8 ]
mov r8, rcx
shl r8, 0x1
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, r8
xor rdx, rdx
adox r10, rcx
adox r9, r11
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, rax
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, [ rsi + 0x8 ]
adcx rax, r11
adcx rcx, rbx
mov rdx, rax
shrd rdx, rcx, 44
xor r11, r11
adox r10, rdx
adox r9, r11
imul rbx, [ rsi + 0x10 ], 0x2
mov rcx, r10
shrd rcx, r9, 43
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, r8
mov rdx, rbx
mulx r8, rbx, [ rsi + 0x0 ]
add r9, rbx
adcx r8, r11
mov rdx, 0x7ffffffffff 
and r10, rdx
adox r9, rcx
mov r11, 0x0 
adox r8, r11
mov rcx, r9
shrd rcx, r8, 43
mov rbx, 0xfffffffffff 
and rax, rbx
lea r8, [rcx + 4 * rcx]
lea rax, [ rax + r8 ]
mov rcx, rax
shr rcx, 44
lea rcx, [ rcx + r10 ]
and rax, rbx
and r9, rdx
mov [ rdi + 0x0 ], rax
mov r10, rcx
shr r10, 43
and rcx, rdx
lea r10, [ r10 + r9 ]
mov [ rdi + 0x10 ], r10
mov [ rdi + 0x8 ], rcx
mov rbx, [ rsp - 0x80 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.0967
; seed 0167852095821801 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2472 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=505, initial num_batches=31): 426 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.17233009708737865
; number reverted permutation / tried permutation: 411 / 514 =79.961%
; number reverted decision / tried decision: 364 / 485 =75.052%
; validated in 0.121s
