	.file	"list.c"
	.text
.Ltext0:
	.globl	assign_list
	.type	assign_list, @function
assign_list:
.LFB5:
	.file 1 "source/list.c"
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 48 0
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L2
	.loc 1 49 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L2
	.loc 1 50 0
	cmpq	$0, -16(%rbp)
	je	.L2
	.loc 1 51 0
	cmpq	$0, -8(%rbp)
	jne	.L3
.L2:
	.loc 1 57 0
	movl	$0, %eax
	jmp	.L4
.L3:
	.loc 1 59 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	.loc 1 65 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list
	.loc 1 66 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L4
.L5:
	.loc 1 68 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L6
	.loc 1 75 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list
.L6:
	.loc 1 82 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	copy_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 83 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L4:
	.loc 1 84 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	assign_list, .-assign_list
	.globl	copy_list
	.type	copy_list, @function
copy_list:
.LFB6:
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	.loc 1 86 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 90 0
	cmpq	$0, -56(%rbp)
	je	.L8
	.loc 1 90 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
.L8:
	.loc 1 91 0
	movl	$0, %eax
	jmp	.L17
.L9:
	.loc 1 94 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_rdlock@PLT
	.loc 1 99 0
	call	create_list
	movq	%rax, -48(%rbp)
	.loc 1 100 0
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L11
	.loc 1 102 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 101 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 103 0
	movl	$0, %eax
	jmp	.L17
.L11:
	.loc 1 110 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L12
	.loc 1 112 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 111 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 113 0
	movq	-48(%rbp), %rax
	jmp	.L17
.L12:
	.loc 1 122 0
	movq	-48(%rbp), %rbx
	.loc 1 123 0
	movl	$16, %edi
	call	malloc@PLT
	.loc 1 122 0
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L13
	.loc 1 125 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 124 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 126 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list
	.loc 1 127 0
	movl	$0, %eax
	jmp	.L17
.L13:
	.loc 1 130 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	.loc 1 131 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 132 0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 142 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	.loc 1 141 0
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 143 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 144 0
	jmp	.L14
.L16:
	.loc 1 147 0
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 1 146 0
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	.loc 1 149 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 148 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 150 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list
	.loc 1 151 0
	movl	$0, %eax
	jmp	.L17
.L15:
	.loc 1 154 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 155 0
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 1 154 0
	movq	%rdx, (%rax)
	.loc 1 156 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 157 0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 159 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 160 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L14:
	.loc 1 144 0
	cmpq	$0, -40(%rbp)
	jne	.L16
	.loc 1 163 0
	movq	$0, -40(%rbp)
	.loc 1 164 0
	movq	$0, -32(%rbp)
	.loc 1 165 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 167 0
	movq	-48(%rbp), %rax
.L17:
	.loc 1 168 0 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L18
	.loc 1 168 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L18:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	copy_list, .-copy_list
	.globl	create_list
	.type	create_list, @function
create_list:
.LFB7:
	.loc 1 170 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 171 0
	movq	$0, -8(%rbp)
	.loc 1 173 0
	movl	$72, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	.loc 1 175 0
	movl	$0, %eax
	jmp	.L21
.L20:
	.loc 1 178 0
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 179 0
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 180 0
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_rwlock_init@PLT
	.loc 1 181 0
	movq	-8(%rbp), %rax
.L21:
	.loc 1 182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	create_list, .-create_list
	.globl	destroy_list
	.type	destroy_list, @function
destroy_list:
.LFB8:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 188 0
	cmpq	$0, -24(%rbp)
	je	.L23
	.loc 1 188 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
.L23:
	.loc 1 189 0
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 1 192 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 202 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 203 0
	jmp	.L26
.L27:
	.loc 1 205 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	.loc 1 204 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 205 0
	movq	8(%rdx), %rdx
	.loc 1 204 0
	movq	%rdx, (%rax)
	.loc 1 206 0
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 207 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 208 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 209 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L26:
	.loc 1 203 0
	cmpq	$0, -8(%rbp)
	jne	.L27
	.loc 1 212 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 213 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_destroy@PLT
	.loc 1 215 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 216 0
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 217 0
	movl	$1, %eax
.L25:
	.loc 1 218 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	destroy_list, .-destroy_list
	.globl	get_length_list
	.type	get_length_list, @function
get_length_list:
.LFB9:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 224 0
	cmpq	$0, -24(%rbp)
	je	.L29
	.loc 1 224 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
.L29:
	.loc 1 225 0
	movq	$-1, %rax
	jmp	.L31
.L30:
	.loc 1 233 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_rdlock@PLT
	.loc 1 234 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 235 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 237 0
	movq	-8(%rbp), %rax
.L31:
	.loc 1 238 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_length_list, .-get_length_list
	.globl	insert_link_list
	.type	insert_link_list, @function
insert_link_list:
.LFB10:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 1 245 0
	cmpq	$0, -56(%rbp)
	je	.L33
	.loc 1 245 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	.loc 1 246 0
	movl	$0, %eax
	jmp	.L35
.L34:
	.loc 1 249 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 254 0
	cmpq	$0, -72(%rbp)
	js	.L36
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.L36
	.loc 1 255 0 is_stmt 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -72(%rbp)
	jle	.L37
.L36:
	.loc 1 257 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 256 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 258 0
	movl	$0, %eax
	jmp	.L35
.L37:
	.loc 1 261 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 262 0
	cmpq	$0, -72(%rbp)
	jg	.L38
	.loc 1 268 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	.loc 1 269 0
	movl	$16, %edi
	call	malloc@PLT
	.loc 1 268 0
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L39
	.loc 1 270 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 271 0
	movq	$0, -24(%rbp)
	.loc 1 273 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 272 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 274 0
	movl	$0, %eax
	jmp	.L35
.L39:
	.loc 1 277 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 278 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L40
.L38:
.LBB2:
	.loc 1 292 0
	movq	$1, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 1 293 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 292 0
	jmp	.L41
.L43:
	.loc 1 295 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 296 0
	addq	$1, -32(%rbp)
.L41:
	.loc 1 292 0
	cmpq	$0, -40(%rbp)
	je	.L42
	.loc 1 294 0
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.L43
.L42:
	.loc 1 301 0
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L44
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)
	jne	.L45
.L44:
	.loc 1 302 0 is_stmt 1
	movq	$0, -40(%rbp)
	.loc 1 304 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 303 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 305 0
	movl	$0, %eax
	jmp	.L35
.L45:
	.loc 1 312 0
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	.loc 1 314 0
	movq	$0, -40(%rbp)
	.loc 1 316 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 315 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 317 0
	movl	$0, %eax
	jmp	.L35
.L46:
	.loc 1 320 0
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 321 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 322 0
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 323 0
	movq	$0, -40(%rbp)
.L40:
.LBE2:
	.loc 1 329 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 330 0
	movq	$0, -24(%rbp)
	.loc 1 331 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 333 0
	movl	$1, %eax
.L35:
	.loc 1 334 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	insert_link_list, .-insert_link_list
	.section	.rodata
.LC0:
	.string	"\n( listHead) -> "
.LC1:
	.string	"0x%lX -> "
.LC2:
	.string	"( NULL) { listLength = %ld}\n\n"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB11:
	.loc 1 336 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 337 0
	cmpq	$0, -24(%rbp)
	je	.L48
	.loc 1 337 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
.L48:
	.loc 1 338 0
	movl	$0, %eax
	jmp	.L50
.L49:
	.loc 1 341 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_rdlock@PLT
	.loc 1 343 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 344 0
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 345 0
	jmp	.L51
.L52:
	.loc 1 346 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 347 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L51:
	.loc 1 345 0
	cmpq	$0, -8(%rbp)
	jne	.L52
	.loc 1 350 0
	movq	$0, -8(%rbp)
	.loc 1 352 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 351 0
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 353 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 355 0
	movl	$1, %eax
.L50:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_list, .-print_list
	.globl	remove_duplicates_list
	.type	remove_duplicates_list, @function
remove_duplicates_list:
.LFB12:
	.loc 1 358 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 360 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 362 0
	cmpq	$0, -24(%rbp)
	je	.L54
	.loc 1 362 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	.loc 1 363 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L55
.L54:
	.loc 1 365 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 364 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 366 0
	movl	$0, %eax
	jmp	.L56
.L55:
	.loc 1 369 0
	movq	$0, -8(%rbp)
	.loc 1 370 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 372 0
	jmp	.L57
.L59:
	.loc 1 373 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 374 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	.loc 1 373 0
	cmpq	%rax, %rdx
	jne	.L58
	.loc 1 375 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 376 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 377 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 378 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 379 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 380 0
	movq	$0, -8(%rbp)
	jmp	.L57
.L58:
	.loc 1 383 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L57:
	.loc 1 372 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	.loc 1 387 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 388 0
	movl	$1, %eax
.L56:
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	remove_duplicates_list, .-remove_duplicates_list
	.globl	remove_link_list
	.type	remove_link_list, @function
remove_link_list:
.LFB13:
	.loc 1 392 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 396 0
	cmpq	$0, -40(%rbp)
	je	.L61
	.loc 1 396 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L62
.L61:
	.loc 1 397 0
	movl	$0, %eax
	jmp	.L63
.L62:
	.loc 1 400 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 405 0
	cmpq	$0, -56(%rbp)
	js	.L64
	.loc 1 405 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jl	.L65
.L64:
	.loc 1 407 0 is_stmt 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 406 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 408 0
	movl	$0, %eax
	jmp	.L63
.L65:
	.loc 1 411 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 412 0
	cmpq	$0, -56(%rbp)
	jg	.L66
	.loc 1 421 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L67
	.loc 1 422 0
	movq	$0, -24(%rbp)
	.loc 1 424 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 423 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 425 0
	movl	$0, %eax
	jmp	.L63
.L67:
	.loc 1 428 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	.loc 1 429 0
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 430 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 432 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 431 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 433 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 434 0
	movq	$0, -24(%rbp)
	.loc 1 435 0
	movl	$1, %eax
	jmp	.L63
.L66:
.LBB3:
	.loc 1 445 0
	movq	$1, -16(%rbp)
	jmp	.L68
.L70:
	.loc 1 447 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L68:
	.loc 1 445 0 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L69
	.loc 1 446 0
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L70
.L69:
	.loc 1 452 0
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L71
	.loc 1 452 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L72
.L71:
	.loc 1 453 0 is_stmt 1
	movq	$0, -24(%rbp)
	.loc 1 455 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 454 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 456 0
	movl	$0, %eax
	jmp	.L63
.L72:
	.loc 1 465 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L73
.LBB4:
	.loc 1 467 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 466 0
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 468 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 469 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 470 0
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 471 0
	movq	$0, -8(%rbp)
	.loc 1 472 0
	movq	$0, -24(%rbp)
	.loc 1 473 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 475 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 474 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 476 0
	movl	$1, %eax
	jmp	.L63
.L73:
.LBE4:
.LBE3:
	.loc 1 480 0
	movq	$0, -24(%rbp)
	.loc 1 481 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 483 0
	movl	$0, %eax
.L63:
	.loc 1 484 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	remove_link_list, .-remove_link_list
	.globl	sort_list
	.type	sort_list, @function
sort_list:
.LFB14:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	.loc 1 488 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 493 0
	cmpq	$0, -120(%rbp)
	je	.L75
	.loc 1 493 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L75
	.loc 1 494 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L76
.L75:
	.loc 1 496 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 495 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 497 0
	movl	$0, %eax
	jmp	.L77
.L76:
	.loc 1 506 0
	movq	$0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 1 509 0
	movq	$1, -64(%rbp)
	jmp	.L78
.L99:
	.loc 1 510 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc 1 511 0
	jmp	.L79
.L98:
.LBB5:
	.loc 1 516 0
	movb	$0, -105(%rbp)
	.loc 1 517 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -104(%rbp)
	jne	.L80
	.loc 1 518 0
	movb	$1, -105(%rbp)
.L80:
	.loc 1 524 0
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 525 0
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 526 0
	jmp	.L81
.L83:
	.loc 1 527 0
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.L81:
	.loc 1 526 0
	subq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L82
	.loc 1 526 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L83
.L82:
	.loc 1 533 0 is_stmt 1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 1 534 0
	cmpq	$0, -96(%rbp)
	je	.L100
	.loc 1 537 0
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 538 0
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 539 0
	jmp	.L86
.L88:
	.loc 1 540 0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.L86:
	.loc 1 539 0
	subq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L87
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L88
.L87:
	.loc 1 547 0 is_stmt 1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 557 0
	movq	$0, -24(%rbp)
	.loc 1 558 0
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 559 0
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 558 0
	cmpq	%rax, %rdx
	jle	.L89
	.loc 1 560 0
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 561 0
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 1 562 0
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 1 563 0
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 564 0
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 565 0
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 566 0
	movq	$0, -24(%rbp)
.L89:
	.loc 1 573 0
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 574 0
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 575 0
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 576 0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 578 0
	jmp	.L90
.L93:
	.loc 1 581 0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	.loc 1 582 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 581 0
	cmpq	%rax, %rdx
	jle	.L91
	.loc 1 583 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 586 0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 585 0
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 587 0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 589 0
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.L91:
	.loc 1 592 0
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.L90:
	.loc 1 578 0
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L92
	.loc 1 579 0
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L93
.L92:
	.loc 1 595 0
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L94
	.loc 1 596 0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L95
.L94:
	.loc 1 599 0
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
.L95:
	.loc 1 607 0
	cmpb	$0, -105(%rbp)
	je	.L96
	.loc 1 608 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L97
.L96:
	.loc 1 611 0
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L97:
	.loc 1 614 0
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 1 615 0
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
.L79:
.LBE5:
	.loc 1 511 0
	cmpq	$0, -104(%rbp)
	jne	.L98
	jmp	.L85
.L100:
.LBB6:
	.loc 1 535 0
	nop
.L85:
.LBE6:
	.loc 1 618 0 discriminator 2
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 509 0 discriminator 2
	salq	-64(%rbp)
.L78:
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jl	.L99
	.loc 1 621 0 is_stmt 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 622 0
	movl	$1, %eax
.L77:
	.loc 1 623 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sort_list, .-sort_list
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF119
	.byte	0x1
	.long	.LASF120
	.long	.LASF121
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
	.long	0x5e
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x8d
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x88
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	0x88
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xd8
	.long	0x42
	.uleb128 0x7
	.byte	0x8
	.long	0x8f
	.uleb128 0x4
	.long	0x9f
	.uleb128 0x8
	.long	0x82
	.long	0xba
	.uleb128 0x9
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF11
	.byte	0x4
	.byte	0x9f
	.long	0xaa
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
	.long	0xaa
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
	.uleb128 0xb
	.long	.LASF35
	.byte	0x38
	.byte	0x5
	.byte	0x41
	.long	0x199
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x43
	.long	0x3b
	.byte	0
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x44
	.long	0x3b
	.byte	0x4
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x45
	.long	0x3b
	.byte	0x8
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x46
	.long	0x3b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x47
	.long	0x3b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x48
	.long	0x3b
	.byte	0x14
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x4a
	.long	0x57
	.byte	0x18
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x4b
	.long	0x57
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x4c
	.long	0x49
	.byte	0x20
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x51
	.long	0x199
	.byte	0x21
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x54
	.long	0x42
	.byte	0x28
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x57
	.long	0x3b
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x2d
	.long	0x1a9
	.uleb128 0x9
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF29
	.uleb128 0x8
	.long	0x88
	.long	0x1c0
	.uleb128 0x9
	.long	0x42
	.byte	0x37
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF30
	.uleb128 0xd
	.byte	0x38
	.byte	0x6
	.byte	0x56
	.long	0x1f1
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x58
	.long	0xfc
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x59
	.long	0x1b0
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x5a
	.long	0x5e
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x6
	.byte	0x5b
	.long	0x1c7
	.uleb128 0xb
	.long	.LASF36
	.byte	0xd8
	.byte	0x7
	.byte	0xf5
	.long	0x37c
	.uleb128 0xc
	.long	.LASF37
	.byte	0x7
	.byte	0xf6
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x7
	.byte	0xfb
	.long	0x82
	.byte	0x8
	.uleb128 0xc
	.long	.LASF39
	.byte	0x7
	.byte	0xfc
	.long	0x82
	.byte	0x10
	.uleb128 0xc
	.long	.LASF40
	.byte	0x7
	.byte	0xfd
	.long	0x82
	.byte	0x18
	.uleb128 0xc
	.long	.LASF41
	.byte	0x7
	.byte	0xfe
	.long	0x82
	.byte	0x20
	.uleb128 0xc
	.long	.LASF42
	.byte	0x7
	.byte	0xff
	.long	0x82
	.byte	0x28
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x100
	.long	0x82
	.byte	0x30
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.value	0x101
	.long	0x82
	.byte	0x38
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.value	0x102
	.long	0x82
	.byte	0x40
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.value	0x104
	.long	0x82
	.byte	0x48
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.value	0x105
	.long	0x82
	.byte	0x50
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.value	0x106
	.long	0x82
	.byte	0x58
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.value	0x108
	.long	0x3b4
	.byte	0x60
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.value	0x10a
	.long	0x3ba
	.byte	0x68
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.value	0x10c
	.long	0x57
	.byte	0x70
	.uleb128 0xf
	.long	.LASF52
	.byte	0x7
	.value	0x110
	.long	0x57
	.byte	0x74
	.uleb128 0xf
	.long	.LASF53
	.byte	0x7
	.value	0x112
	.long	0x6a
	.byte	0x78
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.value	0x116
	.long	0x34
	.byte	0x80
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.value	0x117
	.long	0x49
	.byte	0x82
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.value	0x118
	.long	0x3c0
	.byte	0x83
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.value	0x11c
	.long	0x3d0
	.byte	0x88
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.value	0x125
	.long	0x75
	.byte	0x90
	.uleb128 0xf
	.long	.LASF26
	.byte	0x7
	.value	0x12d
	.long	0x80
	.byte	0x98
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x12e
	.long	0x80
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.value	0x12f
	.long	0x80
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.value	0x130
	.long	0x80
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF59
	.byte	0x7
	.value	0x132
	.long	0x94
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF60
	.byte	0x7
	.value	0x133
	.long	0x57
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x135
	.long	0x3d6
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF122
	.byte	0x7
	.byte	0x9a
	.uleb128 0xb
	.long	.LASF62
	.byte	0x18
	.byte	0x7
	.byte	0xa0
	.long	0x3b4
	.uleb128 0xc
	.long	.LASF63
	.byte	0x7
	.byte	0xa1
	.long	0x3b4
	.byte	0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x7
	.byte	0xa2
	.long	0x3ba
	.byte	0x8
	.uleb128 0xc
	.long	.LASF65
	.byte	0x7
	.byte	0xa6
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x383
	.uleb128 0x7
	.byte	0x8
	.long	0x1fc
	.uleb128 0x8
	.long	0x88
	.long	0x3d0
	.uleb128 0x9
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x37c
	.uleb128 0x8
	.long	0x88
	.long	0x3e6
	.uleb128 0x9
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF123
	.uleb128 0x12
	.long	.LASF66
	.byte	0x7
	.value	0x13f
	.long	0x3e6
	.uleb128 0x12
	.long	.LASF67
	.byte	0x7
	.value	0x140
	.long	0x3e6
	.uleb128 0x12
	.long	.LASF68
	.byte	0x7
	.value	0x141
	.long	0x3e6
	.uleb128 0xa
	.long	.LASF69
	.byte	0x8
	.byte	0x87
	.long	0x3ba
	.uleb128 0xa
	.long	.LASF70
	.byte	0x8
	.byte	0x88
	.long	0x3ba
	.uleb128 0xa
	.long	.LASF71
	.byte	0x8
	.byte	0x89
	.long	0x3ba
	.uleb128 0xa
	.long	.LASF72
	.byte	0x9
	.byte	0x1a
	.long	0x57
	.uleb128 0x8
	.long	0xa5
	.long	0x446
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.uleb128 0xa
	.long	.LASF73
	.byte	0x9
	.byte	0x1b
	.long	0x446
	.uleb128 0xb
	.long	.LASF74
	.byte	0x10
	.byte	0x1
	.byte	0x23
	.long	0x47b
	.uleb128 0xc
	.long	.LASF75
	.byte	0x1
	.byte	0x24
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF76
	.byte	0x1
	.byte	0x25
	.long	0x47b
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x456
	.uleb128 0xb
	.long	.LASF77
	.byte	0x48
	.byte	0x1
	.byte	0x28
	.long	0x4b2
	.uleb128 0xc
	.long	.LASF78
	.byte	0x1
	.byte	0x29
	.long	0x47b
	.byte	0
	.uleb128 0xc
	.long	.LASF79
	.byte	0x1
	.byte	0x2a
	.long	0x5e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.byte	0x2b
	.long	0x1f1
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.value	0x1e6
	.long	0x88
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c3
	.uleb128 0x15
	.long	.LASF96
	.byte	0x1
	.value	0x1e6
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.value	0x1f8
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x1f8
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.value	0x1f8
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.value	0x1f9
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.value	0x1f9
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1fc
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.Ldebug_ranges0+0
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.value	0x204
	.long	0x88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x20c
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.value	0x223
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x22d
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.value	0x23d
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.value	0x23e
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x23f
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.value	0x240
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5ce
	.uleb128 0x4
	.long	0x5c3
	.uleb128 0x7
	.byte	0x8
	.long	0x481
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.value	0x187
	.long	0x88
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x676
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.value	0x187
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF98
	.byte	0x1
	.value	0x188
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.value	0x188
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x19b
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x1bc
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x1d2
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF102
	.byte	0x1
	.value	0x166
	.long	0x88
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c6
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.value	0x166
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x171
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x172
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF103
	.byte	0x1
	.value	0x150
	.long	0x88
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x707
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.value	0x150
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x157
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.byte	0xf0
	.long	0x88
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x795
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.byte	0xf0
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0xf1
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0xf1
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x105
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x121
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x122
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.byte	0xdc
	.long	0x5e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d3
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.byte	0xdc
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x1
	.byte	0xea
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.byte	0xb8
	.long	0x88
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x811
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.byte	0xb8
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF100
	.byte	0x1
	.byte	0xca
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.byte	0xaa
	.long	0x5ce
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x841
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.byte	0xab
	.long	0x5ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.byte	0x56
	.long	0x5ce
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x89c
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.byte	0x56
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.byte	0x63
	.long	0x5ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x1
	.byte	0x8d
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x1
	.byte	0x8f
	.long	0x47b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.byte	0x2e
	.long	0x5ce
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0x2e
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.byte	0x2f
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__off_t"
.LASF87:
	.string	"count"
.LASF38:
	.string	"_IO_read_ptr"
.LASF50:
	.string	"_chain"
.LASF95:
	.string	"remove_link_list"
.LASF10:
	.string	"size_t"
.LASF103:
	.string	"print_list"
.LASF33:
	.string	"__align"
.LASF56:
	.string	"_shortbuf"
.LASF106:
	.string	"previous"
.LASF32:
	.string	"__size"
.LASF96:
	.string	"sortIt"
.LASF68:
	.string	"_IO_2_1_stderr_"
.LASF44:
	.string	"_IO_buf_base"
.LASF29:
	.string	"long long unsigned int"
.LASF41:
	.string	"_IO_write_base"
.LASF42:
	.string	"_IO_write_ptr"
.LASF70:
	.string	"stdout"
.LASF104:
	.string	"insert_link_list"
.LASF76:
	.string	"next"
.LASF13:
	.string	"__timezone"
.LASF30:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF51:
	.string	"_fileno"
.LASF39:
	.string	"_IO_read_end"
.LASF116:
	.string	"newCurrent"
.LASF6:
	.string	"long int"
.LASF37:
	.string	"_flags"
.LASF45:
	.string	"_IO_buf_end"
.LASF69:
	.string	"stdin"
.LASF109:
	.string	"destroy_list"
.LASF78:
	.string	"head"
.LASF53:
	.string	"_old_offset"
.LASF58:
	.string	"_offset"
.LASF97:
	.string	"this"
.LASF74:
	.string	"link"
.LASF16:
	.string	"timezone"
.LASF117:
	.string	"assignTo"
.LASF113:
	.string	"copy_list"
.LASF18:
	.string	"__writers"
.LASF108:
	.string	"temp"
.LASF62:
	.string	"_IO_marker"
.LASF2:
	.string	"unsigned int"
.LASF112:
	.string	"newList"
.LASF20:
	.string	"__writers_futex"
.LASF3:
	.string	"long unsigned int"
.LASF123:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"insertIt"
.LASF31:
	.string	"__data"
.LASF120:
	.string	"source/list.c"
.LASF72:
	.string	"sys_nerr"
.LASF64:
	.string	"_sbuf"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"_IO_save_base"
.LASF57:
	.string	"_lock"
.LASF52:
	.string	"_flags2"
.LASF60:
	.string	"_mode"
.LASF23:
	.string	"__cur_writer"
.LASF66:
	.string	"_IO_2_1_stdin_"
.LASF115:
	.string	"copyItCurrent"
.LASF25:
	.string	"__rwelision"
.LASF86:
	.string	"firstIteration"
.LASF43:
	.string	"_IO_write_end"
.LASF34:
	.string	"pthread_rwlock_t"
.LASF84:
	.string	"end1"
.LASF122:
	.string	"_IO_lock_t"
.LASF36:
	.string	"_IO_FILE"
.LASF124:
	.string	"assign_list"
.LASF100:
	.string	"current"
.LASF12:
	.string	"__daylight"
.LASF119:
	.string	"GNU C89 7.3.0 -mtune=generic -march=x86-64 -g -O0 -std=gnu90 -fstack-protector-strong"
.LASF65:
	.string	"_pos"
.LASF73:
	.string	"sys_errlist"
.LASF49:
	.string	"_markers"
.LASF80:
	.string	"mutex"
.LASF28:
	.string	"__flags"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF88:
	.string	"temp0"
.LASF17:
	.string	"__readers"
.LASF55:
	.string	"_vtable_offset"
.LASF14:
	.string	"tzname"
.LASF67:
	.string	"_IO_2_1_stdout_"
.LASF75:
	.string	"value"
.LASF83:
	.string	"end0"
.LASF107:
	.string	"get_length_list"
.LASF92:
	.string	"end2"
.LASF101:
	.string	"after"
.LASF94:
	.string	"sort_list"
.LASF15:
	.string	"daylight"
.LASF89:
	.string	"temp1"
.LASF79:
	.string	"length"
.LASF9:
	.string	"char"
.LASF99:
	.string	"index"
.LASF111:
	.string	"create_list"
.LASF85:
	.string	"before"
.LASF63:
	.string	"_next"
.LASF8:
	.string	"__off64_t"
.LASF102:
	.string	"remove_duplicates_list"
.LASF54:
	.string	"_cur_column"
.LASF40:
	.string	"_IO_read_base"
.LASF121:
	.string	"/home/cepexa/Desktop/new_program"
.LASF48:
	.string	"_IO_save_end"
.LASF35:
	.string	"__pthread_rwlock_arch_t"
.LASF24:
	.string	"__shared"
.LASF26:
	.string	"__pad1"
.LASF27:
	.string	"__pad2"
.LASF21:
	.string	"__pad3"
.LASF22:
	.string	"__pad4"
.LASF59:
	.string	"__pad5"
.LASF61:
	.string	"_unused2"
.LASF71:
	.string	"stderr"
.LASF93:
	.string	"beforeEndNext"
.LASF47:
	.string	"_IO_backup_base"
.LASF110:
	.string	"destroyIt"
.LASF114:
	.string	"copyIt"
.LASF19:
	.string	"__wrphase_futex"
.LASF77:
	.string	"list"
.LASF11:
	.string	"__tzname"
.LASF98:
	.string	"deleteIt"
.LASF81:
	.string	"start0"
.LASF82:
	.string	"start1"
.LASF90:
	.string	"start2"
.LASF91:
	.string	"start3"
.LASF118:
	.string	"assignIt"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
