SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
xor rdx, rdx
adox rax, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rcx, [ rsi + 0x0 ]
adox rcx, r10
adox r8, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
adcx rbp, rcx
adox r10, r9
adcx r12, r8
mov rdx, 0x0 
mov r9, rdx
adcx r9, r10
adox rbx, rdx
mov rcx, -0x3 
inc rcx
adox r11, r11
adox rax, rax
mov rdx, [ rsi + 0x0 ]
mulx r10, r8, rdx
mov rdx, 0x0 
mov [ rsp - 0x68 ], r13
mov r13, rdx
adcx r13, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, rbx, rdx
adox rbp, rbp
adox r12, r12
setc dl
clc
adcx r10, r11
mov r11b, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx rcx, r15, rdx
adcx rbx, rax
adcx r14, rbp
adcx r15, r12
adox r9, r9
adcx rcx, r9
adox r13, r13
movzx rdx, r11b
mov rax, 0x0 
adox rdx, rax
movzx rbp, r11b
lea rbp, [ rbp + rdx ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r11, rdx
adcx r11, r13
mov rdx, 0x26 
mulx r13, r9, rcx
adcx rbp, r12
mulx r12, rcx, r15
xor r15, r15
adox rcx, r8
mulx r8, rax, r11
adcx r9, r10
adox r12, r9
adcx rax, rbx
mulx rbx, r10, rbp
adcx r10, r14
adox r13, rax
adox r8, r10
adcx rbx, r15
adox rbx, r15
mulx r11, r14, rbx
xor r11, r11
adox r14, rcx
mov r15, r11
adox r15, r12
mov rbp, r11
adox rbp, r13
mov rcx, r11
adox rcx, r8
mov [ rdi + 0x10 ], rbp
mov [ rdi + 0x18 ], rcx
mov r9, r11
cmovo r9, rdx
adcx r14, r9
mov [ rdi + 0x8 ], r15
mov [ rdi + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.3441
; seed 0045591046683496 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 891867 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=187, initial num_batches=31): 98922 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11091564100925362
; number reverted permutation / tried permutation: 85092 / 95092 =89.484%
; number reverted decision / tried decision: 51938 / 94907 =54.725%
; validated in 0.495s
