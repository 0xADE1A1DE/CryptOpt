SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 352
imul rax, [ rsi + 0x30 ], 0x2
imul r10, [ rsi + 0x38 ], 0x2
mov rdx, [ rsi + 0x30 ]
mulx rcx, r11, rdx
mov rdx, rax
mulx r8, rax, [ rsi + 0x18 ]
mov r9, 0x1 
mov [ rsp - 0x80 ], rbx
shlx rbx, [ rsi + 0x18 ], r9
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r14
mulx r14, r15, r10
mov rdx, r10
mov [ rsp - 0x38 ], r13
mulx r13, r10, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r12
mov r12, r11
add r12, r10
mov [ rsp - 0x28 ], rbx
mov rbx, r13
adcx rbx, rcx
mov [ rsp - 0x20 ], rbp
mov [ rsp - 0x18 ], r9
mulx r9, rbp, [ rsi + 0x30 ]
mov [ rsp - 0x10 ], r14
mov r14, rbp
mov [ rsp - 0x8 ], r15
xor r15, r15
adox r14, rbp
mov [ rsp + 0x0 ], r8
mov r8, r9
adox r8, r9
mov [ rsp + 0x8 ], rax
mov rax, r12
adcx rax, r11
adcx rcx, rbx
imul r11, [ rsi + 0x28 ], 0x2
add rax, r10
adcx r13, rcx
imul r10, [ rsi + 0x10 ], 0x2
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], r13
mulx r13, r15, r10
mov rdx, r11
mov [ rsp + 0x18 ], r13
mulx r13, r11, [ rsi + 0x10 ]
mov [ rsp + 0x20 ], r15
mov [ rsp + 0x28 ], r13
mulx r13, r15, [ rsi + 0x8 ]
mov [ rsp + 0x30 ], r13
mov [ rsp + 0x38 ], r15
mulx r15, r13, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r15
mov [ rsp + 0x48 ], r13
mulx r13, r15, [ rsi + 0x20 ]
add rbp, r15
mov [ rsp + 0x50 ], r11
mov r11, r13
adcx r11, r9
xor r9, r9
adox r14, r15
adox r13, r8
imul r8, [ rsi + 0x8 ], 0x2
xchg rdx, r8
mulx r9, r15, [ rsi + 0x0 ]
add rbp, [ rsp + 0x8 ]
adcx r11, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], r9
mov [ rsp + 0x60 ], r15
mulx r15, r9, rdx
add r14, [ rsp + 0x8 ]
adcx r13, [ rsp + 0x0 ]
add r12, r9
mov rdx, r15
adcx rdx, rbx
test al, al
adox rbp, [ rsp - 0x8 ]
adox r11, [ rsp - 0x10 ]
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], r11
mov [ rsp + 0x70 ], rbp
mulx rbp, r11, r8
adcx r12, r11
mov rdx, rbp
adcx rdx, rbx
add rax, r9
adcx r15, [ rsp + 0x10 ]
xor r8, r8
adox r12, [ rsp - 0x18 ]
adox rdx, [ rsp - 0x20 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, rdx
adcx rax, r11
adcx rbp, r15
mov rdx, [ rsi + 0x8 ]
mulx r15, r11, rcx
add rax, [ rsp - 0x18 ]
adcx rbp, [ rsp - 0x20 ]
test al, al
adox rax, rbx
adox r8, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, rbx, [ rsp - 0x28 ]
adcx r12, r11
mov rdx, r15
adcx rdx, r9
test al, al
adox rax, r11
adox r15, r8
imul r9, [ rsi + 0x20 ], 0x2
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], r12
mulx r12, r8, r9
test al, al
adox rax, rbx
adox rbp, r15
adcx rax, r8
adcx r12, rbp
mov rdx, [ rsi + 0x20 ]
mulx r15, rbx, rcx
mov rdx, r10
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r11
mulx r11, rbp, r9
mov rdx, rbx
test al, al
adox rdx, [ rsp - 0x30 ]
adox r15, [ rsp - 0x38 ]
mov rbx, rdx
adcx rbx, rbp
adcx r11, r15
xor rbp, rbp
adox rbx, [ rsp + 0x50 ]
adox r11, [ rsp + 0x28 ]
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r12
mov [ rsp + 0x90 ], rax
mulx rax, r12, [ rsp - 0x28 ]
adcx rbp, r10
adcx r8, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, r10, rcx
xor rdx, rdx
adox rbp, r12
adox rax, r8
mov rdx, [ rsi + 0x8 ]
mulx r8, r12, rdi
adcx rbx, r12
adcx r8, r11
mov rdx, rcx
mulx r11, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], r11
mulx r11, r12, rdx
mov rdx, 0xffffffffffffff 
mov [ rsp + 0xa0 ], rcx
mov rcx, rbp
and rcx, rdx
adox rbx, r10
adox r15, r8
mov rdx, [ rsi + 0x20 ]
mulx r8, r10, rdi
adcx r14, [ rsp - 0x8 ]
adcx r13, [ rsp - 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], rcx
mulx rcx, rdi, rdx
mov rdx, 0xffffffffffffff 
mov [ rsp + 0xb0 ], r8
mov r8, rbx
and r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb8 ], r8
mov [ rsp + 0xc0 ], r10
mulx r10, r8, [ rsp - 0x28 ]
adox r14, r8
adox r10, r13
mov rdx, r9
mulx r13, r9, [ rsi + 0x8 ]
mov r8, r12
adcx r8, r12
mov [ rsp + 0xc8 ], r10
mov r10, r11
adcx r10, r11
add r8, rdi
mov [ rsp + 0xd0 ], r14
mov r14, rcx
adcx r14, r10
add r8, [ rsp + 0xc0 ]
adcx r14, [ rsp + 0xb0 ]
mov r10, r9
test al, al
adox r10, [ rsp + 0xd0 ]
adox r13, [ rsp + 0xc8 ]
adcx r8, [ rsp + 0xa0 ]
adcx r14, [ rsp + 0x98 ]
add r12, rdi
adcx rcx, r11
xor r11, r11
adox r12, [ rsp + 0xc0 ]
adox rcx, [ rsp + 0xb0 ]
adcx r12, [ rsp + 0xa0 ]
adcx rcx, [ rsp + 0x98 ]
shrd rbp, rax, 56
mov rax, rbp
add rax, [ rsp + 0x90 ]
mov rdi, [ rsp + 0x88 ]
adc rdi, 0x0
shrd rbx, r15, 56
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], r13
mulx r13, r11, r15
mov rdx, rbx
xor r15, r15
adox rdx, rax
adox rdi, r15
mov rax, 0x38 
bzhi r15, rdx, rax
adox r12, r9
adox rbp, rcx
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx rax, r9, rdx
add r8, r9
adcx rax, r14
shrd rcx, rdi, 56
mov rdx, [ rsp + 0x60 ]
mov r14, rdx
add r14, [ rsp + 0x70 ]
mov rdi, [ rsp + 0x58 ]
adcx rdi, [ rsp + 0x68 ]
xor rdx, rdx
adox r8, r11
adox r13, rax
mov rdx, [ rsi + 0x0 ]
mulx r9, r11, rdx
mov rdx, r11
adcx rdx, [ rsp + 0x78 ]
adcx r9, [ rsp + 0x80 ]
add rbx, rdx
adc r9, 0x0
mov rax, rbx
shrd rax, r9, 56
mov r11, 0xffffffffffffff 
and rbx, r11
adox r10, [ rsp + 0x48 ]
mov rdx, [ rsp + 0x40 ]
adox rdx, [ rsp + 0xd8 ]
adcx r10, rcx
adc rdx, 0x0
mov rcx, r10
shrd rcx, rdx, 56
xor r9, r9
adox r14, rax
adox rdi, r9
adcx r8, [ rsp + 0x38 ]
adcx r13, [ rsp + 0x30 ]
mov rax, r14
shrd rax, rdi, 56
xor rdx, rdx
adox r8, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
adcx r8, rcx
adc r13, 0x0
mov r9, r8
shrd r9, r13, 56
add r9, [ rsp + 0xb8 ]
and r8, r11
mov rcx, r9
and rcx, r11
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x30 ], r8
mov [ rdi + 0x38 ], rcx
shr r9, 56
lea rbx, [ rbx + r9 ]
add r12, [ rsp + 0x20 ]
adcx rbp, [ rsp + 0x18 ]
test al, al
adox r12, rax
adox rbp, rdx
mov rax, r12
shrd rax, rbp, 56
and r14, r11
mov r13, rbx
shr r13, 56
lea r13, [ r13 + r14 ]
add rax, [ rsp + 0xa8 ]
mov r8, rax
shr r8, 56
and rax, r11
mov [ rdi + 0x8 ], r13
mov [ rdi + 0x18 ], rax
lea r15, [ r15 + r9 ]
lea r8, [ r8 + r15 ]
and r12, r11
mov rcx, r8
shr rcx, 56
and r10, r11
and rbx, r11
mov [ rdi + 0x0 ], rbx
and r8, r11
lea rcx, [ rcx + r10 ]
mov [ rdi + 0x20 ], r8
mov [ rdi + 0x10 ], r12
mov [ rdi + 0x28 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 352
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.0769
; seed 0803667453772220 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5380314 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=72, initial num_batches=31): 175041 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03253360305736803
; number reverted permutation / tried permutation: 75223 / 94894 =79.271%
; number reverted decision / tried decision: 71535 / 95105 =75.217%
; validated in 3.152s
