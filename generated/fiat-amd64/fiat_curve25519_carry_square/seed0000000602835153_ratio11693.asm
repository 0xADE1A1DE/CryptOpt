SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x18 ], 0x26
imul r10, [ rsi + 0x20 ], 0x26
mov rdx, rax
mulx r11, rax, [ rsi + 0x10 ]
mov rcx, [ rsi + 0x20 ]
lea r8, [rcx + rcx]
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, rdx
mov rdx, r10
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
xor rbp, rbp
adox rax, r10
adox rbx, r11
mulx r10, r11, [ rsi + 0x10 ]
mov rbp, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
lea r12, [rbp + rbp]
mov [ rsp - 0x68 ], r13
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
lea r12, [rdx + 8 * rdx]
lea rdi, [rdx + 2 * r12]
mov rdx, rdi
mulx r12, rdi, [ rsi + 0x18 ]
adcx rdi, r11
adcx r10, r12
xor r11, r11
adox rax, rcx
adox r9, rbx
mov rcx, rax
shrd rcx, r9, 51
xor rbx, rbx
adox rdi, r14
adox r15, r10
imul r11, [ rsi + 0x20 ], 0x13
xor r14, r14
adox rdi, rcx
adox r15, r14
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, rdx
adcx rbp, rbx
adcx r12, r13
mov rdx, rdi
shrd rdx, r15, 51
imul r13, [ rsi + 0x10 ], 0x2
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r9, r11
mov rdx, r13
mulx r11, r13, [ rsi + 0x0 ]
xor r15, r15
adox rbp, r13
adox r11, r12
adcx rbp, r10
adc r11, 0x0
mov r14, rbp
shrd r14, r11, 51
mulx r12, rbx, [ rsi + 0x8 ]
mov r10, [ rsi + 0x18 ]
mov rdx, r10
shl rdx, 0x1
mulx r13, r10, [ rsi + 0x8 ]
mulx r15, r11, [ rsi + 0x0 ]
add r9, rbx
adcx r12, rcx
xor rcx, rcx
adox r9, r11
adox r15, r12
adcx r9, r14
adc r15, 0x0
mov r14, 0x7ffffffffffff 
mov rbx, r9
and rbx, r14
and rbp, r14
mov rdx, [ rsi + 0x10 ]
mulx r12, r11, rdx
adox r11, r10
adox r13, r12
mov rdx, r8
mulx r10, r8, [ rsi + 0x0 ]
shrd r9, r15, 51
add r11, r8
adcx r10, r13
xor rdx, rdx
adox r11, r9
adox r10, rdx
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x18 ], rbx
mov r15, r11
shrd r15, r10, 51
imul rbx, r15, 0x13
and rax, r14
and rdi, r14
lea rax, [ rax + rbx ]
and r11, r14
mov r12, rax
shr r12, 51
lea r12, [ r12 + rdi ]
mov r13, r12
and r13, r14
shr r12, 51
and rax, r14
lea r12, [ r12 + rbp ]
mov [ rcx + 0x10 ], r12
mov [ rcx + 0x20 ], r11
mov [ rcx + 0x0 ], rax
mov [ rcx + 0x8 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1693
; seed 1783662619419576 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 589907 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=292, initial num_batches=31): 68288 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11576061989432232
; number reverted permutation / tried permutation: 72757 / 94701 =76.828%
; number reverted decision / tried decision: 70406 / 95298 =73.880%
; validated in 0.196s
