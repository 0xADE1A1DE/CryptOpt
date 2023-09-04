SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x20 ], 0x26
mov r10, 0x1 
shlx r11, [ rsi + 0x8 ], r10
shlx rdx, [ rsi + 0x10 ], r10
mov rcx, [ rsi + 0x18 ]
lea r8, [rcx + 8 * rcx]
lea r9, [rcx + 2 * r8]
xchg rdx, r11
mulx r8, rcx, [ rsi + 0x0 ]
imul rdx, [ rsi + 0x18 ], 0x26
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x10 ]
mov rdx, rax
mov [ rsp - 0x78 ], rbp
mulx rbp, rax, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
xor r12, r12
adox r10, rax
adox rbp, rbx
mulx rax, rbx, [ rsi + 0x10 ]
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
adcx r10, r13
adcx r14, rbp
mov rdx, r9
mulx rbp, r9, [ rsi + 0x18 ]
mov rdx, 0x7ffffffffffff 
mov r13, r10
and r13, rdx
adox r9, rbx
adox rax, rbp
shrd r10, r14, 51
xor rbx, rbx
adox r9, rcx
adox r8, rax
adcx r9, r10
adc r8, 0x0
imul rcx, [ rsi + 0x20 ], 0x13
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, rbp, r11
xor rdx, rdx
adox rcx, rbp
adox rax, r14
mov rdx, r11
mulx rbx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r14, r10, rdx
mov rdx, [ rsi + 0x18 ]
lea rbp, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
adcx r15, r10
adcx r14, rdi
mov rdx, [ rsi + 0x8 ]
mulx r10, r12, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rbp
xor rdx, rdx
adox r15, r11
adox rbx, r14
mov r11, [ rsi + 0x20 ]
mov rbp, r11
shl rbp, 0x1
mov r11, r9
shrd r11, r8, 51
mov rdx, [ rsi + 0x10 ]
mulx r14, r8, rdx
add r8, r12
adcx r10, r14
xor rdx, rdx
adox r15, r11
adox rbx, rdx
mov rdx, rbp
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, r15
shrd rdx, rbx, 51
xor r11, r11
adox rcx, rdi
adox r13, rax
adcx rcx, rdx
adc r13, 0x0
mov rax, rcx
shrd rax, r13, 51
add r8, rbp
adcx r12, r10
add r8, rax
adc r12, 0x0
mov rdi, r8
shrd rdi, r12, 51
imul r14, rdi, 0x13
add r14, [ rsp - 0x48 ]
mov r10, 0x7ffffffffffff 
and r9, r10
mov rbx, r14
and rbx, r10
shr r14, 51
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], rbx
lea r14, [ r14 + r9 ]
mov rdx, r14
and rdx, r10
mov [ rbp + 0x8 ], rdx
and r15, r10
shr r14, 51
lea r14, [ r14 + r15 ]
and r8, r10
mov [ rbp + 0x20 ], r8
and rcx, r10
mov [ rbp + 0x10 ], r14
mov [ rbp + 0x18 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.2066
; seed 0518974423178865 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 776954 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=220, initial num_batches=31): 76821 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0988745794474319
; number reverted permutation / tried permutation: 81789 / 95263 =85.856%
; number reverted decision / tried decision: 70978 / 94736 =74.922%
; validated in 0.257s
