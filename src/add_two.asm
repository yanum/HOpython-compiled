	.file	"add_two.c"
	.intel_syntax noprefix
	.text
	.globl	add_float
	.type	add_float, @function
add_float:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movss	DWORD PTR [rbp-4], xmm0
	movss	DWORD PTR [rbp-8], xmm1
	movss	xmm0, DWORD PTR [rbp-4]
	addss	xmm0, DWORD PTR [rbp-8]
	movss	DWORD PTR [rbp-12], xmm0
	mov	eax, DWORD PTR [rbp-12]
	mov	DWORD PTR [rbp-12], eax
	movss	xmm0, DWORD PTR [rbp-12]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add_float, .-add_float
	.globl	add_int
	.type	add_int, @function
add_int:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rbp-4]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	add_int, .-add_int
	.globl	add_float_ref
	.type	add_float_ref, @function
add_float_ref:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-8]
	movss	xmm1, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	movss	xmm0, DWORD PTR [rax]
	addss	xmm0, xmm1
	mov	rax, QWORD PTR [rbp-24]
	movss	DWORD PTR [rax], xmm0
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	add_float_ref, .-add_float_ref
	.globl	add_int_ref
	.type	add_int_ref, @function
add_int_ref:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi
	mov	QWORD PTR [rbp-16], rsi
	mov	QWORD PTR [rbp-24], rdx
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-16]
	mov	eax, DWORD PTR [rax]
	add	edx, eax
	mov	rax, QWORD PTR [rbp-24]
	mov	DWORD PTR [rax], edx
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	add_int_ref, .-add_int_ref
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
