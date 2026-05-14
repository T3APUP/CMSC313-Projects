	.file	"Proj3.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Enter file name or path from current directory: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s"
.LC2:
	.string	"r"
.LC3:
	.string	"exit"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Error - file not found. Please re-enter. If you wish to end the program instead, please enter \"exit\"."
	.section	.rodata.str1.1
.LC5:
	.string	"%08X  "
.LC6:
	.string	"%02hhX "
.LC7:
	.string	" |%s|\n"
.LC8:
	.string	"%08X "
.LC9:
	.string	"%02X "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.LC0(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC1(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	.LC2(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	leaq	80(%rsp), %rbx
.L7:
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fopen@PLT
	cmpl	$1953069157, (%rbx)
	movq	%rax, 8(%rsp)
	je	.L4
	testq	%rax, %rax
	je	.L5
	leaq	16(%rsp), %rax
	movb	$0, 32(%rsp)
	xorl	%r13d, %r13d
	leaq	48(%rsp), %r12
	movq	%rax, (%rsp)
	leaq	.LC6(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L6:
	movq	8(%rsp), %rdx
	movl	$17, %esi
	movq	%r12, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L28
	movl	%r13d, %edx
	leaq	.LC5(%rip), %rsi
	xorl	%eax, %eax
	addl	$16, %r13d
	movl	$2, %edi
	movq	%r12, %r14
	leaq	64(%rsp), %rbx
	call	__printf_chk@PLT
	movq	(%rsp), %r15
	.p2align 4,,10
	.p2align 3
.L11:
	movsbl	(%r14), %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzbl	(%r14), %eax
	leal	-32(%rax), %edx
	cmpb	$94, %dl
	ja	.L8
	addq	$1, %r14
	movb	%al, (%r15)
	addq	$1, %r15
	cmpq	%rbx, %r14
	jne	.L11
.L10:
	movq	(%rsp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm0, %xmm0
	movb	$0, 16(%r12)
	movaps	%xmm0, (%r12)
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L8:
	addq	$1, %r14
	movb	$46, (%r15)
	addq	$1, %r15
	cmpq	%rbx, %r14
	jne	.L11
	jmp	.L10
.L28:
	cmpb	$0, 48(%rsp)
	jne	.L29
.L13:
	movq	8(%rsp), %rdi
	call	fclose@PLT
.L4:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	movl	%r13d, %edx
	movl	$2, %edi
	leaq	16(%rsp), %rbp
	xorl	%ebx, %ebx
	leaq	.LC8(%rip), %rsi
	leaq	.LC6(%rip), %r13
	call	__printf_chk@PLT
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L16:
	movsbl	(%r12,%rbx), %edx
	xorl	%eax, %eax
	movq	%r13, %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movzbl	(%r12,%rbx), %eax
	leal	-32(%rax), %edx
	cmpb	$95, %dl
	movl	$46, %edx
	cmovnb	%edx, %eax
	movb	%al, 0(%rbp,%rbx)
	addq	$1, %rbx
.L14:
	movq	%r12, %rdi
	call	strlen@PLT
	cmpq	%rbx, %rax
	jnb	.L16
	cmpq	$16, %rax
	je	.L17
	movl	$15, %edx
	leaq	17(%rsp,%rax), %r12
	leaq	0(%rbp,%rax), %rbx
	subl	%eax, %edx
	leaq	.LC9(%rip), %r13
	addq	%rdx, %r12
	.p2align 4,,10
	.p2align 3
.L18:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	movb	$46, -1(%rbx)
	cmpq	%r12, %rbx
	jne	.L18
.L17:
	movq	%rbp, %rdx
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L13
.L30:
	call	__stack_chk_fail@PLT
.L5:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L7
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
