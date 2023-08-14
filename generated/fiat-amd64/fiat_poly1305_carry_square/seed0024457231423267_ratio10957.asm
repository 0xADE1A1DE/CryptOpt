SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
imul rax, [ rsi + 0x10 ], 0x14
mov r10, [ rsi + 0x10 ]
lea r11, [r10 + 4 * r10]
mov r10, [ rsi + 0x8 ]
lea rdx, [r10 + r10]
mov r10, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, rax
mov rdx, [ rsi + 0x10 ]
mov r9, rdx
shl r9, 0x1
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, rdx
xor rdx, rdx
adox rcx, rax
adox rbx, r8
mov rdx, r11
mulx r8, r11, [ rsi + 0x10 ]
mov rdx, r10
mulx rax, r10, [ rsi + 0x0 ]
adcx r11, r10
adcx rax, r8
mulx r10, r8, [ rsi + 0x8 ]
mov rdx, rcx
shrd rdx, rbx, 44
add r11, rdx
adc rax, 0x0
mov rdx, r9
mulx rbx, r9, [ rsi + 0x0 ]
add r8, r9
adcx rbx, r10
mov rdx, 0x7ffffffffff 
mov r10, r11
and r10, rdx
shrd r11, rax, 43
add r8, r11
adc rbx, 0x0
mov rax, 0xfffffffffff 
and rcx, rax
mov r9, r8
shrd r9, rbx, 43
and r8, rdx
lea r11, [r9 + 4 * r9]
lea rcx, [ rcx + r11 ]
mov rbx, rcx
shr rbx, 44
lea rbx, [ rbx + r10 ]
mov r10, rbx
shr r10, 43
lea r10, [ r10 + r8 ]
mov [ rdi + 0x10 ], r10
and rbx, rdx
mov [ rdi + 0x8 ], rbx
and rcx, rax
mov [ rdi + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0957
; seed 0024457231423267 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1930 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=507, initial num_batches=31): 344 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.17823834196891192
; number reverted permutation / tried permutation: 432 / 514 =84.047%
; number reverted decision / tried decision: 369 / 485 =76.082%
; validated in 0.108s
