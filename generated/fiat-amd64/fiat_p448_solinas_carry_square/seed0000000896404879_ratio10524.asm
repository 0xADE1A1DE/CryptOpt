SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 376
mov rax, [ rsi + 0x38 ]
lea r10, [rax + rax]
mov rdx, [ rsi + 0x38 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, r10
mov rdx, [ rsi + 0x30 ]
mov r9, rdx
shl r9, 0x1
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, r9
mov [ rsp - 0x70 ], r12
mulx r12, r9, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov r13, rax
add r13, rbx
mov [ rsp - 0x60 ], r14
mov r14, rbp
adcx r14, r11
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], r9
mulx r9, r12, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r9
mov [ rsp - 0x30 ], r12
mulx r12, r9, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], r15
mulx r15, rdi, [ rsi + 0x0 ]
mov [ rsp - 0x18 ], r15
xor r15, r15
adox r13, r9
mov [ rsp - 0x10 ], rdi
mov rdi, r12
adox rdi, r14
mov r14, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rdi
mulx rdi, r15, rdx
mov rdx, 0x1 
mov [ rsp + 0x0 ], rdi
shlx rdi, [ rsi + 0x8 ], rdx
mov rdx, rax
adcx rdx, rax
adcx r11, r11
test al, al
adox rdx, rbx
adox rbp, r11
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x8 ], rdi
mov [ rsp + 0x10 ], r11
mulx r11, rdi, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r15
mulx r15, rbx, r10
mov rdx, r14
mov [ rsp + 0x28 ], r13
mulx r13, r14, [ rsi + 0x28 ]
adcx r14, rbx
adcx r15, r13
xor rdx, rdx
adox rax, r9
adox r12, rbp
mov rdx, [ rsi + 0x30 ]
mulx rbp, r9, rdx
mov rdx, r9
adcx rdx, rcx
mov rbx, r8
adcx rbx, rbp
mov r13, [ rsi + 0x28 ]
mov [ rsp + 0x30 ], r15
lea r15, [r13 + r13]
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r14
mov [ rsp + 0x40 ], rbx
mulx rbx, r14, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], rbx
mov [ rsp + 0x50 ], r14
mulx r14, rbx, r15
add rax, rdi
mov rdx, r11
adcx rdx, r12
mov r12, rdi
test al, al
adox r12, [ rsp + 0x28 ]
adox r11, [ rsp - 0x8 ]
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], r11
mov [ rsp + 0x60 ], r12
mulx r12, r11, rdx
mov rdx, r13
adcx rdx, r11
mov [ rsp + 0x68 ], rdi
mov rdi, r12
adcx rdi, [ rsp + 0x40 ]
xchg rdx, r15
mov [ rsp + 0x70 ], rax
mov [ rsp + 0x78 ], r14
mulx r14, rax, [ rsi + 0x0 ]
test al, al
adox r13, r9
adox rbp, [ rsp + 0x40 ]
adcx r13, rcx
adcx r8, rbp
add r13, r11
adcx r12, r8
add r15, [ rsp + 0x50 ]
adcx rdi, [ rsp + 0x48 ]
xchg rdx, r10
mulx r9, rcx, [ rsi + 0x30 ]
xor r11, r11
adox r15, [ rsp - 0x20 ]
adox rdi, [ rsp - 0x28 ]
mov rbp, rcx
adcx rbp, rcx
mov r8, r9
adcx r8, r9
add rcx, rbx
adcx r9, [ rsp + 0x78 ]
test al, al
adox rbp, rbx
adox r8, [ rsp + 0x78 ]
mov rbx, [ rsi + 0x10 ]
mov r11, rbx
shl r11, 0x1
add rbp, [ rsp - 0x30 ]
adcx r8, [ rsp - 0x38 ]
xchg rdx, r11
mov [ rsp + 0x80 ], r14
mulx r14, rbx, [ rsi + 0x8 ]
test al, al
adox r13, [ rsp + 0x50 ]
adox r12, [ rsp + 0x48 ]
mov [ rsp + 0x88 ], rax
mov rax, rbx
adcx rax, [ rsp + 0x38 ]
adcx r14, [ rsp + 0x30 ]
xchg rdx, r11
mov [ rsp + 0x90 ], r9
mulx r9, rbx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], rcx
mov rcx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r8
mov r8, rcx
shl r8, 0x1
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], rbp
mov [ rsp + 0xb0 ], r14
mulx r14, rbp, r8
mov rdx, rbp
test al, al
adox rdx, [ rsp + 0x38 ]
adox r14, [ rsp + 0x30 ]
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb8 ], rax
mov [ rsp + 0xc0 ], rdi
mulx rdi, rax, r10
adcx r13, [ rsp - 0x20 ]
adcx r12, [ rsp - 0x28 ]
add r13, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x0 ]
xor rdx, rdx
adox rbp, rax
adox rdi, r14
adcx rbp, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x8 ]
test al, al
adox r13, rcx
mov rdx, r14
adox rdx, r12
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc8 ], r13
mulx r13, r12, rdx
mov rdx, r8
mov [ rsp + 0xd0 ], rax
mulx rax, r8, [ rsi + 0x10 ]
adcx rbp, rbx
adcx r9, rdi
xor rbx, rbx
adox r15, rcx
adox r14, [ rsp + 0xc0 ]
mov rdi, r12
adcx rdi, [ rsp + 0x70 ]
adcx r13, [ rsp + 0x68 ]
mov rcx, [ rsi + 0x18 ]
mov r12, rcx
shl r12, 0x1
xor rcx, rcx
adox rdi, r8
adox rax, r13
mov rbx, 0x38 
bzhi r8, rbp, rbx
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbx, rcx, r12
mov rdx, r12
mov [ rsp + 0xd8 ], r8
mulx r8, r12, [ rsi + 0x0 ]
shrd rbp, r9, 56
xchg rdx, r10
mov [ rsp + 0xe0 ], r14
mulx r14, r9, [ rsi + 0x8 ]
mov rdx, r12
test al, al
adox rdx, [ rsp + 0xb8 ]
adox r8, [ rsp + 0xb0 ]
adcx rdi, r9
adcx r14, rax
mov rax, [ rsp + 0xa8 ]
add rax, [ rsp + 0x18 ]
mov r12, [ rsp + 0xa0 ]
adcx r12, [ rsp + 0x10 ]
mov r9, rcx
add r9, [ rsp + 0xc8 ]
adcx rbx, [ rsp + 0xd0 ]
mov rcx, 0x38 
mov [ rsp + 0xe8 ], r14
bzhi r14, rdx, rcx
shrd rdx, r8, 56
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], r14
mulx r14, rcx, r13
test al, al
adox r9, rcx
adox r14, rbx
mov rdx, [ rsi + 0x8 ]
mulx rcx, rbx, r13
adcx r9, r8
adc r14, 0x0
mov rdx, [ rsi + 0x10 ]
mulx r8, r13, r10
test al, al
adox rax, r13
adox r8, r12
mov rdx, rbp
adcx rdx, r9
adc r14, 0x0
mov r10, [ rsp + 0x98 ]
add r10, [ rsp - 0x30 ]
mov r12, [ rsp + 0x90 ]
adcx r12, [ rsp - 0x38 ]
xor r9, r9
adox rax, rbx
adox rcx, r8
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, r13, rdx
adcx rax, [ rsp + 0x88 ]
adcx rcx, [ rsp + 0x80 ]
mov rdx, 0xffffffffffffff 
mov r9, rbx
and r9, rdx
adox r15, r13
adox r8, [ rsp + 0xe0 ]
adcx rbp, r15
adc r8, 0x0
add rdi, [ rsp - 0x10 ]
mov r13, [ rsp - 0x18 ]
adcx r13, [ rsp + 0xe8 ]
shrd rbx, r14, 56
xor r14, r14
adox rax, rbx
adox rcx, r14
mov r15, rax
shrd r15, rcx, 56
add rdi, r15
adc r13, 0x0
mov rbx, rdi
shrd rbx, r13, 56
add r10, [ rsp + 0x18 ]
adcx r12, [ rsp + 0x10 ]
mov rdx, [ rsp + 0x8 ]
mulx r15, rcx, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, rcx
adox r15, r12
mov r14, rbp
shrd r14, r8, 56
add r10, r14
adc r15, 0x0
add rbx, [ rsp + 0xd8 ]
mov r8, rbx
shr r8, 56
mov r13, 0xffffffffffffff 
and rbx, r13
and rdi, r13
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x38 ], rbx
mov [ r12 + 0x30 ], rdi
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, rdx
and rbp, r13
lea rbp, [ rbp + r8 ]
mov rdx, r11
mulx rbx, r11, [ rsi + 0x0 ]
mov rdx, rcx
adox rdx, [ rsp + 0x60 ]
adox r14, [ rsp + 0x58 ]
mov rdi, rbp
shr rdi, 56
mov rcx, r10
shrd rcx, r15, 56
add rdx, r11
adcx rbx, r14
add rdx, rcx
adc rbx, 0x0
mov r15, rdx
shrd r15, rbx, 56
add r15, [ rsp + 0xf0 ]
and rax, r13
mov r11, r15
shr r11, 56
lea r9, [ r9 + r8 ]
lea r11, [ r11 + r9 ]
mov r8, r11
shr r8, 56
lea r8, [ r8 + rax ]
mov [ r12 + 0x28 ], r8
and r15, r13
mov [ r12 + 0x18 ], r15
and r10, r13
and rbp, r13
lea rdi, [ rdi + r10 ]
mov [ r12 + 0x0 ], rbp
mov [ r12 + 0x8 ], rdi
and rdx, r13
and r11, r13
mov [ r12 + 0x20 ], r11
mov [ r12 + 0x10 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 376
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.0524
; seed 2729189833502853 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5270313 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=74, initial num_batches=31): 202262 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03837760679489055
; number reverted permutation / tried permutation: 73997 / 94544 =78.267%
; number reverted decision / tried decision: 64265 / 95455 =67.325%
; validated in 2.57s
