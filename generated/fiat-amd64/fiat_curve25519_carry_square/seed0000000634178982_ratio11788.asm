SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x20 ], 0x26
mov rdx, rax
mulx r10, rax, [ rsi + 0x8 ]
mov r11, [ rsi + 0x8 ]
mov rcx, r11
shl rcx, 0x1
mulx r8, r11, [ rsi + 0x18 ]
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
imul rdx, [ rsi + 0x18 ], 0x26
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
test al, al
adox r12, rax
adox r10, r13
adcx r12, rbx
adcx rbp, r10
mov rax, r12
shrd rax, rbp, 51
mov rbx, [ rsi + 0x18 ]
lea rdx, [rbx + 8 * rbx]
lea r13, [rbx + 2 * rdx]
mov rdx, r13
mulx r13, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, r9
xor rdx, rdx
adox rbx, r10
adox rbp, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, rcx
adcx rbx, r9
adcx r13, rbp
mov rdx, [ rsi + 0x10 ]
mov rcx, rdx
shl rcx, 0x1
mov rdx, [ rsi + 0x8 ]
mulx rbp, r10, rdx
mov rdx, rcx
mulx r9, rcx, [ rsi + 0x8 ]
add r11, r10
adcx rbp, r8
mulx r10, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox rbx, rax
adox r13, rdx
adcx r11, r8
adcx r10, rbp
mov rax, rbx
shrd rax, r13, 51
imul rbp, [ rsi + 0x20 ], 0x13
mov rdx, rbp
mulx r8, rbp, [ rsi + 0x20 ]
add r11, rax
adc r10, 0x0
mov r13, r11
shrd r13, r10, 51
xor rax, rax
adox rbp, rcx
adox r9, r8
mov rcx, 0x1 
shlx rdx, [ rsi + 0x18 ], rcx
mulx r10, r8, [ rsi + 0x0 ]
adcx rbp, r8
adcx r10, r9
add rbp, r13
adc r10, 0x0
mov r13, rbp
shrd r13, r10, 51
mov r9, [ rsi + 0x20 ]
lea r8, [r9 + r9]
mulx r10, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, rax, rdx
xor rdx, rdx
adox rax, r9
adox r10, rcx
mov rdx, r8
mulx r9, r8, [ rsi + 0x0 ]
adcx rax, r8
adcx r9, r10
xor rdx, rdx
adox rax, r13
adox r9, rdx
mov r13, rax
shrd r13, r9, 51
imul rcx, r13, 0x13
mov r10, 0x7ffffffffffff 
and rax, r10
and r12, r10
lea r12, [ r12 + rcx ]
mov [ rdi + 0x20 ], rax
and rbx, r10
mov r8, r12
shr r8, 51
lea r8, [ r8 + rbx ]
mov r9, r8
shr r9, 51
and r8, r10
and r11, r10
lea r9, [ r9 + r11 ]
and rbp, r10
mov [ rdi + 0x18 ], rbp
and r12, r10
mov [ rdi + 0x0 ], r12
mov [ rdi + 0x10 ], r9
mov [ rdi + 0x8 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1788
; seed 2791274523171948 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 593157 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=292, initial num_batches=31): 69795 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11766699204426484
; number reverted permutation / tried permutation: 71947 / 94827 =75.872%
; number reverted decision / tried decision: 69907 / 95172 =73.453%
; validated in 0.194s
