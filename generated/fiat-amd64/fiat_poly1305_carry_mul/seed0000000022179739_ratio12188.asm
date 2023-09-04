SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x0 ]
imul rdx, [ rax + 0x8 ], 0xa
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
imul rdx, [ rax + 0x10 ], 0xa
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
xor rdx, rdx
adox r9, rbp
adox r12, rbx
mov rbx, [ rax + 0x10 ]
lea rbp, [rbx + 4 * rbx]
mov rdx, rbp
mulx rbp, rbx, [ rsi + 0x10 ]
adcx rbx, r10
adcx r11, rbp
add r9, rcx
adcx r8, r12
mov r10, r9
shrd r10, r8, 44
mov rdx, [ rsi + 0x0 ]
mulx r12, rcx, [ rax + 0x8 ]
xor rdx, rdx
adox rbx, rcx
adox r12, r11
mov rdx, [ rax + 0x0 ]
mulx r11, rbp, [ rsi + 0x10 ]
imul rdx, [ rax + 0x8 ], 0x2
mulx rcx, r8, [ rsi + 0x8 ]
test al, al
adox rbp, r8
adox rcx, r11
adcx rbx, r10
adc r12, 0x0
mov r10, rbx
shrd r10, r12, 43
mov r11, 0x7ffffffffff 
and rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx r12, r8, [ rax + 0x10 ]
adox rbp, r8
adox r12, rcx
adcx rbp, r10
adc r12, 0x0
mov rdx, rbp
shrd rdx, r12, 43
lea rcx, [rdx + 4 * rdx]
mov r10, 0xfffffffffff 
and r9, r10
lea r9, [ r9 + rcx ]
mov r8, r9
shr r8, 44
and r9, r10
lea r8, [ r8 + rbx ]
mov rbx, r8
and rbx, r11
mov [ rdi + 0x8 ], rbx
and rbp, r11
shr r8, 43
lea r8, [ r8 + rbp ]
mov [ rdi + 0x0 ], r9
mov [ rdi + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2188
; seed 1380106612310682 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 541214 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=470, initial num_batches=31): 70630 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.13050290642888027
; number reverted permutation / tried permutation: 66137 / 94679 =69.854%
; number reverted decision / tried decision: 59745 / 95320 =62.678%
; validated in 0.086s
