SECTION .text
	GLOBAL fiat_curve25519_solinas_square
fiat_curve25519_solinas_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x10 ]
xor rdx, rdx
adox r11, r10
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x0 ]
adox r8, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
adcx r10, r8
adox rbx, r9
mov rdx, [ rsi + 0x10 ]
mulx r8, r9, [ rsi + 0x18 ]
adox r9, rbp
mov rdx, 0x0 
adox r8, rdx
adcx rcx, rbx
mov rbp, rdx
adcx rbp, r9
mov rbx, rdx
adcx rbx, r8
mov rdx, [ rsi + 0x8 ]
mulx r8, r9, rdx
mov rdx, -0x2 
inc rdx
adox rax, rax
adox r11, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
setc dl
clc
adcx r13, rax
adox r10, r10
adox rcx, rcx
adcx r9, r11
adox rbp, rbp
adcx r8, r10
adox rbx, rbx
movzx rax, dl
mov r11, 0x0 
adox rax, r11
movzx r10, dl
lea r10, [ r10 + rax ]
mov rdx, [ rsi + 0x10 ]
mulx r11, rax, rdx
adcx rax, rcx
adcx r11, rbp
mov rdx, [ rsi + 0x18 ]
mulx rbp, rcx, rdx
adcx rcx, rbx
adcx r10, rbp
mov rdx, 0x26 
mulx rbp, rbx, r11
xor r11, r11
adox rbx, r13
mulx r11, r13, rcx
adox r13, r9
mulx rcx, r9, rax
adcx r9, r12
mulx rax, r12, r10
adox r12, r8
mov r8, 0x0 
adox rax, r8
adcx rcx, rbx
adcx rbp, r13
adcx r11, r12
adc rax, 0x0
mulx rbx, r10, rax
test al, al
adox r10, r9
mov rbx, r8
adox rbx, rcx
mov r13, r8
adox r13, rbp
mov r9, r8
adox r9, r11
mov r12, r8
cmovo r12, rdx
adcx r10, r12
mov [ rdi + 0x10 ], r13
mov [ rdi + 0x18 ], r9
mov [ rdi + 0x0 ], r10
mov [ rdi + 0x8 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.3294
; seed 0174966606736386 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 659861 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=191, initial num_batches=31): 77226 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.11703373892380364
; number reverted permutation / tried permutation: 75253 / 95240 =79.014%
; number reverted decision / tried decision: 51197 / 94759 =54.029%
; validated in 0.483s
