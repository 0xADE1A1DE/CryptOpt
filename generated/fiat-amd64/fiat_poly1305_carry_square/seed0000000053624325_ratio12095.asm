SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x10 ]
lea rdx, [r11 + 4 * r11]
imul r11, [ rsi + 0x10 ], 0x14
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
xor rdx, rdx
adox r9, rax
adox r10, rbx
mov rax, r9
shrd rax, r10, 44
mov r11, [ rsi + 0x8 ]
lea rbx, [r11 + r11]
mov rdx, rbx
mulx rbx, r11, [ rsi + 0x0 ]
add rcx, r11
adcx rbx, r8
xor r8, r8
adox rcx, rax
adox rbx, r8
mov r10, rcx
shrd r10, rbx, 43
imul rax, [ rsi + 0x10 ], 0x2
mulx rbx, r11, [ rsi + 0x8 ]
mov rdx, rax
mulx r8, rax, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, rax
adox r8, rbx
adcx r11, r10
adc r8, 0x0
mov r10, r11
shrd r10, r8, 43
lea rbx, [r10 + 4 * r10]
mov rax, 0xfffffffffff 
and r9, rax
lea r9, [ r9 + rbx ]
mov r8, r9
shr r8, 44
mov r10, 0x7ffffffffff 
and rcx, r10
lea r8, [ r8 + rcx ]
mov rbx, r8
and rbx, r10
mov [ rdi + 0x8 ], rbx
and r11, r10
shr r8, 43
lea r8, [ r8 + r11 ]
and r9, rax
mov [ rdi + 0x10 ], r8
mov [ rdi + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2095
; seed 4144469160606785 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 282524 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=587, initial num_batches=31): 57245 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.2026199544109527
; number reverted permutation / tried permutation: 73712 / 94949 =77.633%
; number reverted decision / tried decision: 80384 / 95050 =84.570%
; validated in 0.076s
