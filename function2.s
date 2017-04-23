	.section	__TEXT,__text,regular,pure_instructions
	.globl	_foo
	.align	4, 0x90
_foo:                                   ## @foo
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movb	%r8b, %al
	movb	%cl, %r9b
	movb	%dl, %r10b
	movb	%sil, %r11b
	movb	%dil, %bl
	movb	%bl, -9(%rbp)
	movb	%r11b, -10(%rbp)
	movb	%r10b, -11(%rbp)
	movb	%r9b, -12(%rbp)
	movb	%al, -13(%rbp)
	movsbl	-9(%rbp), %ecx
	movsbl	-10(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -20(%rbp)
	movsbl	-11(%rbp), %ecx
	movsbl	-12(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movsbl	-13(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movb	%cl, %al
	movsbl	%al, %eax
	popq	%rbx
	popq	%rbp
	retq

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$12, %edi
	movl	$13, %esi
	movl	$14, %edx
	movl	$15, %ecx
	movl	$16, %r8d
	movl	$0, -4(%rbp)
	callq	_foo
	movl	$123, %ecx
	movb	%al, -5(%rbp)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq


.subsections_via_symbols
