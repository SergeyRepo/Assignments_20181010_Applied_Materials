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
	.align 8
.LC7:
	.string	"Would you like to continue? Type y or n."
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.file 1 "source/program.c"
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 34 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 36 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 42 0
	call	create_list@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L2
	.loc 1 43 0
	movl	$-1, %eax
	jmp	.L10
.L2:
	.loc 1 46 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	.loc 1 47 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 49 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 50 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 51 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 53 0
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	.loc 1 54 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 55 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 57 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 58 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 59 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 61 0
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.loc 1 62 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 63 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 64 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 66 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 67 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 68 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 70 0
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	.loc 1 71 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 72 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 73 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 74 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 75 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 76 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 78 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 79 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 80 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 82 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	.loc 1 83 0
	leaq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 84 0
	leaq	-16(%rbp), %rax
	movl	$3, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 85 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 86 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 87 0
	leaq	-16(%rbp), %rax
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 88 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 89 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 90 0
	leaq	-16(%rbp), %rax
	movl	$3, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 91 0
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 92 0
	leaq	-16(%rbp), %rax
	movl	$6, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 93 0
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 94 0
	leaq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 95 0
	leaq	-16(%rbp), %rax
	movl	$12, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	insert_link_list@PLT
	.loc 1 96 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 98 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sort_list@PLT
	.loc 1 99 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	remove_duplicates_list@PLT
	.loc 1 100 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_list@PLT
	.loc 1 101 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list@PLT
	.loc 1 102 0
	movq	$0, -16(%rbp)
	.loc 1 104 0
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	.loc 1 110 0
	movb	$1, -17(%rbp)
	.loc 1 112 0
	jmp	.L4
.L9:
	.loc 1 113 0
	movb	$1, -17(%rbp)
	.loc 1 114 0
	call	setParityPrint@PLT
	.loc 1 116 0
	jmp	.L5
.L8:
	.loc 1 118 0
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	.loc 1 120 0
	call	getchar@PLT
	movb	%al, -17(%rbp)
	.loc 1 121 0
	nop
.L6:
	.loc 1 121 0 is_stmt 0 discriminator 1
	call	getchar@PLT
	cmpl	$10, %eax
	jne	.L6
.L5:
	.loc 1 116 0 is_stmt 1
	cmpb	$110, -17(%rbp)
	je	.L7
	.loc 1 117 0
	cmpb	$121, -17(%rbp)
	jne	.L8
.L7:
	.loc 1 124 0
	cmpb	$110, -17(%rbp)
	jne	.L4
	.loc 1 125 0
	movb	$0, -17(%rbp)
.L4:
	.loc 1 112 0
	cmpb	$0, -17(%rbp)
	jne	.L9
	.loc 1 129 0
	movl	$0, %eax
.L10:
	.loc 1 130 0 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	.loc 1 130 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3a5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x8d
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x7
	.long	0x83
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0xd8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x7
	.long	0x9a
	.uleb128 0x8
	.long	0x7d
	.long	0xb5
	.uleb128 0x9
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF11
	.byte	0x4
	.byte	0x9f
	.long	0xa5
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0xa0
	.long	0x57
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0xa1
	.long	0x5e
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0xa6
	.long	0xa5
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0xae
	.long	0x57
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0xaf
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0xb
	.long	.LASF48
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x285
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0xf6
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0xfb
	.long	0x7d
	.byte	0x8
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0xfc
	.long	0x7d
	.byte	0x10
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0xfd
	.long	0x7d
	.byte	0x18
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0xfe
	.long	0x7d
	.byte	0x20
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0xff
	.long	0x7d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x5
	.value	0x100
	.long	0x7d
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x5
	.value	0x101
	.long	0x7d
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x5
	.value	0x102
	.long	0x7d
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x5
	.value	0x104
	.long	0x7d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF29
	.byte	0x5
	.value	0x105
	.long	0x7d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF30
	.byte	0x5
	.value	0x106
	.long	0x7d
	.byte	0x58
	.uleb128 0xd
	.long	.LASF31
	.byte	0x5
	.value	0x108
	.long	0x2bd
	.byte	0x60
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.value	0x10a
	.long	0x2c3
	.byte	0x68
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.value	0x10c
	.long	0x57
	.byte	0x70
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.value	0x110
	.long	0x57
	.byte	0x74
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.value	0x112
	.long	0x65
	.byte	0x78
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.value	0x116
	.long	0x34
	.byte	0x80
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.value	0x117
	.long	0x49
	.byte	0x82
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.value	0x118
	.long	0x2c9
	.byte	0x83
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.value	0x11c
	.long	0x2d9
	.byte	0x88
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.value	0x125
	.long	0x70
	.byte	0x90
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.value	0x12d
	.long	0x7b
	.byte	0x98
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.value	0x12e
	.long	0x7b
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF43
	.byte	0x5
	.value	0x12f
	.long	0x7b
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF44
	.byte	0x5
	.value	0x130
	.long	0x7b
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.value	0x132
	.long	0x8f
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.value	0x133
	.long	0x57
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x5
	.value	0x135
	.long	0x2df
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF68
	.byte	0x5
	.byte	0x9a
	.uleb128 0xb
	.long	.LASF49
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x2bd
	.uleb128 0xc
	.long	.LASF50
	.byte	0x5
	.byte	0xa1
	.long	0x2bd
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x5
	.byte	0xa2
	.long	0x2c3
	.byte	0x8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x5
	.byte	0xa6
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28c
	.uleb128 0x6
	.byte	0x8
	.long	0x105
	.uleb128 0x8
	.long	0x83
	.long	0x2d9
	.uleb128 0x9
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x285
	.uleb128 0x8
	.long	0x83
	.long	0x2ef
	.uleb128 0x9
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.uleb128 0x10
	.long	.LASF53
	.byte	0x5
	.value	0x13f
	.long	0x2ef
	.uleb128 0x10
	.long	.LASF54
	.byte	0x5
	.value	0x140
	.long	0x2ef
	.uleb128 0x10
	.long	.LASF55
	.byte	0x5
	.value	0x141
	.long	0x2ef
	.uleb128 0xa
	.long	.LASF56
	.byte	0x6
	.byte	0x87
	.long	0x2c3
	.uleb128 0xa
	.long	.LASF57
	.byte	0x6
	.byte	0x88
	.long	0x2c3
	.uleb128 0xa
	.long	.LASF58
	.byte	0x6
	.byte	0x89
	.long	0x2c3
	.uleb128 0xa
	.long	.LASF59
	.byte	0x7
	.byte	0x1a
	.long	0x57
	.uleb128 0x8
	.long	0xa0
	.long	0x34f
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x344
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0x1b
	.long	0x34f
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.byte	0x22
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0x29
	.long	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x6e
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.uleb128 0x6
	.byte	0x8
	.long	0x39d
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x5
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
.LASF7:
	.string	"__off_t"
.LASF20:
	.string	"_IO_read_ptr"
.LASF32:
	.string	"_chain"
.LASF10:
	.string	"size_t"
.LASF38:
	.string	"_shortbuf"
.LASF55:
	.string	"_IO_2_1_stderr_"
.LASF26:
	.string	"_IO_buf_base"
.LASF62:
	.string	"continueProgram"
.LASF17:
	.string	"long long unsigned int"
.LASF13:
	.string	"__timezone"
.LASF18:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_fileno"
.LASF21:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"_flags"
.LASF27:
	.string	"_IO_buf_end"
.LASF36:
	.string	"_cur_column"
.LASF67:
	.string	"/home/cepexa/Desktop/new_program"
.LASF35:
	.string	"_old_offset"
.LASF40:
	.string	"_offset"
.LASF16:
	.string	"timezone"
.LASF49:
	.string	"_IO_marker"
.LASF56:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF61:
	.string	"newList"
.LASF3:
	.string	"long unsigned int"
.LASF63:
	.string	"_IO_FILE_plus"
.LASF24:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"sys_nerr"
.LASF51:
	.string	"_sbuf"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"_IO_save_base"
.LASF39:
	.string	"_lock"
.LASF34:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF57:
	.string	"stdout"
.LASF53:
	.string	"_IO_2_1_stdin_"
.LASF25:
	.string	"_IO_write_end"
.LASF68:
	.string	"_IO_lock_t"
.LASF48:
	.string	"_IO_FILE"
.LASF12:
	.string	"__daylight"
.LASF65:
	.string	"GNU C89 7.3.0 -mtune=generic -march=x86-64 -g -O0 -std=gnu90 -fstack-protector-strong"
.LASF52:
	.string	"_pos"
.LASF60:
	.string	"sys_errlist"
.LASF31:
	.string	"_markers"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF37:
	.string	"_vtable_offset"
.LASF14:
	.string	"tzname"
.LASF54:
	.string	"_IO_2_1_stdout_"
.LASF66:
	.string	"source/program.c"
.LASF15:
	.string	"daylight"
.LASF9:
	.string	"char"
.LASF50:
	.string	"_next"
.LASF8:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_read_base"
.LASF30:
	.string	"_IO_save_end"
.LASF41:
	.string	"__pad1"
.LASF42:
	.string	"__pad2"
.LASF43:
	.string	"__pad3"
.LASF44:
	.string	"__pad4"
.LASF45:
	.string	"__pad5"
.LASF47:
	.string	"_unused2"
.LASF58:
	.string	"stderr"
.LASF29:
	.string	"_IO_backup_base"
.LASF64:
	.string	"list"
.LASF11:
	.string	"__tzname"
.LASF69:
	.string	"main"
.LASF23:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
