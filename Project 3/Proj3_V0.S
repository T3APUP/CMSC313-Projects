	.file	"Proj3.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter file name or path from current directory: "
.LC1:
	.string	"%s"
.LC2:
	.string	"r"
.LC3:
	.string	"exit"
	.align 8
.LC4:
	.string	"Error - file not found. Please re-enter. If you wish to end the program instead, please enter \"exit\"."
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
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -152(%rbp)
.L5:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -152(%rbp)
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L20
.L2:
	cmpq	$0, -152(%rbp)
	jne	.L4
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L4:
	cmpq	$0, -152(%rbp)
	je	.L5
	movb	$0, -128(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L6
.L11:
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$16, -160(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L7
.L10:
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$31, %al
	jbe	.L8
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$126, %al
	ja	.L8
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %edx
	movl	-156(%rbp), %eax
	cltq
	movb	%dl, -144(%rbp,%rax)
	jmp	.L9
.L8:
	movl	-156(%rbp), %eax
	cltq
	movb	$46, -144(%rbp,%rax)
.L9:
	addl	$1, -156(%rbp)
.L7:
	cmpl	$15, -156(%rbp)
	jle	.L10
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movl	$17, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L6:
	movq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L11
	leaq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -156(%rbp)
	jmp	.L13
.L16:
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$31, %al
	jbe	.L14
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$126, %al
	ja	.L14
	movl	-156(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %edx
	movl	-156(%rbp), %eax
	cltq
	movb	%dl, -144(%rbp,%rax)
	jmp	.L15
.L14:
	movl	-156(%rbp), %eax
	cltq
	movb	$46, -144(%rbp,%rax)
.L15:
	addl	$1, -156(%rbp)
.L13:
	movl	-156(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rbx, %rax
	jnb	.L16
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$16, %rax
	je	.L17
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -156(%rbp)
	jmp	.L18
.L19:
	movl	$0, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-156(%rbp), %eax
	cltq
	movb	$46, -144(%rbp,%rax)
	addl	$1, -156(%rbp)
.L18:
	cmpl	$15, -156(%rbp)
	jle	.L19
.L17:
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L12:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L20:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
