SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov rcx, rdx
shl rcx, 0x1
mov rdx, [ rax + 0x8 ]
lea r8, [rdx + rdx]
lea r8, [r8 + 4 * r8]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r8
mov rdx, [ rax + 0x10 ]
lea r8, [rdx + rdx]
lea r8, [r8 + 4 * r8]
mov rdx, r8
mov [ rsp - 0x78 ], rbp
mulx rbp, r8, [ rsi + 0x8 ]
mov rdx, rcx
mov [ rsp - 0x70 ], r12
mulx r12, rcx, [ rsi + 0x8 ]
test al, al
adox r9, r8
adox rbp, rbx
mov rdx, [ rsi + 0x0 ]
mulx r8, rbx, [ rax + 0x0 ]
adcx r9, rbx
adcx r8, rbp
mov rdx, [ rax + 0x0 ]
mulx rbx, rbp, [ rsi + 0x8 ]
test al, al
adox r10, rcx
adox r12, r11
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rax + 0x10 ]
adcx r10, r11
adcx rcx, r12
mov rdx, [ rax + 0x10 ]
lea r12, [rdx + 4 * rdx]
mov rdx, r12
mulx r11, r12, [ rsi + 0x10 ]
test al, al
adox r12, rbp
adox rbx, r11
mov rbp, r9
shrd rbp, r8, 44
mov rdx, [ rax + 0x8 ]
mulx r11, r8, [ rsi + 0x0 ]
test al, al
adox r12, r8
adox r11, rbx
adcx r12, rbp
adc r11, 0x0
mov rdx, 0x7ffffffffff 
mov rbx, r12
and rbx, rdx
shrd r12, r11, 43
xor rbp, rbp
adox r10, r12
adox rcx, rbp
mov r8, 0x2c 
bzhi r11, r9, r8
mov r9, r10
shrd r9, rcx, 43
lea r12, [r9 + 4 * r9]
and r10, rdx
lea r11, [ r11 + r12 ]
mov rcx, r11
shr rcx, 44
lea rcx, [ rcx + rbx ]
mov rbx, rcx
shr rbx, 43
lea rbx, [ rbx + r10 ]
mov [ rdi + 0x10 ], rbx
and rcx, rdx
mov [ rdi + 0x8 ], rcx
bzhi r9, r11, r8
mov [ rdi + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.0970
; seed 1884992206932791 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 458876 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=393, initial num_batches=31): 59205 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.12902178366268882
; number reverted permutation / tried permutation: 79806 / 95146 =83.877%
; number reverted decision / tried decision: 71186 / 94853 =75.049%
; validated in 0.104s
