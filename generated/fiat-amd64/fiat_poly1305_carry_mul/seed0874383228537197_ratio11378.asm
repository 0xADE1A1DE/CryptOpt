SECTION .text
	GLOBAL fiat_poly1305_carry_mul
fiat_poly1305_carry_mul:
imul rax, [ rdx + 0x10 ], 0xa
imul r10, [ rdx + 0x8 ], 0xa
imul r11, [ rdx + 0x10 ], 0x5
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, rax
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, r11, r10
mov rdx, [ rcx + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, r10, [ rsi + 0x8 ]
xor rdx, rdx
adox r11, r8
adox r9, rbp
adcx rax, r10
adcx r12, rbx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ rcx + 0x0 ]
xor rdx, rdx
adox r11, r8
adox rbx, r9
mov rdx, [ rsi + 0x0 ]
mulx r10, rbp, [ rcx + 0x8 ]
imul rdx, [ rcx + 0x8 ], 0x2
mov r9, r11
shrd r9, rbx, 44
mulx rbx, r8, [ rsi + 0x8 ]
xor rdx, rdx
adox rax, rbp
adox r10, r12
adcx rax, r9
adc r10, 0x0
mov r12, rax
shrd r12, r10, 43
mov rbp, 0x7ffffffffff 
and rax, rbp
mov rdx, [ rcx + 0x0 ]
mulx r10, r9, [ rsi + 0x10 ]
adox r9, r8
adox rbx, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, r8, [ rcx + 0x10 ]
adcx r9, r8
adcx r10, rbx
add r9, r12
adc r10, 0x0
mov rdx, r9
shrd rdx, r10, 43
and r9, rbp
imul r12, rdx, 0x5
mov rbx, 0xfffffffffff 
and r11, rbx
lea r11, [ r11 + r12 ]
mov r8, r11
and r8, rbx
shr r11, 44
mov [ rdi + 0x0 ], r8
lea r11, [ r11 + rax ]
mov rax, r11
and rax, rbp
mov [ rdi + 0x8 ], rax
shr r11, 43
lea r11, [ r11 + r9 ]
mov [ rdi + 0x10 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.1378
; seed 0874383228537197 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4292 ms on 1000 evaluations.
; Time spent for assembling and measuring (initial batch_size=312, initial num_batches=31): 596 ms
; number of used evaluations: 1000
; Ratio (time for assembling + measure)/(total runtime for 1000 evals): 0.13886300093196646
; number reverted permutation / tried permutation: 393 / 506 =77.668%
; number reverted decision / tried decision: 336 / 493 =68.154%
; validated in 0.182s
