	.file	"program.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nTesting problem (A)\n\tAssuming an unsorted linked list of integers, and \nwithout using a temporary buffer, write a routine to \ndelete any duplicates from a thread-safe linked list.\n"
.LC1:
	.string	"\tTest A0: "
.LC2:
	.string	"\tTest A1: "
.LC3:
	.string	"\tTest A2: "
.LC4:
	.string	"\tTest A3: "
.LC5:
	.string	"\tTest A4: "
	.align 8
.LC6:
	.string	"\nTesting problem (B)\n\tSuppose we have an array of characters pointed \nto by the pointer char *buf. Write a routine to compute \nand set the parity bit of the characters and output the \ncharacters in hex form.\n"
.LC7:
	.string	"\tTest B0: "
.LC8:
	.string	"\tTest B1: "
.LC9:
	.string	"\tTest B2: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "source/program.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	.loc 1 37 0
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	.loc 1 40 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 46 0
	call	create_list@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L2
	.loc 1 47 0
	movl	$-1, %eax
	jmp	.L13
.L2:
	.loc 1 50 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	.loc 1 51 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 53 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 54 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 55 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 57 0
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	.loc 1 58 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 59 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 61 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 62 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 63 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 65 0
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.loc 1 66 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 67 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 68 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 70 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 71 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 72 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 74 0
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	.loc 1 75 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 76 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 77 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 78 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 79 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 80 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 82 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 83 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 84 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 86 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	.loc 1 87 0
	leaq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 88 0
	leaq	-32(%rbp), %rax
	movl	$3, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 89 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 90 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 91 0
	leaq	-32(%rbp), %rax
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 92 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 93 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 94 0
	leaq	-32(%rbp), %rax
	movl	$3, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 95 0
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 96 0
	leaq	-32(%rbp), %rax
	movl	$6, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 97 0
	leaq	-32(%rbp), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 98 0
	leaq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 99 0
	leaq	-32(%rbp), %rax
	movl	$12, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 100 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 102 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 103 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 104 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 105 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list@PLT
	.loc 1 106 0
	movq	$0, -32(%rbp)
	.loc 1 108 0
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	.loc 1 118 0
	movq	CHAR_LENGTH.3237(%rip), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L4
	.loc 1 120 0
	movl	$-1, %eax
	jmp	.L13
.L4:
	.loc 1 123 0
	movq	$0, -24(%rbp)
	jmp	.L5
.L6:
	.loc 1 124 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	cltq
	movq	UCHAR_RANGE.3238(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movb	%al, (%rbx)
	.loc 1 123 0 discriminator 3
	addq	$1, -24(%rbp)
.L5:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	CHAR_LENGTH.3237(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L6
	.loc 1 126 0 is_stmt 1
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	.loc 1 127 0
	movq	CHAR_LENGTH.3237(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setParityPrint@PLT
	.loc 1 128 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 129 0
	movq	$0, -40(%rbp)
	.loc 1 131 0
	movq	CHAR_LENGTH.3237(%rip), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L7
	.loc 1 133 0
	movl	$-1, %eax
	jmp	.L13
.L7:
	.loc 1 136 0
	movq	$0, -24(%rbp)
	jmp	.L8
.L9:
	.loc 1 137 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	cltq
	movq	UCHAR_RANGE.3238(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movb	%al, (%rbx)
	.loc 1 136 0 discriminator 3
	addq	$1, -24(%rbp)
.L8:
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	CHAR_LENGTH.3237(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L9
	.loc 1 139 0 is_stmt 1
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	.loc 1 140 0
	movq	CHAR_LENGTH.3237(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setParityPrint@PLT
	.loc 1 141 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 142 0
	movq	$0, -40(%rbp)
	.loc 1 144 0
	movq	CHAR_LENGTH.3237(%rip), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L10
	.loc 1 146 0
	movl	$-1, %eax
	jmp	.L13
.L10:
	.loc 1 149 0
	movq	$0, -24(%rbp)
	jmp	.L11
.L12:
	.loc 1 150 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	cltq
	movq	UCHAR_RANGE.3238(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movb	%al, (%rbx)
	.loc 1 149 0 discriminator 3
	addq	$1, -24(%rbp)
.L11:
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	CHAR_LENGTH.3237(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L12
	.loc 1 152 0 is_stmt 1
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	.loc 1 153 0
	movq	CHAR_LENGTH.3237(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setParityPrint@PLT
	.loc 1 154 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 155 0
	movq	$0, -40(%rbp)
	.loc 1 157 0
	movl	$0, %eax
.L13:
	.loc 1 158 0 discriminator 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	CHAR_LENGTH.3237, @object
	.size	CHAR_LENGTH.3237, 8
CHAR_LENGTH.3237:
	.quad	25
	.align 8
	.type	UCHAR_RANGE.3238, @object
	.size	UCHAR_RANGE.3238, 8
UCHAR_RANGE.3238:
	.quad	255
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ea
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.long	.LASF69
	.long	.LASF70
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.long	0x38
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x6e
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x6e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x9a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x7
	.byte	0x8
	.long	0xa1
	.uleb128 0x4
	.long	0xa6
	.uleb128 0x8
	.long	0x94
	.long	0xc1
	.uleb128 0x9
	.long	0x8b
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.value	0x11a
	.long	0xb1
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.value	0x11b
	.long	0x67
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.value	0x11c
	.long	0x6e
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.value	0x121
	.long	0xb1
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x129
	.long	0x67
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x12a
	.long	0x6e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF18
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF19
	.uleb128 0xb
	.long	.LASF49
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x294
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0xf2
	.long	0x67
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0xf7
	.long	0x94
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0xf8
	.long	0x94
	.byte	0x10
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0xf9
	.long	0x94
	.byte	0x18
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0xfa
	.long	0x94
	.byte	0x20
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0xfb
	.long	0x94
	.byte	0x28
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0xfc
	.long	0x94
	.byte	0x30
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0xfd
	.long	0x94
	.byte	0x38
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0xfe
	.long	0x94
	.byte	0x40
	.uleb128 0xd
	.long	.LASF29
	.byte	0x5
	.value	0x100
	.long	0x94
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x5
	.value	0x101
	.long	0x94
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x5
	.value	0x102
	.long	0x94
	.byte	0x58
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.value	0x104
	.long	0x2cc
	.byte	0x60
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.value	0x106
	.long	0x2d2
	.byte	0x68
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.value	0x108
	.long	0x67
	.byte	0x70
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.value	0x10c
	.long	0x67
	.byte	0x74
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.value	0x10e
	.long	0x75
	.byte	0x78
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.value	0x112
	.long	0x4b
	.byte	0x80
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.value	0x113
	.long	0x59
	.byte	0x82
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.value	0x114
	.long	0x2d8
	.byte	0x83
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.value	0x118
	.long	0x2e8
	.byte	0x88
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.value	0x121
	.long	0x80
	.byte	0x90
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.value	0x129
	.long	0x92
	.byte	0x98
	.uleb128 0xd
	.long	.LASF43
	.byte	0x5
	.value	0x12a
	.long	0x92
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x5
	.value	0x12b
	.long	0x92
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.value	0x12c
	.long	0x92
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF47
	.byte	0x5
	.value	0x12f
	.long	0x67
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x5
	.value	0x131
	.long	0x2ee
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.byte	0x96
	.uleb128 0xb
	.long	.LASF50
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x2cc
	.uleb128 0xc
	.long	.LASF51
	.byte	0x5
	.byte	0x9d
	.long	0x2cc
	.byte	0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x5
	.byte	0x9e
	.long	0x2d2
	.byte	0x8
	.uleb128 0xc
	.long	.LASF53
	.byte	0x5
	.byte	0xa2
	.long	0x67
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x29b
	.uleb128 0x7
	.byte	0x8
	.long	0x117
	.uleb128 0x8
	.long	0x9a
	.long	0x2e8
	.uleb128 0x9
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x294
	.uleb128 0x8
	.long	0x9a
	.long	0x2fe
	.uleb128 0x9
	.long	0x8b
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.value	0x13b
	.long	0x2fe
	.uleb128 0xa
	.long	.LASF55
	.byte	0x5
	.value	0x13c
	.long	0x2fe
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.value	0x13d
	.long	0x2fe
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0xaa
	.long	0x2d2
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0xab
	.long	0x2d2
	.uleb128 0x10
	.long	.LASF59
	.byte	0x6
	.byte	0xac
	.long	0x2d2
	.uleb128 0x10
	.long	.LASF60
	.byte	0x7
	.byte	0x1a
	.long	0x67
	.uleb128 0x8
	.long	0xac
	.long	0x35e
	.uleb128 0x11
	.byte	0
	.uleb128 0x4
	.long	0x353
	.uleb128 0x10
	.long	.LASF61
	.byte	0x7
	.byte	0x1b
	.long	0x35e
	.uleb128 0x12
	.long	.LASF72
	.byte	0x1
	.byte	0x24
	.long	0x67
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e2
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x26
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0x2d
	.long	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	CHAR_LENGTH.3237
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x73
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	UCHAR_RANGE.3238
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x75
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.uleb128 0x7
	.byte	0x8
	.long	0x3e2
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_read_ptr"
.LASF33:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF39:
	.string	"_shortbuf"
.LASF56:
	.string	"_IO_2_1_stderr_"
.LASF27:
	.string	"_IO_buf_base"
.LASF63:
	.string	"CHAR_LENGTH"
.LASF18:
	.string	"long long unsigned int"
.LASF14:
	.string	"__timezone"
.LASF19:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF34:
	.string	"_fileno"
.LASF22:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF20:
	.string	"_flags"
.LASF65:
	.string	"newBuffer"
.LASF28:
	.string	"_IO_buf_end"
.LASF37:
	.string	"_cur_column"
.LASF36:
	.string	"_old_offset"
.LASF41:
	.string	"_offset"
.LASF64:
	.string	"UCHAR_RANGE"
.LASF17:
	.string	"timezone"
.LASF50:
	.string	"_IO_marker"
.LASF70:
	.string	"/home/cepexa/Desktop/program"
.LASF3:
	.string	"unsigned int"
.LASF62:
	.string	"newList"
.LASF0:
	.string	"long unsigned int"
.LASF66:
	.string	"_IO_FILE_plus"
.LASF25:
	.string	"_IO_write_ptr"
.LASF60:
	.string	"sys_nerr"
.LASF52:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF29:
	.string	"_IO_save_base"
.LASF57:
	.string	"stdin"
.LASF40:
	.string	"_lock"
.LASF35:
	.string	"_flags2"
.LASF47:
	.string	"_mode"
.LASF58:
	.string	"stdout"
.LASF54:
	.string	"_IO_2_1_stdin_"
.LASF68:
	.string	"GNU C89 6.3.0 20170516 -mtune=generic -march=x86-64 -g -O0 -std=gnu90"
.LASF10:
	.string	"sizetype"
.LASF26:
	.string	"_IO_write_end"
.LASF71:
	.string	"_IO_lock_t"
.LASF49:
	.string	"_IO_FILE"
.LASF13:
	.string	"__daylight"
.LASF53:
	.string	"_pos"
.LASF61:
	.string	"sys_errlist"
.LASF32:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF38:
	.string	"_vtable_offset"
.LASF15:
	.string	"tzname"
.LASF55:
	.string	"_IO_2_1_stdout_"
.LASF69:
	.string	"source/program.c"
.LASF16:
	.string	"daylight"
.LASF11:
	.string	"char"
.LASF51:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF23:
	.string	"_IO_read_base"
.LASF31:
	.string	"_IO_save_end"
.LASF42:
	.string	"__pad1"
.LASF43:
	.string	"__pad2"
.LASF44:
	.string	"__pad3"
.LASF45:
	.string	"__pad4"
.LASF46:
	.string	"__pad5"
.LASF48:
	.string	"_unused2"
.LASF59:
	.string	"stderr"
.LASF30:
	.string	"_IO_backup_base"
.LASF67:
	.string	"list"
.LASF12:
	.string	"__tzname"
.LASF72:
	.string	"main"
.LASF24:
	.string	"_IO_write_base"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
