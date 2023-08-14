SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
imul rdx, [ rax + 0x10 ], 0xa
mulx r8, rcx, [ rsi + 0x8 ]
mov r9, [ rax + 0x8 ]
lea rdx, [r9 + r9]
lea rdx, [rdx + 4 * rdx]
mov r9, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [r9 + 4 * r9]
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x10 ]
xor rdx, rdx
adox r9, rcx
adox r8, rbp
mov rdx, rbx
mulx rcx, rbx, [ rsi + 0x10 ]
adcx r9, r10
adcx r11, r8
mov r10, r9
shrd r10, r11, 44
mov rdx, [ rax + 0x0 ]
mulx r8, rbp, [ rsi + 0x8 ]
mov rdx, 0x2c 
mov [ rsp - 0x70 ], r12
bzhi r12, r9, rdx
mov r9, [ rax + 0x8 ]
mov r11, r9
shl r11, 0x1
mov rdx, r11
mulx r9, r11, [ rsi + 0x8 ]
xor rdx, rdx
adox rbx, rbp
adox r8, rcx
mov rdx, [ rax + 0x8 ]
mulx rbp, rcx, [ rsi + 0x0 ]
adcx rbx, rcx
adcx rbp, r8
mov rdx, [ rax + 0x0 ]
mulx rcx, r8, [ rsi + 0x10 ]
xor rdx, rdx
adox r8, r11
adox r9, rcx
adcx rbx, r10
adc rbp, 0x0
mov r10, rbx
shrd r10, rbp, 43
mov r11, 0x7ffffffffff 
and rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx rbp, rcx, [ rax + 0x10 ]
adox r8, rcx
adox rbp, r9
adcx r8, r10
adc rbp, 0x0
mov rdx, r8
shrd rdx, rbp, 43
and r8, r11
lea r9, [rdx + 4 * rdx]
lea r12, [ r12 + r9 ]
mov r10, 0x2c 
bzhi rcx, r12, r10
shr r12, 44
mov [ rdi + 0x0 ], rcx
lea r12, [ r12 + rbx ]
mov rbx, r12
and rbx, r11
mov [ rdi + 0x8 ], rbx
shr r12, 43
lea r12, [ r12 + r8 ]
mov [ rdi + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.1162
; seed 3840524294645365 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2446 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=404, initial num_batches=31): 369 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.1508585445625511
; number reverted permutation / tried permutation: 400 / 513 =77.973%
; number reverted decision / tried decision: 346 / 486 =71.193%
; validated in 0.135s
