	.text
	.file	"sort.mChecked.c"
	.globl	t_malloc                        # -- Begin function t_malloc
	.p2align	4, 0x90
	.type	t_malloc,@function
t_malloc:                               # @t_malloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	c_malloc
	cltq
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	t_malloc, .Lfunc_end0-t_malloc
	.cfi_endproc
                                        # -- End function
	.globl	sort                            # -- Begin function sort
	.p2align	4, 0x90
	.type	sort,@function
sort:                                   # @sort
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB1_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB1_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB1_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_3
.LBB1_8:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %for.inc15
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_1
.LBB1_10:                               # %for.end17
	movq	$0, -40(%rbp)
.LBB1_11:                               # %for.cond19
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_16
# %bb.12:                               # %for.body22
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB1_13
	jmp	.LBB1_15
.LBB1_13:                               # %_Dynamic_check.succeeded
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-52(%rbp), %eax                 # 4-byte Reload
	addl	(%rcx), %eax
	movl	%eax, -32(%rbp)
# %bb.14:                               # %for.inc26
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_11
.LBB1_15:                               # %_Dynamic_check.failed
	ud2
.LBB1_16:                               # %for.end28
	movl	-32(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	sort, .Lfunc_end1-sort
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	$6, -8(%rbp)
	movq	.L__const.main.arr, %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.main.arr+8, %rax
	movq	%rax, -24(%rbp)
	movq	.L__const.main.arr+16, %rax
	movq	%rax, -16(%rbp)
	movl	$24, %edi
	movabsq	$.L.str, %rsi
	callq	t_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_7
.LBB2_1:                                # %_Dynamic_check.succeeded
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-40(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_2
	jmp	.LBB2_8
.LBB2_2:                                # %_Dynamic_check.succeeded7
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movl	$23, (%rax)
	movq	-40(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_9
.LBB2_3:                                # %_Dynamic_check.succeeded14
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	$14, (%rax)
	movq	-40(%rbp), %rcx
	addq	$12, %rcx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_10
.LBB2_4:                                # %_Dynamic_check.succeeded21
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	$12, (%rax)
	movq	-40(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_11
.LBB2_5:                                # %_Dynamic_check.succeeded28
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	$9, (%rax)
	movq	-40(%rbp), %rcx
	addq	$20, %rcx
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rcx, %rax
	setbe	%al
	cmpq	%rdx, %rcx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_12
.LBB2_6:                                # %_Dynamic_check.succeeded35
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$39, (%rax)
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	sort
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_7:                                # %_Dynamic_check.failed
	.cfi_def_cfa %rbp, 16
	ud2
.LBB2_8:                                # %_Dynamic_check.failed6
	ud2
.LBB2_9:                                # %_Dynamic_check.failed13
	ud2
.LBB2_10:                               # %_Dynamic_check.failed20
	ud2
.LBB2_11:                               # %_Dynamic_check.failed27
	ud2
.LBB2_12:                               # %_Dynamic_check.failed34
	ud2
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.arr,@object      # @__const.main.arr
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.main.arr:
	.long	0                               # 0x0
	.long	23                              # 0x17
	.long	14                              # 0xe
	.long	12                              # 0xc
	.long	9                               # 0x9
	.long	39                              # 0x27
	.size	.L__const.main.arr, 24

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tainted_array"
	.size	.L.str, 14

	.ident	"clang version 12.0.0 (https://github.com/arunkumarbhattar/checkedc-llvm-project.git 258cbbb5d01e577d91e54e1bde2dcee6e904fa27)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t_malloc
	.addrsig_sym c_malloc
	.addrsig_sym sort
