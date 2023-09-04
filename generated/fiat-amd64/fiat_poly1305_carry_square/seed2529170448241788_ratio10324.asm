SECTION .text
	GLOBAL fiat_poly1305_carry_square
fiat_poly1305_carry_square:
imul rax, [ rsi + 0x10 ], 0x14
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, rax
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
add r10, rcx
adcx r8, r11
mov rdx, [ rsi + 0x10 ]
lea r9, [rdx + 4 * rdx]
mov rdx, r9
mulx rax, r9, [ rsi + 0x10 ]
mov r11, [ rsi + 0x8 ]
mov rcx, r11
shl rcx, 0x1
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, rcx
test al, al
adox r9, r11
adox rbx, rax
mov rdx, rcx
mulx rax, rcx, [ rsi + 0x8 ]
mov rdx, r10
shrd rdx, r8, 44
mov r8, [ rsi + 0x10 ]
lea r11, [r8 + r8]
xor r8, r8
adox r9, rdx
adox rbx, r8
mov rdx, 0x2c 
bzhi r8, r10, rdx
mov rdx, r11
mulx r10, r11, [ rsi + 0x0 ]
adox rcx, r11
adox r10, rax
mov rax, r9
shrd rax, rbx, 43
mov rdx, 0x7ffffffffff 
and r9, rdx
adox rcx, rax
mov rbx, 0x0 
adox r10, rbx
mov r11, rcx
shrd r11, r10, 43
lea rax, [r11 + 4 * r11]
lea r8, [ r8 + rax ]
mov r10, r8
shr r10, 44
lea r10, [ r10 + r9 ]
mov r9, r10
shr r9, 43
and rcx, rdx
and r10, rdx
lea r9, [ r9 + rcx ]
mov r11, 0x2c 
bzhi rax, r8, r11
mov [ rdi + 0x10 ], r9
mov [ rdi + 0x0 ], rax
mov [ rdi + 0x8 ], r10
mov rbx, [ rsp - 0x80 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.0324
; seed 2529170448241788 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3314 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=374, initial num_batches=31): 499 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.15057332528666265
; number reverted permutation / tried permutation: 482 / 519 =92.871%
; number reverted decision / tried decision: 417 / 480 =86.875%
; validated in 0.141s
