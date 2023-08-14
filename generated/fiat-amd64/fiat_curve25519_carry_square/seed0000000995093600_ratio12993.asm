SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x8 ], 0x2
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, rdx
mov rdx, [ rsi + 0x20 ]
lea rcx, [rdx + 8 * rdx]
lea r8, [rdx + 2 * rcx]
imul rdx, [ rsi + 0x20 ], 0x26
mulx r9, rcx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
lea r14, [rdx + 8 * rdx]
lea r15, [rdx + 2 * r14]
imul rdx, [ rsi + 0x18 ], 0x26
mov [ rsp - 0x50 ], rdi
mulx rdi, r14, [ rsi + 0x10 ]
xor rdx, rdx
adox r14, rbx
adox rbp, rdi
adcx r14, r10
adcx r11, rbp
mov rdx, r15
mulx r10, r15, [ rsi + 0x18 ]
mov rdx, rax
mulx rbx, rax, [ rsi + 0x0 ]
xor rdx, rdx
adox r15, rcx
adox r9, r10
adcx r15, rax
adcx rbx, r9
mov rcx, r14
shrd rcx, r11, 51
mov rdx, [ rsi + 0x8 ]
mulx rbp, rdi, rdx
xor rdx, rdx
adox r15, rcx
adox rbx, rdx
mov r11, 0x7ffffffffffff 
mov r10, r15
and r10, r11
mov rax, [ rsi + 0x10 ]
lea r9, [rax + rax]
shrd r15, rbx, 51
mov rdx, r9
mulx r9, rax, [ rsi + 0x8 ]
mulx rbx, rcx, [ rsi + 0x0 ]
add r12, rdi
adcx rbp, r13
mov rdx, r8
mulx r13, r8, [ rsi + 0x20 ]
add r12, rcx
adcx rbx, rbp
imul rdx, [ rsi + 0x18 ], 0x2
test al, al
adox r8, rax
adox r9, r13
mulx rax, rdi, [ rsi + 0x8 ]
mulx rbp, rcx, [ rsi + 0x0 ]
adcx r12, r15
adc rbx, 0x0
xor r15, r15
adox r8, rcx
adox rbp, r9
mov r13, r12
shrd r13, rbx, 51
xor rdx, rdx
adox r8, r13
adox rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r15, rdx
mov rdx, r8
shrd rdx, rbp, 51
xor rcx, rcx
adox r15, rdi
adox rax, r9
mov rdi, 0x1 
shlx rbx, [ rsi + 0x20 ], rdi
xchg rdx, rbx
mulx rbp, r13, [ rsi + 0x0 ]
and r14, r11
and r8, r11
adox r15, r13
adox rbp, rax
adcx r15, rbx
adc rbp, 0x0
mov r9, r15
and r9, r11
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x18 ], r8
shrd r15, rbp, 51
imul rax, r15, 0x13
lea r14, [ r14 + rax ]
mov rdx, r14
shr rdx, 51
and r12, r11
lea rdx, [ rdx + r10 ]
mov r10, rdx
shr r10, 51
and r14, r11
mov [ rbx + 0x0 ], r14
lea r10, [ r10 + r12 ]
mov [ rbx + 0x10 ], r10
and rdx, r11
mov [ rbx + 0x20 ], r9
mov [ rbx + 0x8 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.2993
; seed 4418788935925639 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 798326 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=215, initial num_batches=31): 65252 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08173603264831661
; number reverted permutation / tried permutation: 80748 / 94906 =85.082%
; number reverted decision / tried decision: 72419 / 95093 =76.156%
; validated in 0.19s
