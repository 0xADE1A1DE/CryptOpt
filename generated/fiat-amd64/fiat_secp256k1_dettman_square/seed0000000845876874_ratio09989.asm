SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, 0x1 
shlx rdx, [ rsi + 0x8 ], r11
mov rcx, [ rsi + 0x0 ]
lea r8, [rcx + rcx]
mulx r9, rcx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
test al, al
adox r12, rcx
adox r9, r13
mov rdx, r8
mulx rcx, r8, [ rsi + 0x18 ]
xchg rdx, rbp
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
adcx r13, r8
adcx rcx, r14
mov rdx, 0x1000003d10 
mulx r14, r8, rax
test al, al
adox r8, r13
adox rcx, r14
mov rax, r8
shrd rax, rcx, 52
mov rdx, [ rsi + 0x20 ]
mulx r14, r13, rbp
mov rdx, 0x1000003d10000 
mov [ rsp - 0x58 ], r15
mulx r15, rcx, r10
xor r10, r10
adox r12, r13
adox r14, r9
mov r9, [ rsi + 0x10 ]
mov r13, r9
shl r13, 0x1
xor r9, r9
adox r12, rax
adox r14, r9
adcx rcx, r12
adcx r14, r15
mov r10, rcx
shrd r10, r14, 52
mov rdx, [ rsi + 0x20 ]
mulx r15, rax, r13
mov rdx, [ rsi + 0x18 ]
mulx r14, r12, rdx
mov rdx, r13
mulx r9, r13, [ rsi + 0x18 ]
xor rdx, rdx
adox r13, r11
adox rbx, r9
adcx r12, rax
adcx r15, r14
add r13, r10
adc rbx, 0x0
mov r11, 0xfffffffffffff 
mov r10, r13
and r10, r11
and rcx, r11
shl r10, 4
mov rax, rcx
shr rax, 48
lea rax, [ rax + r10 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, rdx
shrd r13, rbx, 52
mov rdx, 0x1000003d1 
mulx r10, rbx, rax
xor rax, rax
adox rbx, r14
adox r9, r10
mov r14, rbx
shrd r14, r9, 52
mov rdx, [ rsi + 0x10 ]
mulx r9, r10, rbp
and rbx, r11
mov rdx, [ rsi + 0x18 ]
mov rax, rdx
shl rax, 0x1
xor rdx, rdx
adox r12, r13
adox r15, rdx
mov rdx, rbp
mulx r13, rbp, [ rsi + 0x8 ]
mov rdx, r12
and rdx, r11
shrd r12, r15, 52
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r11, rax
xor rdx, rdx
adox rbp, r14
adox r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rax, r14, rdx
adcx r14, r10
adcx r9, rax
add r11, r12
adc rdi, 0x0
mov rdx, 0x1000003d10 
mulx r12, r10, r11
mulx r11, rax, r15
mov r15, 0x34 
bzhi rdx, r8, r15
adox rax, rbp
adox r13, r11
mov r8, rax
shrd r8, r13, 52
xor rbp, rbp
adox r14, r8
adox r9, rbp
mov r11, 0xffffffffffff 
and rcx, r11
adox r10, r14
adox r9, r12
mov r12, r10
shrd r12, r9, 52
bzhi r13, r10, r15
mov r8, 0x1000003d10000 
xchg rdx, rdi
mulx r10, r14, r8
lea r12, [ r12 + rdi ]
adox r14, r12
adox r10, rbp
mov rdi, r14
shrd rdi, r10, 52
lea rdi, [ rdi + rcx ]
bzhi rcx, rax, r15
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x8 ], rcx
mov [ rax + 0x0 ], rbx
mov [ rax + 0x20 ], rdi
mov [ rax + 0x10 ], r13
bzhi rbx, r14, r15
mov [ rax + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 0.9989
; seed 3985327685402025 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1060216 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=209, initial num_batches=31): 72746 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06861432010080964
; number reverted permutation / tried permutation: 80274 / 95186 =84.334%
; number reverted decision / tried decision: 69062 / 94813 =72.840%
; validated in 0.209s
