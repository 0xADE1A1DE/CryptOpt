SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
sub rsp, 160
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rax + 0x18 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], r9
mulx r9, rbx, r15
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], rcx
mulx rcx, r12, r15
test al, al
adox rbx, r10
adcx r12, r9
mov rbx, 0x3339d80809a1d805 
mov rdx, rbx
mulx r10, rbx, r15
adcx rbx, rcx
mov r9, 0x73eda753299d7d48 
mov rdx, r9
mulx rcx, r9, r15
adcx r9, r10
mov r15, 0x0 
adcx rcx, r15
clc
adcx r13, r8
mov rdx, [ rsi + 0x8 ]
mulx r10, r8, [ rax + 0x10 ]
adcx r8, r14
adcx rdi, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, r14, [ rax + 0x8 ]
adcx rbp, r15
clc
adcx r14, r11
adox r12, r14
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, [ rax + 0x10 ]
adcx r11, r10
adox rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x18 ]
adcx r10, r14
adox r9, r10
adcx r11, r15
clc
adcx r12, [ rsp - 0x28 ]
mov rdx, 0xfffffffeffffffff 
mulx r10, r14, r12
mov r10, 0xffffffff00000001 
mov rdx, r10
mulx r15, r10, r14
adcx r13, rbx
adcx r8, r9
adox rcx, r11
adcx rdi, rcx
mov rbx, 0x53bda402fffe5bfe 
mov rdx, rbx
mulx r9, rbx, r14
setc r11b
clc
adcx rbx, r15
setc r15b
clc
adcx r10, r12
movzx r10, r11b
adox r10, rbp
mov rdx, [ rax + 0x10 ]
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rsp - 0x30 ]
seto cl
mov r11, -0x2 
inc r11
adox rdx, [ rsp - 0x38 ]
adox rbp, [ rsp - 0x40 ]
adcx rbx, r13
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], rbp
mulx rbp, r11, [ rax + 0x18 ]
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x18 ], r13
mov byte [ rsp - 0x10 ], cl
mulx rcx, r13, r14
mov rdx, 0x73eda753299d7d48 
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], rdi
mulx rdi, r10, r14
adox r11, r12
mov r14, 0x0 
adox rbp, r14
dec r14
movzx r15, r15b
adox r15, r14
adox r9, r13
adcx r9, r8
mov rdx, [ rax + 0x0 ]
mulx r15, r8, [ rsi + 0x10 ]
adox r10, rcx
seto dl
inc r14
adox r8, rbx
movzx r12, dl
lea r12, [ r12 + rdi ]
adcx r10, [ rsp + 0x0 ]
adcx r12, [ rsp - 0x8 ]
mov rbx, 0xfffffffeffffffff 
mov rdx, rbx
mulx r13, rbx, r8
movzx r13, byte [ rsp - 0x10 ]
adcx r13, r14
mov rdx, [ rax + 0x8 ]
mulx rdi, rcx, [ rsi + 0x10 ]
mov rdx, 0x73eda753299d7d48 
mov [ rsp + 0x8 ], rbp
mulx rbp, r14, rbx
clc
adcx rcx, r15
adox rcx, r9
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, [ rax + 0x10 ]
adcx r9, rdi
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], r11
mulx r11, rdi, [ rax + 0x18 ]
adcx rdi, r15
adox r9, r10
mov rdx, 0xffffffff00000001 
mulx r15, r10, rbx
mov rdx, 0x0 
adcx r11, rdx
clc
adcx r10, r8
adox rdi, r12
adox r11, r13
mov r10, 0x53bda402fffe5bfe 
mov rdx, rbx
mulx r8, rbx, r10
mov r12, 0x3339d80809a1d805 
mulx r10, r13, r12
seto dl
mov r12, -0x2 
inc r12
adox rbx, r15
adox r13, r8
adox r14, r10
adcx rbx, rcx
adcx r13, r9
adcx r14, rdi
mov rcx, 0x0 
adox rbp, rcx
adcx rbp, r11
movzx r9, dl
adc r9, 0x0
test al, al
adox rbx, [ rsp - 0x48 ]
mov r15, 0xfffffffeffffffff 
mov rdx, r15
mulx rdi, r15, rbx
adox r13, [ rsp - 0x18 ]
adox r14, [ rsp - 0x20 ]
adox rbp, [ rsp + 0x10 ]
adox r9, [ rsp + 0x8 ]
mov rdi, 0xffffffff00000001 
mov rdx, r15
mulx r11, r15, rdi
mov r8, 0x53bda402fffe5bfe 
mulx rcx, r10, r8
mov r12, 0x73eda753299d7d48 
mulx rdi, r8, r12
adcx r10, r11
mov r11, 0x3339d80809a1d805 
mov [ rsp + 0x18 ], r9
mulx r9, r12, r11
adcx r12, rcx
adcx r8, r9
seto dl
mov rcx, -0x2 
inc rcx
adox r15, rbx
mov r15, 0x0 
adcx rdi, r15
adox r10, r13
adox r12, r14
adox r8, rbp
adox rdi, [ rsp + 0x18 ]
movzx rbx, dl
adox rbx, r15
mov r13, r10
mov r14, 0xffffffff00000001 
sub r13, r14
mov rbp, r12
mov rdx, 0x53bda402fffe5bfe 
sbb rbp, rdx
mov r9, r8
sbb r9, r11
mov r15, rdi
mov rcx, 0x73eda753299d7d48 
sbb r15, rcx
sbb rbx, 0x00000000
cmovc r13, r10
cmovc rbp, r12
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x8 ], rbp
cmovc r15, rdi
mov [ rbx + 0x0 ], r13
cmovc r9, r8
mov [ rbx + 0x18 ], r15
mov [ rbx + 0x10 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 160
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.6084
; seed 2466497869222326 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1624971 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=96, initial num_batches=31): 87412 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05379295999743995
; number reverted permutation / tried permutation: 66032 / 89871 =73.474%
; number reverted decision / tried decision: 45223 / 90128 =50.176%
; validated in 2.87s
