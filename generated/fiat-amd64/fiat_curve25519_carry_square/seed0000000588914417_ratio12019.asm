SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x18 ]
lea rdx, [r11 + r11]
imul r11, [ rsi + 0x20 ], 0x26
mov rcx, [ rsi + 0x10 ]
lea r8, [rcx + rcx]
xchg rdx, r11
mulx r9, rcx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov rbx, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
lea rbp, [rbx + 8 * rbx]
lea r12, [rbx + 2 * rbp]
imul rbx, [ rsi + 0x18 ], 0x26
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
xor rdx, rdx
adox r13, rcx
adox r9, r14
imul rcx, [ rsi + 0x20 ], 0x2
xor rbx, rbx
adox r13, rax
adox r10, r9
mov rdx, rbp
mulx rax, rbp, [ rsi + 0x18 ]
mov r14, r13
shrd r14, r10, 51
mov r9, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r10, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
lea r15, [rdx + 8 * rdx]
lea rdi, [rdx + 2 * r15]
test al, al
adox rbp, r10
adox rbx, rax
mov rdx, [ rsi + 0x8 ]
mov r15, rdx
shl r15, 0x1
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r11
mulx r11, r15, rdi
mov rdx, r9
mulx rdi, r9, [ rsi + 0x10 ]
test al, al
adox r15, r9
adox rdi, r11
adcx r15, rax
adcx r10, rdi
mov rdx, r8
mulx rax, r8, [ rsi + 0x0 ]
xor r11, r11
adox r15, r14
adox r10, r11
mov r14, r15
shrd r14, r10, 51
xor r9, r9
adox rbp, r8
adox rax, rbx
adcx rbp, r14
adc rax, 0x0
mov r11, 0x7ffffffffffff 
and r15, r11
mov rbx, rbp
shrd rbx, rax, 51
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r10, r8, rcx
mov rdx, r12
mulx rcx, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx rax, r14, [ rsp - 0x48 ]
mov rdx, rdi
mulx r9, rdi, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, rdi
adox r9, rcx
adcx r12, r14
adcx rax, r9
mov rdx, [ rsi + 0x10 ]
mulx r14, rcx, rdx
and rbp, r11
mov rdx, [ rsp - 0x48 ]
mulx r9, rdi, [ rsi + 0x8 ]
adox rcx, rdi
adox r9, r14
adcx r12, rbx
adc rax, 0x0
mov rdx, r12
shrd rdx, rax, 51
xor rbx, rbx
adox rcx, r8
adox r10, r9
adcx rcx, rdx
adc r10, 0x0
mov r8, rcx
and r8, r11
and r13, r11
and r12, r11
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x18 ], r12
shrd rcx, r10, 51
mov [ r14 + 0x20 ], r8
imul rdi, rcx, 0x13
lea r13, [ r13 + rdi ]
mov r9, r13
shr r9, 51
lea r9, [ r9 + r15 ]
mov r15, r9
and r15, r11
shr r9, 51
lea r9, [ r9 + rbp ]
mov [ r14 + 0x8 ], r15
and r13, r11
mov [ r14 + 0x10 ], r9
mov [ r14 + 0x0 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.2019
; seed 2959117759230422 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 791462 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=220, initial num_batches=31): 77671 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09813610760845119
; number reverted permutation / tried permutation: 79599 / 94490 =84.241%
; number reverted decision / tried decision: 70702 / 95509 =74.027%
; validated in 0.246s
