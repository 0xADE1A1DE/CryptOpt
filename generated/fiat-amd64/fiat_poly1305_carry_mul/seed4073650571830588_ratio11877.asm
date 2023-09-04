SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
mov rax, [ rdx + 0x8 ]
lea r10, [rax + rax]
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rax + 0x0 ]
imul rdx, [ rax + 0x8 ], 0xa
mulx r9, r8, [ rsi + 0x10 ]
imul rdx, [ rax + 0x10 ], 0xa
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, rbx
adox rbp, r9
mov rdx, [ rsi + 0x10 ]
mulx rbx, r9, [ rax + 0x0 ]
adcx r8, r11
adcx rcx, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, r11, r10
imul rdx, [ rax + 0x10 ], 0x5
mov [ rsp - 0x70 ], r12
mulx r12, r10, [ rsi + 0x10 ]
xor rdx, rdx
adox r9, r11
adox rbp, rbx
mov rdx, [ rsi + 0x8 ]
mulx r11, rbx, [ rax + 0x0 ]
adcx r10, rbx
adcx r11, r12
mov rdx, [ rax + 0x8 ]
mulx rbx, r12, [ rsi + 0x0 ]
add r10, r12
adcx rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx r12, r11, [ rax + 0x10 ]
add r9, r11
adcx r12, rbp
mov rdx, r8
shrd rdx, rcx, 44
add r10, rdx
adc rbx, 0x0
mov rcx, r10
shrd rcx, rbx, 43
add r9, rcx
adc r12, 0x0
mov rbp, r9
shrd rbp, r12, 43
lea r11, [rbp + 4 * rbp]
mov rdx, 0xfffffffffff 
and r8, rdx
lea r8, [ r8 + r11 ]
mov rbx, r8
shr rbx, 44
mov rcx, 0x7ffffffffff 
and r9, rcx
and r10, rcx
lea rbx, [ rbx + r10 ]
mov r12, rbx
shr r12, 43
lea r12, [ r12 + r9 ]
and r8, rdx
mov [ rdi + 0x0 ], r8
and rbx, rcx
mov [ rdi + 0x8 ], rbx
mov [ rdi + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1877
; seed 4073650571830588 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1876 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=473, initial num_batches=31): 310 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.1652452025586354
; number reverted permutation / tried permutation: 396 / 507 =78.107%
; number reverted decision / tried decision: 366 / 492 =74.390%
; validated in 0.086s
