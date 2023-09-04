SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x20 ], 0x26
mov r10, 0x1 
shlx r11, [ rsi + 0x8 ], r10
mov rdx, rax
mulx rcx, rax, [ rsi + 0x10 ]
imul r8, [ rsi + 0x18 ], 0x13
imul r9, [ rsi + 0x18 ], 0x26
mov [ rsp - 0x80 ], rbx
shlx rbx, [ rsi + 0x10 ], r10
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov rdx, r10
mulx r9, r10, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
xor rdx, rdx
adox rbp, r10
adox r9, r12
mov rdx, [ rsi + 0x0 ]
mulx r10, r12, rdx
mov rdx, r8
mov [ rsp - 0x58 ], r15
mulx r15, r8, [ rsi + 0x18 ]
adcx r8, rax
adcx rcx, r15
xor rax, rax
adox rbp, r12
adox r10, r9
mov rdx, [ rsi + 0x0 ]
mulx r12, r9, r11
adcx r8, r9
adcx r12, rcx
mov rdx, rbp
shrd rdx, r10, 51
xor r11, r11
adox r8, rdx
adox r12, r11
mov rdx, [ rsi + 0x8 ]
mulx r15, rax, rdx
adcx r13, rax
adcx r15, r14
mov rdx, [ rsi + 0x0 ]
mulx rcx, r14, rbx
mov rdx, r8
shrd rdx, r12, 51
xor r10, r10
adox r13, r14
adox rcx, r15
adcx r13, rdx
adc rcx, 0x0
imul r11, [ rsi + 0x20 ], 0x13
mov r9, [ rsi + 0x20 ]
lea r12, [r9 + r9]
mov rdx, r11
mulx r9, r11, [ rsi + 0x20 ]
mov rdx, rbx
mulx rax, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
lea r15, [rdx + rdx]
xor rdx, rdx
adox r11, rbx
adox rax, r9
mov rdx, r12
mulx r12, r10, [ rsi + 0x0 ]
mov rdx, r15
mulx r14, r15, [ rsi + 0x0 ]
adcx r11, r15
adcx r14, rax
mov r9, r13
shrd r9, rcx, 51
mulx rbx, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r15, rax, rdx
add rax, rcx
adcx rbx, r15
xor rdx, rdx
adox rax, r10
adox r12, rbx
adcx r11, r9
adc r14, 0x0
mov r10, r11
shrd r10, r14, 51
xor r9, r9
adox rax, r10
adox r12, r9
mov rdx, 0x7ffffffffffff 
and rbp, rdx
mov rcx, rax
shrd rcx, r12, 51
imul r15, rcx, 0x13
lea rbp, [ rbp + r15 ]
and r8, rdx
mov rbx, rbp
and rbx, rdx
shr rbp, 51
lea rbp, [ rbp + r8 ]
mov r14, rbp
shr r14, 51
and rbp, rdx
and r13, rdx
and rax, rdx
lea r14, [ r14 + r13 ]
mov [ rdi + 0x20 ], rax
and r11, rdx
mov [ rdi + 0x10 ], r14
mov [ rdi + 0x18 ], r11
mov [ rdi + 0x0 ], rbx
mov [ rdi + 0x8 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2524
; seed 3820365747451306 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 522549 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=273, initial num_batches=31): 59593 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.1140428935850992
; number reverted permutation / tried permutation: 70813 / 95168 =74.408%
; number reverted decision / tried decision: 68548 / 94831 =72.284%
; validated in 0.176s
