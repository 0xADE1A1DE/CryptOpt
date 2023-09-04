SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x18 ], 0x26
mov r10, [ rsi + 0x10 ]
mov r11, r10
shl r11, 0x1
imul r10, [ rsi + 0x20 ], 0x26
mov rdx, rax
mulx rcx, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, r10
imul rdx, [ rsi + 0x18 ], 0x13
mov [ rsp - 0x80 ], rbx
mov rbx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rbx
shl rbp, 0x1
mov [ rsp - 0x70 ], r12
mulx r12, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r10
xor rdx, rdx
adox rbx, r13
adox r14, r12
mov rdx, [ rsi + 0x0 ]
mulx r13, r12, rdx
adcx rax, r8
adcx r9, rcx
xor rdx, rdx
adox rax, r12
adox r13, r9
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rbp
adcx rbx, rcx
adcx r8, r14
mov rdx, rax
shrd rdx, r13, 51
add rbx, rdx
adc r8, 0x0
mov rbp, rbx
shrd rbp, r8, 51
mov rdx, [ rsi + 0x8 ]
mulx r12, r14, rdx
mov rdx, r10
mulx r9, r10, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, r14
adox r12, r9
mov rdx, r11
mulx r13, r11, [ rsi + 0x0 ]
adcx r10, r11
adcx r13, r12
mov rcx, [ rsi + 0x18 ]
lea r8, [rcx + rcx]
xor rcx, rcx
adox r10, rbp
adox r13, rcx
imul rbp, [ rsi + 0x20 ], 0x13
mov r14, 0x1 
shlx r9, [ rsi + 0x20 ], r14
mov r12, r10
shrd r12, r13, 51
mulx r13, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx r14, rcx, rbp
xor rdx, rdx
adox rcx, r11
adox r13, r14
mov rdx, r8
mulx rbp, r8, [ rsi + 0x0 ]
adcx rcx, r8
adcx rbp, r13
mulx r14, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, r13, rdx
xor rdx, rdx
adox rcx, r12
adox rbp, rdx
adcx r13, r11
adcx r14, r8
mov r12, rcx
shrd r12, rbp, 51
mov r11, 0x7ffffffffffff 
and rcx, r11
mov rdx, [ rsi + 0x0 ]
mulx rbp, r8, r9
adox r13, r8
adox rbp, r14
adcx r13, r12
adc rbp, 0x0
mov rdx, r13
and rdx, r11
shrd r13, rbp, 51
mov [ rdi + 0x20 ], rdx
and rax, r11
and rbx, r11
imul r9, r13, 0x13
lea rax, [ rax + r9 ]
mov r14, rax
shr r14, 51
and r10, r11
lea r14, [ r14 + rbx ]
mov r12, r14
shr r12, 51
lea r12, [ r12 + r10 ]
and r14, r11
mov [ rdi + 0x8 ], r14
mov [ rdi + 0x10 ], r12
and rax, r11
mov [ rdi + 0x0 ], rax
mov [ rdi + 0x18 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1752
; seed 1713840209818222 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 585512 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=292, initial num_batches=31): 68528 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11703944581836068
; number reverted permutation / tried permutation: 74009 / 95144 =77.786%
; number reverted decision / tried decision: 71502 / 94855 =75.380%
; validated in 0.191s
