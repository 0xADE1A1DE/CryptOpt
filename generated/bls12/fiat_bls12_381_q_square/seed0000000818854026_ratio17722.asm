SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, 0xfffffffeffffffff 
mov rdx, r11
mulx rcx, r11, rax
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
mov [ rsp - 0x78 ], rbp
mov rbp, 0x73eda753299d7d48 
mov rdx, r11
mov [ rsp - 0x70 ], r12
mulx r12, r11, rbp
mov [ rsp - 0x68 ], r13
mov r13, 0xffffffff00000001 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
mov r13, 0x53bda402fffe5bfe 
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, r13
add rbp, r15
adcx r9, rdi
mov rdx, [ rsi + 0x0 ]
mulx rdi, r15, [ rsi + 0x18 ]
adcx r11, rbx
adc r12, 0x0
xor rdx, rdx
adox rcx, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbx, [ rsi + 0x18 ]
adox rbx, r8
mov rdx, [ rsi + 0x18 ]
mulx r13, r8, rdx
adox r8, rdi
adcx r14, rax
mov rdx, [ rsi + 0x10 ]
mulx rax, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], rcx
mulx rcx, rbx, [ rsi + 0x0 ]
mov rdx, 0x0 
adox r13, rdx
mov [ rsp - 0x30 ], r13
mov r13, -0x3 
inc r13
adox rbx, r10
adcx rbp, rbx
adox r14, rcx
adox rdi, rax
adox r8, rdx
adcx r9, r14
mov rdx, [ rsi + 0x0 ]
mulx rax, r10, [ rsi + 0x8 ]
adcx r11, rdi
mov rdx, [ rsi + 0x8 ]
mulx rbx, rcx, rdx
adcx r12, r8
mov rdx, [ rsi + 0x18 ]
mulx rdi, r14, [ rsi + 0x8 ]
inc r13
adox r10, rbp
setc dl
clc
adcx rcx, rax
adox rcx, r9
mov bpl, dl
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x8 ]
adcx r8, rbx
adox r8, r11
adcx r14, r9
mov rdx, 0x0 
adcx rdi, rdx
adox r14, r12
mov rax, 0xfffffffeffffffff 
mov rdx, rax
mulx r11, rax, r10
mov r11, 0xffffffff00000001 
mov rdx, rax
mulx rbx, rax, r11
mov r12, 0x53bda402fffe5bfe 
mulx r13, r9, r12
clc
adcx r9, rbx
movzx rbx, bpl
adox rbx, rdi
seto bpl
mov rdi, -0x2 
inc rdi
adox rax, r10
adox r9, rcx
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r10, rdx
mov rdx, 0x3339d80809a1d805 
mulx r12, rdi, rax
mov rdx, 0x73eda753299d7d48 
mov [ rsp - 0x28 ], r15
mulx r15, r11, rax
adcx rdi, r13
adox rdi, r8
adcx r11, r12
adox r11, r14
mov r8, 0x0 
adcx r15, r8
mov rdx, [ rsi + 0x10 ]
mulx rax, r14, [ rsi + 0x8 ]
adox r15, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, [ rsi + 0x0 ]
clc
adcx r14, rbx
seto dl
mov r12, -0x3 
inc r12
adox r13, r9
adox r14, rdi
adcx r10, rax
adox r10, r11
movzx r9, dl
movzx rbp, bpl
lea r9, [ r9 + rbp ]
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbp, [ rsi + 0x18 ]
adcx rbp, rcx
adcx rdi, r8
adox rbp, r15
mov rdx, 0xfffffffeffffffff 
mulx r11, rcx, r13
mov r11, 0x3339d80809a1d805 
mov rdx, rcx
mulx rax, rcx, r11
adox rdi, r9
mov r15, 0xffffffff00000001 
mulx r9, rbx, r15
clc
adcx rbx, r13
mov rbx, 0x53bda402fffe5bfe 
mulx r8, r13, rbx
seto r12b
mov r11, -0x2 
inc r11
adox r13, r9
adcx r13, r14
adox rcx, r8
mov r14, 0x73eda753299d7d48 
mulx r8, r9, r14
adox r9, rax
adcx rcx, r10
adcx r9, rbp
mov r10, 0x0 
adox r8, r10
adcx r8, rdi
movzx rbp, r12b
adc rbp, 0x0
test al, al
adox r13, [ rsp - 0x28 ]
mov rdx, 0xfffffffeffffffff 
mulx r12, rax, r13
mov rdx, rax
mulx r12, rax, r15
adox rcx, [ rsp - 0x38 ]
adox r9, [ rsp - 0x40 ]
adox r8, [ rsp - 0x48 ]
mulx r10, rdi, rbx
adcx rax, r13
adox rbp, [ rsp - 0x30 ]
seto al
inc r11
adox rdi, r12
mov r13, 0x3339d80809a1d805 
mulx r11, r12, r13
mulx rbx, r13, r14
adox r12, r10
adox r13, r11
mov rdx, 0x0 
adox rbx, rdx
adcx rdi, rcx
adcx r12, r9
adcx r13, r8
adcx rbx, rbp
movzx rcx, al
adc rcx, 0x0
mov r9, rdi
sub r9, r15
mov r8, r12
mov r10, 0x53bda402fffe5bfe 
sbb r8, r10
mov rax, r13
mov rbp, 0x3339d80809a1d805 
sbb rax, rbp
mov r11, rbx
sbb r11, r14
sbb rcx, 0x00000000
cmovc r8, r12
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x8 ], r8
cmovc rax, r13
mov [ rcx + 0x10 ], rax
cmovc r11, rbx
cmovc r9, rdi
mov [ rcx + 0x18 ], r11
mov [ rcx + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7722
; seed 3158504813998842 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1583679 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=78, initial num_batches=31): 92791 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05859205053549362
; number reverted permutation / tried permutation: 68940 / 89992 =76.607%
; number reverted decision / tried decision: 61223 / 90007 =68.020%
; validated in 3.543s
