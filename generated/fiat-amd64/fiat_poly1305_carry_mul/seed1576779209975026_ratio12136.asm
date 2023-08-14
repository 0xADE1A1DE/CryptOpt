SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
imul rdx, [ rax + 0x10 ], 0xa
imul rcx, [ rax + 0x8 ], 0xa
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [rdx + rdx]
mov rdx, rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, rcx
mov [ rsp - 0x70 ], r12
mulx r12, rcx, [ rsi + 0x10 ]
xor rdx, rdx
adox rcx, r8
adox r9, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, [ rax + 0x0 ]
adcx r8, rbx
adcx rbp, r12
imul rdx, [ rax + 0x10 ], 0x5
mulx r12, rbx, [ rsi + 0x10 ]
add rcx, r10
adcx r11, r9
mov r10, rcx
shrd r10, r11, 44
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, [ rax + 0x0 ]
add rbx, r9
adcx r11, r12
mov rdx, [ rsi + 0x0 ]
mulx r9, r12, [ rax + 0x8 ]
xor rdx, rdx
adox rbx, r12
adox r9, r11
adcx rbx, r10
adc r9, 0x0
mov r10, rbx
shrd r10, r9, 43
mov rdx, [ rsi + 0x0 ]
mulx r12, r11, [ rax + 0x10 ]
mov rdx, 0x7ffffffffff 
and rbx, rdx
adox r8, r11
adox r12, rbp
adcx r8, r10
adc r12, 0x0
mov rbp, r8
shrd rbp, r12, 43
mov r9, 0xfffffffffff 
and rcx, r9
lea r10, [rbp + 4 * rbp]
lea rcx, [ rcx + r10 ]
mov r11, rcx
shr r11, 44
and rcx, r9
lea r11, [ r11 + rbx ]
mov rbx, r11
shr rbx, 43
and r11, rdx
mov [ rdi + 0x8 ], r11
and r8, rdx
lea rbx, [ rbx + r8 ]
mov [ rdi + 0x10 ], rbx
mov [ rdi + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2136
; seed 1576779209975026 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1802 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=470, initial num_batches=31): 295 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.1637069922308546
; number reverted permutation / tried permutation: 406 / 524 =77.481%
; number reverted decision / tried decision: 341 / 475 =71.789%
; validated in 0.083s
