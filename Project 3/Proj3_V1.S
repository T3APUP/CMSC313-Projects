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
	.text
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r14
	leaq	.LC1(%rip), %r13
	leaq	.LC2(%rip), %r12
	leaq	.LC3(%rip), %rbp
.L4:
	movq	%r14, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	80(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	fopen@PLT
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	movl	$4, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2
	testq	%r15, %r15
	je	.L21
	movb	$0, 32(%rsp)
	movl	$0, %r15d
	leaq	48(%rsp), %r14
	leaq	.LC6(%rip), %r13
	jmp	.L5
.L21:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L4
.L23:
	leaq	16(%rsp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	pxor	%xmm0, %xmm0
	movaps	%xmm0, (%r14)
	movb	$0, 16(%r14)
.L5:
	movq	8(%rsp), %rdx
	movl	$17, %esi
	movq	%r14, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L22
	movl	%r15d, %edx
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addl	$16, %r15d
	leaq	48(%rsp), %rbx
	leaq	16(%rsp), %rbp
	leaq	64(%rsp), %r12
.L7:
	movsbl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movzbl	(%rbx), %eax
	leal	-32(%rax), %edx
	cmpb	$95, %dl
	movl	$46, %edx
	cmovnb	%edx, %eax
	movb	%al, 0(%rbp)
	addq	$1, %rbx
	addq	$1, %rbp
	cmpq	%r12, %rbx
	jne	.L7
	jmp	.L23
.L22:
	cmpb	$0, 48(%rsp)
	jne	.L24
.L9:
	movq	8(%rsp), %rdi
	call	fclose@PLT
.L2:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L25
	movl	$0, %eax
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L24:
	.cfi_restore_state
	movl	%r15d, %edx
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$0, %ebx
	leaq	.LC6(%rip), %rbp
	jmp	.L10
.L12:
	movsbl	48(%rsp,%rbx), %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movzbl	48(%rsp,%rbx), %eax
	leal	-32(%rax), %edx
	cmpb	$95, %dl
	movl	$46, %edx
	cmovnb	%edx, %eax
	movb	%al, 16(%rsp,%rbx)
	addq	$1, %rbx
.L10:
	leaq	48(%rsp), %rdi
	call	strlen@PLT
	cmpq	%rbx, %rax
	jnb	.L12
	cmpq	$16, %rax
	je	.L13
	movslq	%eax, %rbx
	leaq	.LC9(%rip), %rbp
.L14:
	movl	$0, %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movb	$46, 16(%rsp,%rbx)
	addq	$1, %rbx
	cmpl	$15, %ebx
	jle	.L14
.L13:
	leaq	16(%rsp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L9
.L25:
	call	__stack_chk_fail@PLT
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
