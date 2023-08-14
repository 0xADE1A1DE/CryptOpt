SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x8 ]
mov rdx, r11
shl rdx, 0x1
mulx rcx, r11, [ rsi + 0x10 ]
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
shl rbp, 0x1
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov r12, rdx
shl r12, 0x1
mov rdx, r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x20 ]
xchg rdx, r8
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], rbx
mov rbx, 0x1000003d10 
xchg rdx, rax
mov [ rsp - 0x38 ], r9
mov [ rsp - 0x30 ], r15
mulx r15, r9, rbx
test al, al
adox r11, r12
adox r13, rcx
adcx r9, r11
adcx r13, r15
mov rcx, r9
shrd rcx, r13, 52
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, rdx
test al, al
adox r12, rdi
adox rbp, r15
mov rdx, 0x1000003d10000 
mulx r11, rdi, r10
adcx r12, r14
adcx rbp, [ rsp - 0x30 ]
xor r14, r14
adox r12, rcx
adox rbp, r14
adcx rdi, r12
adcx rbp, r11
mov r13, 0xfffffffffffff 
mov rcx, rdi
and rcx, r13
mov r15, [ rsi + 0x10 ]
lea r10, [r15 + r15]
mov rdx, r10
mulx r15, r10, [ rsi + 0x20 ]
and r9, r13
mov r11, 0xffffffffffff 
mov r12, rcx
and r12, r11
shr rcx, 48
mulx r11, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx rbx, r13, rax
shrd rdi, rbp, 52
xor rdx, rdx
adox r14, r13
adox rbx, r11
adcx r14, rdi
adc rbx, 0x0
mov rax, 0xfffffffffffff 
mov rbp, r14
and rbp, rax
shl rbp, 4
lea rcx, [ rcx + rbp ]
shrd r14, rbx, 52
mov r11, 0x1000003d1 
mov rdx, rcx
mulx r13, rcx, r11
xor rdi, rdi
adox rcx, [ rsp - 0x38 ]
adox r13, [ rsp - 0x40 ]
mov rbx, rcx
and rbx, rax
shrd rcx, r13, 52
mov rdx, [ rsi + 0x18 ]
mulx r13, rbp, rdx
test al, al
adox rbp, r10
adox r15, r13
adcx rbp, r14
adc r15, 0x0
mov rdx, rbp
and rdx, rax
shrd rbp, r15, 52
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x0 ], rbx
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r13, rbx, r8
mov rdx, [ rsp - 0x48 ]
mulx rdi, r15, [ rsi + 0x20 ]
xor rdx, rdx
adox r15, rbp
adox rdi, rdx
mov rbp, 0x1000003d10 
mov rdx, rbp
mulx r11, rbp, r14
adcx rbx, rcx
adc r13, 0x0
test al, al
adox rbp, rbx
adox r13, r11
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, rdx
mov rdx, rbp
and rdx, rax
shrd rbp, r13, 52
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r13, rbx, r8
test al, al
adox rcx, rbx
adox r13, r14
adcx rcx, rbp
adc r13, 0x0
mov rdx, 0x1000003d10 
mulx r14, r8, r15
xor r15, r15
adox r8, rcx
adox r13, r14
mov [ r10 + 0x8 ], r11
mov r11, r8
shrd r11, r13, 52
lea r11, [ r11 + r9 ]
mov r9, 0x1000003d10000 
mov rdx, r9
mulx rbp, r9, rdi
xor rbx, rbx
adox r9, r11
adox rbp, rbx
mov r15, r9
and r15, rax
mov [ r10 + 0x18 ], r15
shrd r9, rbp, 52
lea r9, [ r9 + r12 ]
mov [ r10 + 0x20 ], r9
and r8, rax
mov [ r10 + 0x10 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0016
; seed 2072745470990847 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 998983 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=204, initial num_batches=31): 85662 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0857492069434615
; number reverted permutation / tried permutation: 80266 / 94914 =84.567%
; number reverted decision / tried decision: 68802 / 95085 =72.358%
; validated in 0.289s
