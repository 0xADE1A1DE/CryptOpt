SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
imul rax, [ rsi + 0x0 ], 0x2
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x18 ]
lea r9, [rdx + rdx]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
xor rdx, rdx
adox rcx, rbp
adox r12, r8
mov rdx, [ rsi + 0x20 ]
mulx rbp, r8, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rax
adcx r13, r15
adcx rdi, r14
mov rdx, 0x1000003d10 
mulx r15, r14, r10
test al, al
adox r14, r13
adox rdi, r15
mov r10, r14
shrd r10, rdi, 52
add rcx, r8
adcx rbp, r12
mov r12, 0x1000003d10000 
mov rdx, r11
mulx r8, r11, r12
mov rdx, 0xfffffffffffff 
and r14, rdx
adox rcx, r10
mov r13, 0x0 
adox rbp, r13
adcx r11, rcx
adcx rbp, r8
mov r15, r11
and r15, rdx
shrd r11, rbp, 52
mov rdi, [ rsi + 0x10 ]
lea r10, [rdi + rdi]
mov rdx, [ rsi + 0x20 ]
mulx r8, rdi, rbx
mov rdx, [ rsi + 0x18 ]
mulx rcx, rbx, r10
test al, al
adox rbx, rdi
adox r8, rcx
mov rdx, [ rsi + 0x20 ]
mulx rdi, rbp, r10
adcx rbx, r11
adc r8, 0x0
mov rdx, rbx
shrd rdx, r8, 52
mov r11, 0xfffffffffffff 
and rbx, r11
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, rdx
mov rdx, r15
shr rdx, 48
add rcx, rbp
adcx rdi, r8
test al, al
adox rcx, r10
adox rdi, r13
mov rbp, rcx
shrd rbp, rdi, 52
and rcx, r11
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mulx rdi, r8, r9
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, rdx
adox r8, rbp
mov rdx, 0x0 
adox rdi, rdx
shl rbx, 4
lea r10, [ r10 + rbx ]
mov rdx, [ rsi + 0x8 ]
mulx rbx, rbp, rax
mov rdx, 0x1000003d1 
mulx r12, r11, r10
xor r10, r10
adox r11, r9
adox r13, r12
mov r9, r11
shrd r9, r13, 52
mov r12, 0x34 
bzhi r10, r11, r12
mov rdx, rax
mulx r11, rax, [ rsi + 0x10 ]
mov rdx, 0x1000003d10 
mulx r12, r13, rcx
adox rbp, r9
mov rcx, 0x0 
adox rbx, rcx
test al, al
adox r13, rbp
adox rbx, r12
mov rdx, [ rsi + 0x8 ]
mulx r12, r9, rdx
adcx r9, rax
adcx r11, r12
mov rdx, r13
shrd rdx, rbx, 52
xor rax, rax
adox r9, rdx
adox r11, rax
mov rcx, 0x1000003d10 
mov rdx, rcx
mulx rbp, rcx, r8
adcx rcx, r9
adcx r11, rbp
mov r8, rcx
shrd r8, r11, 52
lea r8, [ r8 + r14 ]
mov r14, 0xfffffffffffff 
and rcx, r14
mov rbx, 0x1000003d10000 
mov rdx, rdi
mulx r12, rdi, rbx
adox rdi, r8
adox r12, rax
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], rcx
mov rbp, rdi
and rbp, r14
mov [ r9 + 0x18 ], rbp
mov r11, 0xffffffffffff 
and r15, r11
and r13, r14
mov [ r9 + 0x8 ], r13
shrd rdi, r12, 52
lea rdi, [ rdi + r15 ]
mov [ r9 + 0x20 ], rdi
mov [ r9 + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.0490
; seed 0544033129353537 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 990747 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=204, initial num_batches=31): 84643 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08543351632656974
; number reverted permutation / tried permutation: 80481 / 94660 =85.021%
; number reverted decision / tried decision: 69281 / 95339 =72.668%
; validated in 0.288s
