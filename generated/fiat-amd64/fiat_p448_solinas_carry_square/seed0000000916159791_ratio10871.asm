SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 408
mov rax, 0x1 
shlx r10, [ rsi + 0x38 ], rax
mov rdx, [ rsi + 0x38 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
lea r8, [rdx + rdx]
mov rdx, [ rsi + 0x20 ]
lea r9, [rdx + rdx]
mov rdx, [ rsi + 0x30 ]
lea rax, [rdx + rdx]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, r10
mov [ rsp - 0x70 ], r12
mulx r12, r10, [ rsi + 0x28 ]
mov [ rsp - 0x68 ], r13
mov r13, rbx
test al, al
adox r13, r10
mov [ rsp - 0x60 ], r14
mov r14, r12
adox r14, rbp
mov [ rsp - 0x58 ], r15
mov r15, r13
adcx r15, rbx
adcx rbp, r14
mov [ rsp - 0x50 ], rdi
mulx rdi, rbx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], rdi
mulx rdi, r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], rdi
mov [ rsp - 0x28 ], r9
mulx r9, rdi, rdx
mov rdx, r8
mov [ rsp - 0x20 ], r9
mulx r9, r8, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rdi
xor rdi, rdi
adox r15, r10
adox r12, rbp
mulx rbp, r10, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], rbp
mulx rbp, rdi, [ rsi + 0x30 ]
mov [ rsp - 0x8 ], r10
mov r10, rdi
adcx r10, rdi
mov [ rsp + 0x0 ], rbx
mov rbx, rbp
adcx rbx, rbp
mov [ rsp + 0x8 ], r9
mov [ rsp + 0x10 ], r8
mulx r8, r9, [ rsi + 0x18 ]
mov [ rsp + 0x18 ], r8
mov [ rsp + 0x20 ], r9
mulx r9, r8, [ rsi + 0x8 ]
imul rdx, [ rsi + 0x28 ], 0x2
xchg rdx, rax
mov [ rsp + 0x28 ], r9
mov [ rsp + 0x30 ], r8
mulx r8, r9, [ rsi + 0x20 ]
xchg rdx, rax
mov [ rsp + 0x38 ], r8
mov [ rsp + 0x40 ], r9
mulx r9, r8, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r8
mulx r8, r9, [ rsi + 0x0 ]
mov [ rsp + 0x58 ], r8
mov [ rsp + 0x60 ], r9
mulx r9, r8, [ rsi + 0x20 ]
test al, al
adox rdi, r8
mov [ rsp + 0x68 ], rcx
mov rcx, r9
adox rcx, rbp
adcx r10, r8
adcx r9, rbx
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rbx, rax
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x70 ], rcx
mov [ rsp + 0x78 ], rdi
mulx rdi, rcx, rdx
xor rdx, rdx
adox r10, rbx
mov [ rsp + 0x80 ], r11
mov r11, r8
adox r11, r9
adcx r15, rcx
mov r9, rdi
adcx r9, r12
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x88 ], r9
mulx r9, r12, rdx
mov rdx, rbp
mov [ rsp + 0x90 ], r15
mulx r15, rbp, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r15
mov r15, r12
add r15, [ rsp + 0x80 ]
mov [ rsp + 0xa0 ], rbp
mov rbp, r9
adcx rbp, [ rsp + 0x68 ]
mov [ rsp + 0xa8 ], rbp
xor rbp, rbp
adox r10, [ rsp + 0x10 ]
adox r11, [ rsp + 0x8 ]
mov [ rsp + 0xb0 ], r15
mov r15, [ rsp + 0x90 ]
adcx r15, [ rsp + 0x50 ]
mov [ rsp + 0xb8 ], r11
mov r11, [ rsp + 0x88 ]
adcx r11, [ rsp + 0x48 ]
mov [ rsp + 0xc0 ], r10
mov r10, [ rsp + 0x80 ]
mov [ rsp + 0xc8 ], r11
mov r11, r10
mov [ rsp + 0xd0 ], r15
xor r15, r15
adox r11, r10
mov rbp, [ rsp + 0x68 ]
adox rbp, rbp
adcx r11, r12
adcx r9, rbp
mov r10, rbx
add r10, [ rsp + 0x78 ]
adcx r8, [ rsp + 0x70 ]
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mulx rbp, r12, rax
test al, al
adox r10, [ rsp + 0x10 ]
adox r8, [ rsp + 0x8 ]
adcx r12, [ rsp + 0x0 ]
adcx rbp, [ rsp - 0x38 ]
test al, al
adox r13, rcx
adox rdi, r14
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rsp - 0x40 ]
mov rdx, r12
adcx rdx, r14
adcx rcx, rbp
xor r14, r14
adox r13, [ rsp + 0x50 ]
adox rdi, [ rsp + 0x48 ]
mov r15, [ rsi + 0x10 ]
mov r14, r15
shl r14, 0x1
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], r8
mov [ rsp + 0xe0 ], r10
mulx r10, r8, rbx
xor rdx, rdx
adox r15, r8
adox r10, rcx
mov rdx, r14
mulx rbx, r14, [ rsi + 0x8 ]
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe8 ], rdi
mulx rdi, r8, rax
adcx r15, r8
adcx rdi, r10
xor rdx, rdx
adox r11, [ rsp + 0x40 ]
adox r9, [ rsp + 0x38 ]
adcx r12, r14
adcx rbx, rbp
mov rdx, [ rsi + 0x0 ]
mulx r10, rbp, rcx
add r15, [ rsp - 0x8 ]
adcx rdi, [ rsp - 0x10 ]
mov rdx, 0xffffffffffffff 
mov rcx, r15
and rcx, rdx
shrd r15, rdi, 56
mov rdx, [ rsi + 0x0 ]
mulx r8, r14, rdx
test al, al
adox r11, [ rsp + 0x20 ]
adox r9, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xf0 ], rcx
mulx rcx, rdi, rax
mov rdx, rdi
adcx rdx, [ rsp + 0xd0 ]
mov [ rsp + 0xf8 ], r9
mov r9, rcx
adcx r9, [ rsp + 0xc8 ]
mov [ rsp + 0x100 ], r11
mov r11, rdx
mov rdx, [ rsp - 0x48 ]
mov [ rsp + 0x108 ], r10
mov [ rsp + 0x110 ], rbp
mulx rbp, r10, [ rsi + 0x0 ]
add r12, r10
adcx rbp, rbx
xor rbx, rbx
adox r13, rdi
adox rcx, [ rsp + 0xe8 ]
mulx r10, rdi, [ rsi + 0x8 ]
adcx r13, [ rsp + 0x30 ]
adcx rcx, [ rsp + 0x28 ]
mov rbx, r12
shrd rbx, rbp, 56
mov rbp, 0xffffffffffffff 
and r12, rbp
adox r13, r14
adox r8, rcx
adcx r11, [ rsp - 0x18 ]
adcx r9, [ rsp - 0x20 ]
mov r14, r15
add r14, r13
adc r8, 0x0
mulx r13, rcx, [ rsi + 0x10 ]
mov rdx, rcx
xor rbp, rbp
adox rdx, [ rsp + 0xc0 ]
adox r13, [ rsp + 0xb8 ]
adcx r11, [ rsp + 0x30 ]
adcx r9, [ rsp + 0x28 ]
add r11, rdi
adcx r10, r9
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, [ rsp - 0x40 ]
test al, al
adox r11, rcx
adox r9, r10
adcx r11, rbx
adc r9, 0x0
test al, al
adox r15, r11
adox r9, rbp
mov rdx, [ rsi + 0x8 ]
mulx r10, rbx, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x8 ]
lea rcx, [rdx + rdx]
adcx rdi, rbx
adcx r10, r13
mov rdx, r15
shrd rdx, r9, 56
xor r13, r13
adox rdi, [ rsp + 0x60 ]
adox r10, [ rsp + 0x58 ]
adcx rdi, rdx
adc r10, 0x0
mov rdx, [ rsp - 0x40 ]
mulx r11, rbp, [ rsi + 0x10 ]
mov rdx, rcx
mulx r9, rcx, [ rsi + 0x0 ]
mov rbx, rcx
xor rdx, rdx
adox rbx, [ rsp + 0xe0 ]
adox r9, [ rsp + 0xd8 ]
mov r13, r14
shrd r13, r8, 56
add rbx, r13
adc r9, 0x0
mov r8, [ rsp + 0xb0 ]
test al, al
adox r8, [ rsp + 0x40 ]
mov rcx, [ rsp + 0xa8 ]
adox rcx, [ rsp + 0x38 ]
mov r13, rbx
shrd r13, r9, 56
add r8, [ rsp + 0x20 ]
adcx rcx, [ rsp + 0x18 ]
add r8, [ rsp - 0x28 ]
adcx rcx, [ rsp - 0x30 ]
xor r9, r9
adox r8, [ rsp + 0x110 ]
adox rcx, [ rsp + 0x108 ]
adcx r8, r13
adc rcx, 0x0
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, rdx
mov rdx, r13
test al, al
adox rdx, [ rsp + 0x100 ]
adox r9, [ rsp + 0xf8 ]
adcx rdx, rbp
adcx r11, r9
mov rbp, r8
shrd rbp, rcx, 56
xor rcx, rcx
adox rdx, [ rsp + 0xa0 ]
adox r11, [ rsp + 0x98 ]
mov r13, rdi
shrd r13, r10, 56
mov r10, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r9, rax
xor rdx, rdx
adox r10, r9
adox rcx, r11
adcx r10, r13
adc rcx, 0x0
mov rax, r10
shrd rax, rcx, 56
mov r11, 0x38 
bzhi r13, r14, r11
add rax, [ rsp + 0xf0 ]
bzhi r14, rax, r11
shr rax, 56
lea r13, [ r13 + rax ]
bzhi r9, r13, r11
shr r13, 56
bzhi rcx, r15, r11
bzhi r15, r10, r11
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x30 ], r15
lea rbp, [ rbp + r12 ]
bzhi r12, rbx, r11
lea r13, [ r13 + r12 ]
bzhi rbx, rbp, r11
mov [ r10 + 0x38 ], r14
mov [ r10 + 0x18 ], rbx
lea rcx, [ rcx + rax ]
bzhi r14, rdi, r11
mov [ r10 + 0x8 ], r13
shr rbp, 56
lea rbp, [ rbp + rcx ]
bzhi rdi, rbp, r11
shr rbp, 56
mov [ r10 + 0x20 ], rdi
bzhi rax, r8, r11
lea rbp, [ rbp + r14 ]
mov [ r10 + 0x10 ], rax
mov [ r10 + 0x0 ], r9
mov [ r10 + 0x28 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 408
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.0871
; seed 2476736315071453 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2682048 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=113, initial num_batches=31): 104167 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03883860393251724
; number reverted permutation / tried permutation: 73837 / 95091 =77.649%
; number reverted decision / tried decision: 67456 / 94908 =71.075%
; validated in 1.499s
