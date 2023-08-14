SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, [ rsi + 0x8 ]
lea r10, [rax + rax]
mov rdx, [ rsi + 0x10 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x0 ]
lea rcx, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov rbx, rdx
shl rbx, 0x1
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rdx
mov rdx, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbp
mov rdx, r10
mulx rbp, r10, [ rsi + 0x10 ]
add r10, r8
adcx r9, rbp
xor r8, r8
adox r13, r10
adox r9, r14
mulx rbp, r14, [ rsi + 0x18 ]
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mulx r15, r8, rcx
adcx rax, r14
adcx rbp, r11
xor rdx, rdx
adox rax, r8
adox r15, rbp
mov r11, r13
shrd r11, r9, 52
mov r9, 0x1000003d10000 
mov rdx, r9
mulx r14, r9, r12
add rax, r11
adc r15, 0x0
add r9, rax
adcx r15, r14
mov rdx, r10
mulx r12, r10, [ rsi + 0x20 ]
mov rdx, rbx
mulx r8, rbx, [ rsi + 0x18 ]
xor rbp, rbp
adox rbx, r10
adox r12, r8
mov r11, 0xfffffffffffff 
mov r14, r9
and r14, r11
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, rdx
mov rdx, 0x30 
bzhi rbp, r14, rdx
shrd r9, r15, 52
xor r15, r15
adox rbx, r9
adox r12, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, r9, rax
mov rdx, rbx
shrd rdx, r12, 52
imul rax, [ rsi + 0x18 ], 0x2
test al, al
adox r10, r9
adox r15, r8
adcx r10, rdx
adc r15, 0x0
mov rdx, rax
mulx r8, rax, [ rsi + 0x20 ]
mov r12, r10
shrd r12, r15, 52
xor r9, r9
adox rax, r12
adox r8, r9
and rbx, r11
shr r14, 48
shl rbx, 4
lea r14, [ r14 + rbx ]
mov rdx, 0x1000003d1 
mulx r12, r15, r14
mov rdx, [ rsi + 0x0 ]
mulx r14, rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, rcx
mov rdx, 0x1000003d10 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, rax
xor rax, rax
adox r15, rbx
adox r14, r12
mov r12, r15
shrd r12, r14, 52
add r9, r12
adc r11, 0x0
mov rbx, 0xfffffffffffff 
and r10, rbx
mulx r12, r14, r10
mov rdx, [ rsi + 0x10 ]
mulx rax, r10, rcx
adox r14, r9
adox r11, r12
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, rdx
adcx rcx, r10
adcx rax, r9
mov rdx, r14
and rdx, rbx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x8 ], rdx
shrd r14, r11, 52
and r13, rbx
adox rcx, r14
mov r10, 0x0 
adox rax, r10
adcx rdi, rcx
adcx rax, rbp
mov rbp, rdi
shrd rbp, rax, 52
lea rbp, [ rbp + r13 ]
mov r11, 0x1000003d10000 
mov rdx, r11
mulx r9, r11, r8
xor r8, r8
adox r11, rbp
adox r9, r8
and r15, rbx
mov [ r12 + 0x0 ], r15
mov r10, r11
shrd r10, r9, 52
add r10, [ rsp - 0x48 ]
and r11, rbx
and rdi, rbx
mov [ r12 + 0x18 ], r11
mov [ r12 + 0x20 ], r10
mov [ r12 + 0x10 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1066
; seed 1680876173644609 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 798539 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=237, initial num_batches=31): 75575 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09464158920228066
; number reverted permutation / tried permutation: 71845 / 95114 =75.536%
; number reverted decision / tried decision: 66558 / 94885 =70.146%
; validated in 0.2s
