SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov rcx, rdx
shl rcx, 0x1
mov rdx, [ rax + 0x8 ]
lea r8, [rdx + rdx]
lea r8, [r8 + 4 * r8]
mov rdx, [ rax + 0x10 ]
lea r9, [rdx + rdx]
lea r9, [r9 + 4 * r9]
mov rdx, r9
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, r8
mov [ rsp - 0x78 ], rbp
mulx rbp, r8, [ rsi + 0x10 ]
test al, al
adox r8, r9
adox rbx, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, rcx
adcx r10, r9
adcx rbp, r11
mov rdx, [ rax + 0x10 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, r9, [ rax + 0x0 ]
xor rdx, rdx
adox r8, r9
adox r12, rbx
mov rbx, r8
shrd rbx, r12, 44
xor r9, r9
adox r10, r11
adox rcx, rbp
mov rdx, [ rax + 0x10 ]
lea rbp, [rdx + 4 * rdx]
mov rdx, rbp
mulx r11, rbp, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r9, r12, [ rsi + 0x8 ]
adcx rbp, r12
adcx r9, r11
mov rdx, [ rsi + 0x0 ]
mulx r12, r11, [ rax + 0x8 ]
xor rdx, rdx
adox rbp, r11
adox r12, r9
adcx rbp, rbx
adc r12, 0x0
mov rbx, rbp
shrd rbx, r12, 43
xor r9, r9
adox r10, rbx
adox rcx, r9
mov rdx, r10
shrd rdx, rcx, 43
mov r11, 0xfffffffffff 
and r8, r11
lea r12, [rdx + 4 * rdx]
lea r8, [ r8 + r12 ]
mov rbx, r8
and rbx, r11
mov [ rdi + 0x0 ], rbx
shr r8, 44
mov rcx, 0x2b 
bzhi rdx, rbp, rcx
lea r8, [ r8 + rdx ]
bzhi rbp, r8, rcx
mov [ rdi + 0x8 ], rbp
shr r8, 43
bzhi r12, r10, rcx
lea r8, [ r8 + r12 ]
mov [ rdi + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.0566
; seed 3164456322877334 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2632 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=398, initial num_batches=31): 319 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.12120060790273557
; number reverted permutation / tried permutation: 380 / 491 =77.393%
; number reverted decision / tried decision: 341 / 508 =67.126%
; validated in 0.108s
