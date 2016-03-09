	.file	"arrays.c"
	.intel_syntax noprefix
	.text
	.globl	add_int_array
	.type	add_int_array, @function
add_int_array:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	QWORD PTR [rbp-40], rdx
	mov	DWORD PTR [rbp-44], ecx
	mov	DWORD PTR [rbp-4], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-40]
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-4]
	movsx	rdx, edx
	lea	rcx, [0+rdx*4]
	mov	rdx, QWORD PTR [rbp-24]
	add	rdx, rcx
	mov	ecx, DWORD PTR [rdx]
	mov	edx, DWORD PTR [rbp-4]
	movsx	rdx, edx
	lea	rsi, [0+rdx*4]
	mov	rdx, QWORD PTR [rbp-32]
	add	rdx, rsi
	mov	edx, DWORD PTR [rdx]
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR [rbp-4], 1
.L2:
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, DWORD PTR [rbp-44]
	jl	.L3
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add_int_array, .-add_int_array
	.globl	dot_product
	.type	dot_product, @function
dot_product:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	DWORD PTR [rbp-36], edx
	mov	eax, DWORD PTR .LC0[rip]
	mov	DWORD PTR [rbp-8], eax
	mov	DWORD PTR [rbp-4], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-32]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	mulss	xmm0, xmm1
	movss	xmm1, DWORD PTR [rbp-8]
	addss	xmm0, xmm1
	movss	DWORD PTR [rbp-8], xmm0
	add	DWORD PTR [rbp-4], 1
.L6:
	mov	eax, DWORD PTR [rbp-4]
	cmp	eax, DWORD PTR [rbp-36]
	jl	.L7
	mov	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-40], eax
	movss	xmm0, DWORD PTR [rbp-40]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	dot_product, .-dot_product
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
