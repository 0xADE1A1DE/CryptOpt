SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x18 ], 0x26
imul r10, [ rsi + 0x18 ], 0x13
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
imul rdx, [ rsi + 0x20 ], 0x26
mulx r9, r8, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov rbx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [rbx + rbx]
mov rbx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, rbp
mov [ rsp - 0x60 ], r14
mulx r14, rbp, [ rsi + 0x0 ]
test al, al
adox r8, r12
adox r13, r9
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, rax
mov rdx, rbx
mulx rax, rbx, [ rsi + 0x8 ]
adcx r9, rbx
adcx rax, r12
xor r12, r12
adox r9, r11
adox rcx, rax
mulx rbx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, rax, r10
mov rdx, r9
shrd rdx, rcx, 51
mov r10, [ rsi + 0x10 ]
lea rcx, [r10 + r10]
xor r10, r10
adox rax, r11
adox rbx, r12
mov r11, 0x7ffffffffffff 
and r9, r11
adox rax, rbp
adox r14, rbx
adcx rax, rdx
adc r14, 0x0
mov rdx, rcx
mulx rbp, rcx, [ rsi + 0x0 ]
mulx rbx, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, rcx
adox rbp, r13
mov r10, rax
shrd r10, r14, 51
imul r13, [ rsi + 0x20 ], 0x13
mov r14, [ rsi + 0x18 ]
lea rcx, [r14 + r14]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
xor rdx, rdx
adox r14, r12
adox rbx, r15
mov rdx, [ rsi + 0x10 ]
mulx r13, r12, rdx
mov rdx, rcx
mulx r15, rcx, [ rsi + 0x8 ]
adcx r12, rcx
adcx r15, r13
xor r13, r13
adox r8, r10
adox rbp, r13
mulx rcx, r10, [ rsi + 0x0 ]
adcx r14, r10
adcx rcx, rbx
mov rdx, r8
shrd rdx, rbp, 51
mov rbx, [ rsi + 0x20 ]
lea rbp, [rbx + rbx]
xor rbx, rbx
adox r14, rdx
adox rcx, rbx
mov rdx, [ rsi + 0x0 ]
mulx r10, r13, rbp
mov rdx, r14
shrd rdx, rcx, 51
xor rbp, rbp
adox r12, r13
adox r10, r15
adcx r12, rdx
adc r10, 0x0
mov rbx, r12
and rbx, r11
and r14, r11
shrd r12, r10, 51
imul r15, r12, 0x13
lea r9, [ r9 + r15 ]
and rax, r11
mov rcx, r9
and rcx, r11
mov [ rdi + 0x0 ], rcx
shr r9, 51
lea r9, [ r9 + rax ]
mov r13, r9
and r13, r11
mov [ rdi + 0x8 ], r13
shr r9, 51
and r8, r11
lea r9, [ r9 + r8 ]
mov [ rdi + 0x20 ], rbx
mov [ rdi + 0x18 ], r14
mov [ rdi + 0x10 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.2217
; seed 1248609897873185 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 947098 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=174, initial num_batches=31): 85705 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09049221939017926
; number reverted permutation / tried permutation: 82813 / 95064 =87.113%
; number reverted decision / tried decision: 81204 / 94935 =85.536%
; validated in 0.951s
