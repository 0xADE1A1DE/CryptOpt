SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
xor rdx, rdx
adox rax, rcx
adox rbx, r10
adox r8, rbp
mov rdx, [ rsi + 0x8 ]
mulx rcx, r10, [ rsi + 0x10 ]
adcx r10, rbx
adcx rcx, r8
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rsi + 0x10 ]
adox rbp, r9
mov rdx, 0x0 
adox rbx, rdx
mov r9, rdx
adcx r9, rbp
mov r8, -0x3 
inc r8
adox r11, r11
adox rax, rax
mov rbp, rdx
adcx rbp, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, rbx, rdx
setc dl
clc
adcx r12, r11
adox r10, r10
adox rcx, rcx
adox r9, r9
mov r11b, dl
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r8, r15, rdx
adcx r13, rax
adcx r14, r10
adcx r15, rcx
adcx r8, r9
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, rdx
mov rdx, 0x26 
mulx r9, rcx, r8
adox rbp, rbp
adcx rax, rbp
movzx r8, r11b
mov rbp, 0x0 
adox r8, rbp
movzx rbp, r11b
lea rbp, [ rbp + r8 ]
adcx rbp, r10
mulx r10, r11, rbp
mulx rbp, r8, rax
xor rax, rax
adox rcx, r12
adox r8, r13
adox r11, r14
mulx r13, r12, r15
adcx r12, rbx
adcx r13, rcx
adcx r9, r8
adcx rbp, r11
adox r10, rax
adc r10, 0x0
mulx r14, rbx, r10
xor r14, r14
adox rbx, r12
mov rax, r14
adox rax, r13
mov [ rdi + 0x8 ], rax
mov r15, r14
adox r15, r9
mov rcx, r14
adox rcx, rbp
mov r8, r14
cmovo r8, rdx
mov [ rdi + 0x18 ], rcx
adcx rbx, r8
mov [ rdi + 0x0 ], rbx
mov [ rdi + 0x10 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3642
; seed 2989254783486109 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 392424 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=275, initial num_batches=31): 55176 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.14060302122194362
; number reverted permutation / tried permutation: 77156 / 95009 =81.209%
; number reverted decision / tried decision: 57682 / 94990 =60.724%
; validated in 0.238s
