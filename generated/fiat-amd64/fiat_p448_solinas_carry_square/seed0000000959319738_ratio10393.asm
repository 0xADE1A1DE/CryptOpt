SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 408
mov rax, 0x1 
shlx r10, [ rsi + 0x10 ], rax
mov r11, [ rsi + 0x38 ]
lea rdx, [r11 + r11]
mov r11, [ rsi + 0x28 ]
lea rcx, [r11 + r11]
mulx r8, r11, [ rsi + 0x28 ]
mulx rax, r9, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
imul rbx, [ rsi + 0x20 ], 0x2
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
imul rdx, [ rsi + 0x30 ], 0x2
mov [ rsp - 0x60 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbp
mov rdx, r14
mov [ rsp - 0x48 ], rax
mulx rax, r14, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rdi
mov [ rsp - 0x30 ], r15
mulx r15, rdi, rdx
mov rdx, r9
mov [ rsp - 0x28 ], r15
mulx r15, r9, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rdi
mov rdi, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], rax
mov rax, rdi
shl rax, 0x1
xchg rdx, rbp
mov [ rsp - 0x10 ], rax
mulx rax, rdi, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r14
mov [ rsp + 0x0 ], r10
mulx r10, r14, [ rsi + 0x20 ]
xchg rdx, rcx
mov [ rsp + 0x8 ], r10
mov [ rsp + 0x10 ], r14
mulx r14, r10, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r14
mov r14, r12
mov [ rsp + 0x20 ], r10
xor r10, r10
adox r14, r11
mov [ rsp + 0x28 ], rax
mov rax, r8
adox rax, r13
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rdi
mov [ rsp + 0x38 ], r15
mulx r15, rdi, rdx
mov rdx, r14
adcx rdx, rdi
mov [ rsp + 0x40 ], r9
mov r9, r15
adcx r9, rax
mov [ rsp + 0x48 ], r9
xor r9, r9
adox r14, r12
adox r13, rax
adcx r14, r11
adcx r8, r13
add r14, rdi
adcx r15, r8
xchg rdx, r10
mulx r12, r11, [ rsi + 0x18 ]
mov rax, rdx
mov rdx, [ rsi + 0x38 ]
mulx r13, rdi, rdx
xor rdx, rdx
adox r14, r11
mov r9, r12
adox r9, r15
mov rdx, [ rsi + 0x28 ]
mulx r15, r8, rdx
mov rdx, rdi
adcx rdx, rdi
mov [ rsp + 0x50 ], r9
mov r9, r13
adcx r9, r13
mov [ rsp + 0x58 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], r15
mulx r15, r9, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x70 ], r15
mov [ rsp + 0x78 ], r9
mulx r9, r15, rbx
mov rdx, rcx
mov [ rsp + 0x80 ], r9
mulx r9, rcx, [ rsi + 0x18 ]
mov [ rsp + 0x88 ], r9
xor r9, r9
adox r10, r11
adox r12, [ rsp + 0x48 ]
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x90 ], rcx
mulx rcx, r9, rbx
mov rdx, r11
mov [ rsp + 0x98 ], rcx
mulx rcx, r11, [ rsi + 0x30 ]
adcx r10, [ rsp + 0x40 ]
adcx r12, [ rsp + 0x38 ]
test al, al
adox r10, [ rsp + 0x30 ]
adox r12, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa0 ], r12
mov [ rsp + 0xa8 ], r10
mulx r10, r12, rbp
adcx rdi, r8
adcx r13, [ rsp + 0x68 ]
xor rdx, rdx
adox r14, r8
mov [ rsp + 0xb0 ], r9
mov r9, [ rsp + 0x60 ]
adox r9, [ rsp + 0x68 ]
adcx rdi, r12
mov r8, r10
adcx r8, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xb8 ], r8
mulx r8, r13, rbp
xor rdx, rdx
adox r14, r12
adox r10, r9
mov rdx, [ rsi + 0x0 ]
mulx r9, r12, rbx
mov rdx, rax
mulx rbx, rax, [ rsi + 0x20 ]
mov [ rsp + 0xc0 ], rdi
mov rdi, r11
adcx rdi, r11
mov [ rsp + 0xc8 ], r9
mov r9, rcx
adcx r9, rcx
add r11, rax
mov [ rsp + 0xd0 ], r12
mov r12, rbx
adcx r12, rcx
xor rcx, rcx
adox rdi, rax
adox rbx, r9
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd8 ], r12
lea r12, [rdx + rdx]
adcx r13, [ rsp + 0x10 ]
adcx r8, [ rsp + 0x8 ]
mov rdx, r13
mov [ rsp + 0xe0 ], r11
xor r11, r11
adox rdx, r15
mov [ rsp + 0xe8 ], r12
mov r12, r8
adox r12, [ rsp + 0x80 ]
xchg rdx, rax
mulx r11, r15, [ rsi + 0x10 ]
adcx r13, r9
adcx rcx, r8
xor r9, r9
adox rax, r15
adox r11, r12
adcx r14, [ rsp + 0x90 ]
adcx r10, [ rsp + 0x88 ]
xor r8, r8
adox rdi, [ rsp - 0x8 ]
adox rbx, [ rsp - 0x18 ]
adcx rdi, [ rsp - 0x30 ]
adcx rbx, [ rsp - 0x38 ]
xor r9, r9
adox r14, [ rsp - 0x20 ]
adox r10, [ rsp - 0x28 ]
adcx r14, [ rsp + 0x78 ]
adcx r10, [ rsp + 0x70 ]
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, [ rsp + 0xe8 ]
add rdi, r12
adcx r15, rbx
add rdi, [ rsp + 0xb0 ]
adcx r15, [ rsp + 0x98 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, rbp
test al, al
adox rax, rbx
adox r12, r11
mov rdx, [ rsi + 0x0 ]
mulx rbx, r11, r8
mov rdx, [ rsp + 0x58 ]
adcx rdx, [ rsp + 0x40 ]
mov r8, [ rsp + 0x50 ]
adcx r8, [ rsp + 0x38 ]
test al, al
adox rdi, r11
adox rbx, r15
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r11, rdx
adcx r15, r11
adcx r9, r8
xor rdx, rdx
adox r15, [ rsp + 0x30 ]
adox r9, [ rsp + 0x28 ]
mov rdx, [ rsp + 0xe8 ]
mulx r11, r8, [ rsi + 0x0 ]
adcx r13, r8
adcx r11, rcx
mulx r8, rcx, [ rsi + 0x8 ]
add rax, [ rsp - 0x40 ]
adcx r12, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], rbx
mov [ rsp + 0xf8 ], rdi
mulx rdi, rbx, rdx
xor rdx, rdx
adox r15, rcx
adox r8, r9
mov r9, 0xffffffffffffff 
mov rcx, rax
and rcx, r9
adox r15, [ rsp + 0xd0 ]
adox r8, [ rsp + 0xc8 ]
shrd rax, r12, 56
test al, al
adox r14, [ rsp + 0x20 ]
adox r10, [ rsp + 0x18 ]
mov r12, r13
shrd r12, r11, 56
test al, al
adox r15, r12
adox r8, rdx
mov r11, rax
adcx r11, r15
adc r8, 0x0
mov rdx, [ rsi + 0x0 ]
mulx r15, r12, rbp
mov rdx, [ rsp - 0x10 ]
mulx r9, rbp, [ rsi + 0x0 ]
add r14, r12
adcx r15, r10
mov rdx, rbx
xor r10, r10
adox rdx, [ rsp + 0xa8 ]
adox rdi, [ rsp + 0xa0 ]
adcx rax, rdx
adc rdi, 0x0
mov rbx, [ rsp + 0x90 ]
mov r12, rbx
xor rdx, rdx
adox r12, [ rsp + 0xc0 ]
mov r10, [ rsp + 0x88 ]
adox r10, [ rsp + 0xb8 ]
mov rbx, [ rsp - 0x8 ]
mov [ rsp + 0x100 ], r10
mov r10, rbx
adcx r10, [ rsp + 0xe0 ]
mov [ rsp + 0x108 ], r12
mov r12, [ rsp - 0x18 ]
adcx r12, [ rsp + 0xd8 ]
mov rbx, r11
shrd rbx, r8, 56
mov r8, rbx
add r8, [ rsp + 0xf8 ]
mov [ rsp + 0x110 ], rcx
mov rcx, [ rsp + 0xf0 ]
adc rcx, 0x0
mov rbx, r8
shrd rbx, rcx, 56
add r10, [ rsp - 0x30 ]
adcx r12, [ rsp - 0x38 ]
mov rcx, rax
shrd rcx, rdi, 56
test al, al
adox r14, rbx
adox r15, rdx
mov rdi, r14
shrd rdi, r15, 56
add r10, rbp
adcx r9, r12
add r10, rcx
adc r9, 0x0
mov rbp, 0x38 
bzhi rbx, r14, rbp
add rdi, [ rsp + 0x110 ]
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x30 ], rbx
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, rdx
mov rdx, [ rsp + 0x0 ]
mulx rbx, r15, [ rsi + 0x0 ]
mov rdx, rcx
test al, al
adox rdx, [ rsp + 0x108 ]
adox r14, [ rsp + 0x100 ]
mov rcx, r10
shrd rcx, r9, 56
xor r9, r9
adox rdx, r15
adox rbx, r14
adcx rdx, rcx
adc rbx, 0x0
bzhi r15, rdi, rbp
mov r14, rdx
shrd r14, rbx, 56
mov [ r12 + 0x38 ], r15
bzhi rcx, rax, rbp
bzhi rax, r13, rbp
shr rdi, 56
lea r14, [ r14 + rax ]
bzhi r13, rdx, rbp
lea rcx, [ rcx + rdi ]
bzhi rdx, r11, rbp
bzhi r11, rcx, rbp
mov [ r12 + 0x0 ], r11
mov rbx, r14
shr rbx, 56
lea rdx, [ rdx + rdi ]
lea rbx, [ rbx + rdx ]
bzhi r15, r8, rbp
mov r8, rbx
shr r8, 56
bzhi rax, rbx, rbp
lea r8, [ r8 + r15 ]
mov [ r12 + 0x20 ], rax
shr rcx, 56
bzhi rdi, r10, rbp
lea rcx, [ rcx + rdi ]
mov [ r12 + 0x8 ], rcx
mov [ r12 + 0x28 ], r8
bzhi r10, r14, rbp
mov [ r12 + 0x10 ], r13
mov [ r12 + 0x18 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 408
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.0393
; seed 4472879024216147 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5302581 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=74, initial num_batches=31): 190072 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03584518558038057
; number reverted permutation / tried permutation: 74321 / 94944 =78.279%
; number reverted decision / tried decision: 63607 / 95055 =66.916%
; validated in 2.383s
