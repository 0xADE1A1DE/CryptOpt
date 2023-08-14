SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, r11
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
adcx rbx, rcx
adcx rax, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
adcx r12, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, r10, [ rsi + 0x10 ]
adcx rcx, r13
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r10, rax
adox rbx, rbx
adcx r14, r12
mov rax, rdx
adcx rax, rcx
adox r10, r10
mov r13, rdx
adcx r13, rbp
adox r14, r14
adox rax, rax
adox r13, r13
setc r12b
movzx r12, r12b
adox r12, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, rcx, rdx
movzx rdx, r12b
adc rdx, 0x0
xor r12, r12
adox r9, r11
adox rcx, rbx
adox rbp, r10
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, rbx, rdx
adox rbx, r14
adox r10, rax
mov rdx, [ rsi + 0x18 ]
mulx rax, r14, rdx
adox r14, r13
adox r11, rax
mov rdx, 0x26 
mulx rax, r13, r10
adcx r13, r9
mulx r10, r9, rbx
mulx r12, rbx, r14
adcx rbx, rcx
mov rcx, -0x2 
inc rcx
adox r9, r8
mulx r14, r8, r11
adcx r8, rbp
adox r10, r13
adox rax, rbx
adox r12, r8
mov rbp, 0x0 
adcx r14, rbp
adox r14, rbp
mulx r13, r11, r14
test al, al
adox r11, r9
mov r13, rbp
adox r13, r10
mov rbx, rbp
adox rbx, rax
mov r9, rbp
adox r9, r12
mov [ rdi + 0x18 ], r9
mov r8, rbp
cmovo r8, rdx
adcx r11, r8
mov [ rdi + 0x8 ], r13
mov [ rdi + 0x10 ], rbx
mov [ rdi + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.2927
; seed 2985443685071485 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 665627 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=189, initial num_batches=31): 77232 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11602894714306962
; number reverted permutation / tried permutation: 72296 / 94854 =76.218%
; number reverted decision / tried decision: 53555 / 95145 =56.288%
; validated in 0.433s
