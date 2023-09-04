SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
mov rax, [ rsi + 0x8 ]
lea r10, [rax + rax]
imul rax, [ rsi + 0x10 ], 0x14
mov rdx, rax
mulx r11, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
add rax, rcx
adcx r8, r11
imul rdx, [ rsi + 0x10 ], 0x5
mulx r11, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rcx, r10
mov rdx, rax
shrd rdx, r8, 44
xor r8, r8
adox r9, rcx
adox rbx, r11
adcx r9, rdx
adc rbx, 0x0
mov r11, [ rsi + 0x10 ]
lea rcx, [r11 + r11]
mov rdx, rcx
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, r10
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, r9
shrd rdx, rbx, 43
add r10, r11
adcx rcx, r8
xor rbx, rbx
adox r10, rdx
adox rcx, rbx
mov r11, r10
shrd r11, rcx, 43
imul r8, r11, 0x5
mov rdx, 0xfffffffffff 
and rax, rdx
lea rax, [ rax + r8 ]
mov rcx, rax
shr rcx, 44
and rax, rdx
mov [ rdi + 0x0 ], rax
mov r11, 0x7ffffffffff 
and r9, r11
lea rcx, [ rcx + r9 ]
mov r8, rcx
and r8, r11
mov [ rdi + 0x8 ], r8
shr rcx, 43
and r10, r11
lea rcx, [ rcx + r10 ]
mov [ rdi + 0x10 ], rcx
mov rbx, [ rsp - 0x80 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1912
; seed 3372161002404255 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1504 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=599, initial num_batches=31): 281 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.18683510638297873
; number reverted permutation / tried permutation: 335 / 479 =69.937%
; number reverted decision / tried decision: 406 / 520 =78.077%
; validated in 0.069s
