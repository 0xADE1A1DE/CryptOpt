SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
imul rax, [ rdx + 0x8 ], 0x13
imul r10, [ rdx + 0x20 ], 0x13
imul r11, [ rdx + 0x10 ], 0x13
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rcx + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rcx + 0x20 ]
imul rdx, [ rcx + 0x18 ], 0x13
mov [ rsp - 0x70 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x38 ], r9
mov [ rsp - 0x30 ], r8
mulx r8, r9, rax
mov rdx, [ rcx + 0x0 ]
mov [ rsp - 0x28 ], r14
mulx r14, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r14
mov [ rsp - 0x18 ], rax
mulx rax, r14, [ rcx + 0x10 ]
xor rdx, rdx
adox r9, rbp
adox rbx, r8
adcx r9, r15
adcx rdi, rbx
xor r15, r15
adox r9, r13
adox rdi, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r13, [ rcx + 0x0 ]
adcx r9, r13
adcx rbp, rdi
mov rdx, r12
mulx r8, r12, [ rsi + 0x18 ]
mov rbx, r9
shrd rbx, rbp, 51
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbp, r13, r11
mov rdx, [ rcx + 0x8 ]
mulx r15, r11, [ rsi + 0x0 ]
xor rdx, rdx
adox r13, r12
adox r8, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, r12, r10
adcx r13, r12
adcx rbp, r8
xor rdx, rdx
adox r13, [ rsp - 0x30 ]
adox rbp, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, r10
adcx r13, r11
adcx r15, rbp
xor rdx, rdx
adox r13, rbx
adox r15, rdx
mov rbx, r13
shrd rbx, r15, 51
mov rdx, rdi
mulx r11, rdi, [ rsi + 0x20 ]
xor rdx, rdx
adox rdi, r8
adox r12, r11
mov rdx, [ rcx + 0x8 ]
mulx r8, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r11, r15, [ rcx + 0x0 ]
adcx rdi, r15
adcx r11, r12
test al, al
adox rdi, rbp
adox r8, r11
mov rdx, [ rsi + 0x10 ]
mulx rbp, r12, [ rcx + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r15, [ rcx + 0x0 ]
mov rdx, r10
mov [ rsp - 0x10 ], rbx
mulx rbx, r10, [ rsi + 0x20 ]
adcx r10, r15
adcx r11, rbx
xor rdx, rdx
adox r10, r12
adox rbp, r11
mov rdx, [ rsi + 0x0 ]
mulx r15, r12, [ rcx + 0x10 ]
adcx rdi, r12
adcx r15, r8
mov rdx, [ rcx + 0x18 ]
mulx rbx, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, r14
adox rax, rbp
adcx r10, r8
adcx rbx, rax
mov rdx, [ rsi + 0x8 ]
mulx r11, r14, [ rcx + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, [ rcx + 0x8 ]
xor rdx, rdx
adox rdi, [ rsp - 0x10 ]
adox r15, rdx
mov r8, rbp
adcx r8, [ rsp - 0x18 ]
adcx r12, [ rsp - 0x20 ]
mov rdx, [ rcx + 0x10 ]
mulx rbp, rax, [ rsi + 0x10 ]
mov rdx, rdi
shrd rdx, r15, 51
xor r15, r15
adox r10, rdx
adox rbx, r15
mov rdx, r10
shrd rdx, rbx, 51
add r8, rax
adcx rbp, r12
mov r12, 0x7ffffffffffff 
and r9, r12
adox r8, r14
adox r11, rbp
and r13, r12
adox r8, [ rsp - 0x40 ]
adox r11, [ rsp - 0x48 ]
adcx r8, rdx
adc r11, 0x0
mov r14, r8
shrd r14, r11, 51
and r8, r12
imul rax, r14, 0x13
lea r9, [ r9 + rax ]
mov rbx, r9
shr rbx, 51
and r9, r12
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r9
lea rbx, [ rbx + r13 ]
and rdi, r12
mov rbp, rbx
and rbp, r12
shr rbx, 51
lea rbx, [ rbx + rdi ]
and r10, r12
mov [ rdx + 0x18 ], r10
mov [ rdx + 0x10 ], rbx
mov [ rdx + 0x8 ], rbp
mov [ rdx + 0x20 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1713
; seed 0878859726430798 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 832745 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=202, initial num_batches=31): 68647 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0824345988267717
; number reverted permutation / tried permutation: 69022 / 94808 =72.802%
; number reverted decision / tried decision: 59706 / 95191 =62.722%
; validated in 0.266s
