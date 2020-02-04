	.file	"check_queens.c"
	.text
	.globl	COMMA
	.section	.rodata
.LC0:
	.string	","
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	COMMA, @object
	.size	COMMA, 4
COMMA:
	.long	.LC0
	.section	.rodata
.LC1:
	.string	"Error in reading the file"
	.text
	.globl	get_dimensions
	.type	get_dimensions, @function
get_dimensions:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	subl	$4, %esp
	pushl	-28(%ebp)
	leal	-20(%ebp), %eax
	pushl	%eax
	leal	-24(%ebp), %eax
	pushl	%eax
	call	getline@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	.L2
	subl	$12, %esp
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L2:
	movl	$0, -16(%ebp)
	movl	COMMA@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	subl	$12, %esp
	pushl	-16(%ebp)
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	movl	COMMA@GOTOFF(%ebx), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	subl	$12, %esp
	pushl	-16(%ebp)
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	nop
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	get_dimensions, .-get_dimensions
	.globl	check_queens
	.type	check_queens, @function
check_queens:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L5
.L10:
	movl	$0, -48(%ebp)
	jmp	.L6
.L9:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-48(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L7
	movl	-52(%ebp), %eax
	subl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jns	.L8
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	addl	%eax, -44(%ebp)
.L8:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-24(%ebp), %eax
	addl	%ecx, %eax
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	-48(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-20(%ebp), %eax
	addl	%ecx, %eax
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %ecx
	movl	-48(%ebp), %eax
	addl	%ecx, %eax
	leal	0(,%eax,4), %ecx
	movl	-16(%ebp), %eax
	addl	%ecx, %eax
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-12(%ebp), %eax
	addl	%ecx, %eax
	addl	$1, %edx
	movl	%edx, (%eax)
.L7:
	addl	$1, -48(%ebp)
.L6:
	movl	-48(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L9
	addl	$1, -52(%ebp)
.L5:
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L10
	movl	$0, -40(%ebp)
	jmp	.L11
.L14:
	movl	-40(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	addl	$1, -40(%ebp)
.L11:
	movl	-40(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L14
	movl	$0, -36(%ebp)
	jmp	.L15
.L17:
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L16
	movl	$1, %eax
	jmp	.L13
.L16:
	addl	$1, -36(%ebp)
.L15:
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L17
	movl	$0, -32(%ebp)
	jmp	.L18
.L20:
	movl	-32(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L19
	movl	$1, %eax
	jmp	.L13
.L19:
	addl	$1, -32(%ebp)
.L18:
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cmpl	%eax, -32(%ebp)
	jl	.L20
	movl	$0, -28(%ebp)
	jmp	.L21
.L23:
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L22
	movl	$1, %eax
	jmp	.L13
.L22:
	addl	$1, -28(%ebp)
.L21:
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cmpl	%eax, -28(%ebp)
	jl	.L23
	movl	$0, %eax
.L13:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	check_queens, .-check_queens
	.section	.rodata
	.align 4
.LC2:
	.string	"Usage: ./check_queens <input_filename>"
.LC3:
	.string	"r"
.LC4:
	.string	"Cannot open file for reading"
.LC5:
	.string	"Error while reading the file"
.LC6:
	.string	"true"
.LC7:
	.string	"false"
.LC8:
	.string	"Error while closing the file"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	subl	$76, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, %eax
	movl	4(%eax), %edx
	movl	%edx, -76(%ebp)
	movl	%gs:20, %ecx
	movl	%ecx, -28(%ebp)
	xorl	%ecx, %ecx
	cmpl	$2, (%eax)
	je	.L25
	subl	$12, %esp
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L25:
	movl	-76(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	.LC3@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	.L26
	subl	$12, %esp
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L26:
	subl	$4, %esp
	leal	-68(%ebp), %eax
	pushl	%eax
	leal	-72(%ebp), %eax
	pushl	%eax
	pushl	-36(%ebp)
	call	get_dimensions
	addl	$16, %esp
	movl	-72(%ebp), %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	$0, -56(%ebp)
	jmp	.L27
.L28:
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	-56(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	-32(%ebp), %edx
	leal	(%ecx,%edx), %esi
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, (%esi)
	addl	$1, -56(%ebp)
.L27:
	movl	-72(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jl	.L28
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L29
.L33:
	subl	$4, %esp
	pushl	-36(%ebp)
	leal	-60(%ebp), %eax
	pushl	%eax
	leal	-64(%ebp), %eax
	pushl	%eax
	call	getline@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	.L30
	subl	$12, %esp
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L30:
	movl	COMMA@GOTOFF(%ebx), %edx
	movl	-64(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -52(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L31
.L32:
	movl	-48(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %esi
	subl	$12, %esp
	pushl	-52(%ebp)
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, (%esi)
	movl	COMMA@GOTOFF(%ebx), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -52(%ebp)
	addl	$1, -44(%ebp)
.L31:
	movl	-68(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jl	.L32
	addl	$1, -48(%ebp)
.L29:
	movl	-72(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jl	.L33
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	-32(%ebp)
	call	check_queens
	addl	$16, %esp
	testl	%eax, %eax
	je	.L34
	subl	$12, %esp
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	jmp	.L35
.L34:
	subl	$12, %esp
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
.L35:
	movl	$0, -40(%ebp)
	jmp	.L36
.L37:
	movl	-40(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	free@PLT
	addl	$16, %esp
	addl	$1, -40(%ebp)
.L36:
	movl	-72(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L37
	subl	$12, %esp
	pushl	-32(%ebp)
	call	free@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	-36(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	testl	%eax, %eax
	je	.L38
	subl	$12, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L38:
	movl	$0, %eax
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L40
	call	__stack_chk_fail_local
.L40:
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB8:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE8:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
