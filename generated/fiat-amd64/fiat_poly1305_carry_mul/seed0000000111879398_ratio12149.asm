SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, [ rdx + 0x10 ]
lea r10, [rax + 4 * rax]
imul rax, [ rdx + 0x10 ], 0xa
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ r11 + 0x0 ]
imul rdx, [ r11 + 0x8 ], 0xa
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, rax
mov [ rsp - 0x78 ], rbp
mulx rbp, rax, [ rsi + 0x8 ]
xor rdx, rdx
adox r9, rax
adox rbp, rbx
adcx r9, rcx
adcx r8, rbp
mov rcx, r9
shrd rcx, r8, 44
mov rdx, r10
mulx rbx, r10, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x0 ]
mulx rbp, rax, [ rsi + 0x8 ]
xor rdx, rdx
adox r10, rax
adox rbp, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ r11 + 0x8 ]
adcx r10, r8
adcx rbx, rbp
xor rdx, rdx
adox r10, rcx
adox rbx, rdx
mov rcx, r10
shrd rcx, rbx, 43
mov rdx, [ r11 + 0x0 ]
mulx rbp, rax, [ rsi + 0x10 ]
imul rdx, [ r11 + 0x8 ], 0x2
mulx rbx, r8, [ rsi + 0x8 ]
add rax, r8
adcx rbx, rbp
mov rdx, [ r11 + 0x10 ]
mulx r8, rbp, [ rsi + 0x0 ]
xor rdx, rdx
adox rax, rbp
adox r8, rbx
adcx rax, rcx
adc r8, 0x0
mov rcx, rax
shrd rcx, r8, 43
mov rbx, 0x7ffffffffff 
and rax, rbx
mov rbp, 0xfffffffffff 
and r9, rbp
lea r8, [rcx + 4 * rcx]
lea r9, [ r9 + r8 ]
mov rcx, r9
and rcx, rbp
mov [ rdi + 0x0 ], rcx
shr r9, 44
and r10, rbx
lea r9, [ r9 + r10 ]
mov r8, r9
shr r8, 43
and r9, rbx
mov [ rdi + 0x8 ], r9
lea r8, [ r8 + rax ]
mov [ rdi + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2149
; seed 0282676548099225 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 349793 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=467, initial num_batches=31): 61141 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.17479194838089956
; number reverted permutation / tried permutation: 76099 / 94716 =80.344%
; number reverted decision / tried decision: 73427 / 95283 =77.062%
; validated in 0.095s
