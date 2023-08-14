SECTION .text
	GLOBAL fiat_curve25519_carry_square
fiat_curve25519_carry_square:
imul rax, [ rsi + 0x18 ], 0x26
mov r10, [ rsi + 0x10 ]
mov r11, r10
shl r11, 0x1
mov r10, [ rsi + 0x20 ]
mov rdx, r10
shl rdx, 0x1
imul r10, [ rsi + 0x20 ], 0x26
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov r12, rdx
shl r12, 0x1
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rax
add r13, r8
adcx r9, r14
mov rdx, 0x1 
shlx rax, [ rsi + 0x8 ], rdx
add r13, rbx
adcx rbp, r9
mov r8, r13
shrd r8, rbp, 51
mov rdx, rax
mulx rbx, rax, [ rsi + 0x0 ]
imul r14, [ rsi + 0x18 ], 0x13
mov rdx, r14
mulx r9, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, rbp, r10
xor rdx, rdx
adox r14, rbp
adox r15, r9
adcx r14, rax
adcx rbx, r15
add r14, r8
adc rbx, 0x0
mov rdx, [ rsi + 0x8 ]
mulx rax, r8, rdx
mov rdx, r14
shrd rdx, rbx, 51
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, rbp, r10
mov rdx, r11
mulx r10, r11, [ rsi + 0x0 ]
add rbp, r8
adcx rax, r15
xor rbx, rbx
adox rbp, r11
adox r10, rax
adcx rbp, r9
adc r10, 0x0
imul r8, [ rsi + 0x20 ], 0x13
mov r9, rbp
shrd r9, r10, 51
xchg rdx, r12
mulx r11, r15, [ rsi + 0x0 ]
xchg rdx, r8
mulx r10, rax, [ rsi + 0x20 ]
mov rdx, r12
mulx rbx, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox rax, r12
adox rbx, r10
mov rdx, [ rsi + 0x8 ]
mulx r12, r10, r8
adcx rax, r15
adcx r11, rbx
mov rdx, [ rsi + 0x0 ]
mulx r15, r8, rcx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rcx, rdx
test al, al
adox rcx, r10
adox r12, rbx
adcx rax, r9
adc r11, 0x0
mov rdx, rax
shrd rdx, r11, 51
xor r9, r9
adox rcx, r8
adox r15, r12
adcx rcx, rdx
adc r15, 0x0
mov r10, 0x7ffffffffffff 
and r13, r10
mov r8, rcx
shrd r8, r15, 51
lea rbx, [r8 + 8 * r8]
lea r12, [r8 + 2 * rbx]
lea r13, [ r13 + r12 ]
and rax, r10
mov [ rdi + 0x18 ], rax
mov rbx, r13
and rbx, r10
and r14, r10
shr r13, 51
lea r13, [ r13 + r14 ]
mov r11, r13
and r11, r10
and rcx, r10
mov [ rdi + 0x20 ], rcx
shr r13, 51
and rbp, r10
lea r13, [ r13 + rbp ]
mov [ rdi + 0x10 ], r13
mov [ rdi + 0x8 ], r11
mov [ rdi + 0x0 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.2182
; seed 1741371291219270 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1222683 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=160, initial num_batches=31): 110581 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09044126727859961
; number reverted permutation / tried permutation: 88607 / 94675 =93.591%
; number reverted decision / tried decision: 80160 / 95324 =84.092%
; validated in 0.327s
