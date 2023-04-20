SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbx
mov r13, 0xffffffff00000001 
mov rdx, r12
mov [ rsp - 0x60 ], r14
mulx r14, r12, r13
mov [ rsp - 0x58 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, [ rsi + 0x18 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x48 ], r9
mov [ rsp - 0x40 ], r8
mulx r8, r9, r15
test al, al
adox r12, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r12, [ rsi + 0x0 ]
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r12
mulx r12, rbx, r15
adcx r9, r14
adcx rbx, r8
mov r14, 0x73eda753299d7d48 
mov rdx, r14
mulx r8, r14, r15
adcx r14, r12
mov rdx, [ rsi + 0x0 ]
mulx r12, r15, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r15, rbp
adox r9, r15
adcx rax, r12
adcx r13, r10
adox rbx, rax
adox r14, r13
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, rdx
mov rdx, 0x0 
adcx rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r13, rax, [ rsi + 0x10 ]
clc
adcx r10, r13
adcx r12, rbp
adox r8, rdi
adcx r11, r15
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, rdx
mov rdx, [ rsi + 0x0 ]
mulx r13, rdi, [ rsi + 0x8 ]
clc
adcx rdi, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rcx
mulx rcx, r9, [ rsi + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x20 ], r11
mov [ rsp - 0x18 ], r12
mulx r12, r11, rdi
seto r12b
mov rdx, -0x2 
inc rdx
adox rbp, r13
adcx rbp, rbx
mov rbx, 0x3339d80809a1d805 
mov rdx, r11
mulx r13, r11, rbx
adox r9, r15
adcx r9, r14
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r15, [ rsi + 0x8 ]
adox r15, rcx
adcx r15, r8
mov rdx, 0x0 
adox rbx, rdx
mov r8, 0x53bda402fffe5bfe 
mov rdx, r14
mulx rcx, r14, r8
mov r8, 0xffffffff00000001 
mov [ rsp - 0x10 ], r10
mov [ rsp - 0x8 ], r15
mulx r15, r10, r8
movzx r8, r12b
adcx r8, rbx
mov r12, -0x2 
inc r12
adox r14, r15
setc bl
clc
adcx r10, rdi
adox r11, rcx
mov r10, 0x73eda753299d7d48 
mulx rcx, rdi, r10
adcx r14, rbp
adox rdi, r13
adcx r11, r9
seto dl
inc r12
adox rax, r14
movzx rbp, dl
lea rbp, [ rbp + rcx ]
mov r13, 0xfffffffeffffffff 
mov rdx, r13
mulx r9, r13, rax
mov r9, 0xffffffff00000001 
mov rdx, r13
mulx r15, r13, r9
mov rcx, 0x53bda402fffe5bfe 
mulx r12, r14, rcx
adcx rdi, [ rsp - 0x8 ]
adcx rbp, r8
movzx r8, bl
mov r9, 0x0 
adcx r8, r9
adox r11, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
adox rbp, [ rsp - 0x20 ]
adox r8, [ rsp - 0x28 ]
clc
adcx r14, r15
seto bl
mov r15, -0x3 
inc r15
adox r13, rax
adox r14, r11
mov r13, 0x3339d80809a1d805 
mulx r11, rax, r13
mulx r15, r9, r10
adcx rax, r12
adcx r9, r11
adox rax, rdi
mov rdx, 0x0 
adcx r15, rdx
adox r9, rbp
adox r15, r8
movzx r12, bl
adox r12, rdx
add r14, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x10 ]
mulx rbp, rdi, [ rsi + 0x18 ]
mov rdx, 0xfffffffeffffffff 
mulx r8, rbx, r14
mov r8, [ rsp - 0x40 ]
mov r11, -0x2 
inc r11
adox r8, [ rsp - 0x38 ]
adox rdi, [ rsp - 0x48 ]
adcx r8, rax
adcx rdi, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, rax, rdx
adox rax, rbp
mov rdx, rbx
mulx rbp, rbx, rcx
adcx rax, r15
mov r15, 0x0 
adox r9, r15
adcx r9, r12
mov r12, 0xffffffff00000001 
mulx r11, r15, r12
mov r10, -0x2 
inc r10
adox rbx, r11
setc r11b
clc
adcx r15, r14
adcx rbx, r8
mulx r14, r15, r13
adox r15, rbp
adcx r15, rdi
mov r8, 0x73eda753299d7d48 
mulx rbp, rdi, r8
adox rdi, r14
mov rdx, 0x0 
adox rbp, rdx
adcx rdi, rax
adcx rbp, r9
movzx rax, r11b
adc rax, 0x0
mov r11, rbx
sub r11, r12
mov r9, r15
sbb r9, rcx
mov r14, rdi
sbb r14, r13
mov rdx, rbp
sbb rdx, r8
sbb rax, 0x00000000
cmovc r9, r15
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x8 ], r9
cmovc r11, rbx
mov [ rax + 0x0 ], r11
cmovc r14, rdi
cmovc rdx, rbp
mov [ rax + 0x10 ], r14
mov [ rax + 0x18 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.8433
; seed 2542602588185539 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1543896 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=112, initial num_batches=31): 85262 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05522522242430837
; number reverted permutation / tried permutation: 68671 / 89892 =76.393%
; number reverted decision / tried decision: 62549 / 90107 =69.416%
; validated in 2.875s
