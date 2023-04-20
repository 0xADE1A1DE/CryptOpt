SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mulx r8, rcx, r10
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x0 ]
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rax + 0x18 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], rbx
mulx rbx, rbp, rcx
xor rdx, rdx
adox rbp, r10
mov rdx, [ rax + 0x8 ]
mulx r10, rbp, [ rsi + 0x0 ]
adcx rbp, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r12
mulx r12, r11, [ rax + 0x10 ]
adcx r11, r10
adcx rdi, r12
mov rdx, 0x53bda402fffe5bfe 
mulx r12, r10, rcx
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r10, rbx
adcx r14, r12
adox r10, rbp
mov rbx, 0x73eda753299d7d48 
mov rdx, rcx
mulx rbp, rcx, rbx
adcx rcx, r15
mov rdx, 0x0 
adcx rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r15, [ rax + 0x8 ]
adox r14, r11
mov rdx, [ rsi + 0x18 ]
mulx rbx, r11, [ rax + 0x10 ]
clc
adcx r15, r9
adox rcx, rdi
adcx r11, r12
adox rbp, r8
mov rdx, [ rsi + 0x18 ]
mulx rdi, r9, [ rax + 0x18 ]
adcx r9, rbx
mov rdx, [ rsi + 0x8 ]
mulx r12, r8, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], r9
mulx r9, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r11
mov [ rsp - 0x18 ], r15
mulx r15, r11, [ rax + 0x18 ]
setc dl
clc
adcx r8, r13
movzx r13, dl
lea r13, [ r13 + rdi ]
adcx rbx, r12
adcx r11, r9
setc dil
clc
adcx r10, [ rsp - 0x30 ]
mov rdx, 0xfffffffeffffffff 
mulx r9, r12, r10
adcx r8, r14
adcx rbx, rcx
mov r9, 0xffffffff00000001 
mov rdx, r12
mulx r14, r12, r9
adcx r11, rbp
mov rcx, 0x53bda402fffe5bfe 
mulx r9, rbp, rcx
movzx rcx, dil
lea rcx, [ rcx + r15 ]
setc r15b
movzx r15, r15b
adox r15, rcx
mov rdi, 0x3339d80809a1d805 
mov [ rsp - 0x10 ], r13
mulx r13, rcx, rdi
clc
adcx rbp, r14
adcx rcx, r9
seto r14b
mov r9, -0x2 
inc r9
adox r12, r10
mov r12, 0x73eda753299d7d48 
mulx r9, r10, r12
adcx r10, r13
adox rbp, r8
mov rdx, 0x0 
adcx r9, rdx
adox rcx, rbx
adox r10, r11
adox r9, r15
movzx r8, r14b
adox r8, rdx
xor rbx, rbx
adox rbp, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x10 ]
mulx r15, r11, [ rax + 0x10 ]
mov rdx, 0xfffffffeffffffff 
mulx r13, r14, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, [ rax + 0x8 ]
adcx r13, [ rsp - 0x40 ]
adox r13, rcx
mov rdx, [ rax + 0x18 ]
mulx rdi, rcx, [ rsi + 0x10 ]
adcx r11, rbx
adox r11, r10
adcx rcx, r15
mov rdx, 0x0 
adcx rdi, rdx
adox rcx, r9
adox rdi, r8
mov r10, 0xffffffff00000001 
mov rdx, r14
mulx r9, r14, r10
mov r8, 0x53bda402fffe5bfe 
mulx rbx, r15, r8
clc
adcx r15, r9
seto r9b
mov r10, -0x2 
inc r10
adox r14, rbp
adox r15, r13
mov r14, 0x3339d80809a1d805 
mulx r13, rbp, r14
adcx rbp, rbx
mulx r10, rbx, r12
adox rbp, r11
adcx rbx, r13
adox rbx, rcx
mov rdx, 0x0 
adcx r10, rdx
adox r10, rdi
movzx r11, r9b
adox r11, rdx
test al, al
adox r15, [ rsp - 0x48 ]
mov rcx, 0xfffffffeffffffff 
mov rdx, rcx
mulx r9, rcx, r15
mov rdx, rcx
mulx r9, rcx, r8
adox rbp, [ rsp - 0x18 ]
adox rbx, [ rsp - 0x20 ]
adox r10, [ rsp - 0x28 ]
mov rdi, 0xffffffff00000001 
mulx r14, r13, rdi
adox r11, [ rsp - 0x10 ]
adcx r13, r15
seto r13b
mov r15, -0x2 
inc r15
adox rcx, r14
adcx rcx, rbp
mov rbp, 0x3339d80809a1d805 
mulx r15, r14, rbp
adox r14, r9
adcx r14, rbx
mulx rbx, r9, r12
adox r9, r15
mov rdx, 0x0 
adox rbx, rdx
adcx r9, r10
adcx rbx, r11
movzx r10, r13b
adc r10, 0x0
mov r13, rcx
sub r13, rdi
mov r11, r14
sbb r11, r8
mov r15, r9
sbb r15, rbp
mov rdx, rbx
sbb rdx, r12
sbb r10, 0x00000000
cmovc r15, r9
cmovc r13, rcx
cmovc r11, r14
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x8 ], r11
mov [ r10 + 0x10 ], r15
cmovc rdx, rbx
mov [ r10 + 0x0 ], r13
mov [ r10 + 0x18 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.8298
; seed 2087732054325693 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2365278 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=158, initial num_batches=31): 152470 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06446176728486039
; number reverted permutation / tried permutation: 65722 / 89878 =73.124%
; number reverted decision / tried decision: 60267 / 90121 =66.873%
; validated in 4.969s
