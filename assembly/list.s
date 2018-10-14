	.file	"list.c"
	.text
.Ltext0:
	.globl	assign_list
	.type	assign_list, @function
assign_list:
.LFB2:
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
.LFE2:
	.size	assign_list, .-assign_list
	.globl	copy_list
	.type	copy_list, @function
copy_list:
.LFB3:
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
	movq	%rax, -40(%rbp)
	.loc 1 100 0
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	jmp	.L17
.L12:
	.loc 1 122 0
	movq	-40(%rbp), %rbx
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
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_list
	.loc 1 127 0
	movl	$0, %eax
	jmp	.L17
.L13:
	.loc 1 130 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	.loc 1 131 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 132 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 142 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	.loc 1 141 0
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 143 0
	movq	-40(%rbp), %rax
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
	leaq	-40(%rbp), %rax
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
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 1 154 0
	movq	%rdx, (%rax)
	.loc 1 156 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 157 0
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 159 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 160 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L14:
	.loc 1 144 0
	cmpq	$0, -24(%rbp)
	jne	.L16
	.loc 1 163 0
	movq	$0, -24(%rbp)
	.loc 1 164 0
	movq	$0, -32(%rbp)
	.loc 1 165 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 167 0
	movq	-40(%rbp), %rax
.L17:
	.loc 1 168 0 discriminator 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	copy_list, .-copy_list
	.globl	create_list
	.type	create_list, @function
create_list:
.LFB4:
	.loc 1 170 0
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
	jne	.L19
	.loc 1 175 0
	movl	$0, %eax
	jmp	.L20
.L19:
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
.L20:
	.loc 1 182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_list, .-create_list
	.globl	destroy_list
	.type	destroy_list, @function
destroy_list:
.LFB5:
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
	je	.L22
	.loc 1 188 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	.loc 1 189 0
	movl	$0, %eax
	jmp	.L24
.L23:
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
	jmp	.L25
.L26:
	.loc 1 204 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 205 0
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
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
.L25:
	.loc 1 203 0
	cmpq	$0, -8(%rbp)
	jne	.L26
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
.L24:
	.loc 1 218 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	destroy_list, .-destroy_list
	.globl	get_length_list
	.type	get_length_list, @function
get_length_list:
.LFB6:
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
	je	.L28
	.loc 1 224 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
.L28:
	.loc 1 225 0
	movq	$-1, %rax
	jmp	.L30
.L29:
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
.L30:
	.loc 1 238 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_length_list, .-get_length_list
	.globl	insert_link_list
	.type	insert_link_list, @function
insert_link_list:
.LFB7:
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
	je	.L32
	.loc 1 245 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	.loc 1 246 0
	movl	$0, %eax
	jmp	.L34
.L33:
	.loc 1 249 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 254 0
	cmpq	$0, -72(%rbp)
	js	.L35
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.L35
	.loc 1 255 0 is_stmt 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-72(%rbp), %rax
	jge	.L36
.L35:
	.loc 1 257 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 256 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 258 0
	movl	$0, %eax
	jmp	.L34
.L36:
	.loc 1 261 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 262 0
	cmpq	$0, -72(%rbp)
	jg	.L37
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
	jne	.L38
	.loc 1 270 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 271 0
	movq	$0, -40(%rbp)
	.loc 1 273 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 272 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 274 0
	movl	$0, %eax
	jmp	.L34
.L38:
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
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L39
.L37:
.LBB2:
	.loc 1 292 0
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	.loc 1 293 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 292 0
	jmp	.L40
.L42:
	.loc 1 295 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 296 0
	addq	$1, -32(%rbp)
.L40:
	.loc 1 292 0
	cmpq	$0, -24(%rbp)
	je	.L41
	.loc 1 294 0
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.L42
.L41:
	.loc 1 301 0
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L43
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L44
.L43:
	.loc 1 302 0 is_stmt 1
	movq	$0, -24(%rbp)
	.loc 1 304 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 303 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 305 0
	movl	$0, %eax
	jmp	.L34
.L44:
	.loc 1 312 0
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L45
	.loc 1 314 0
	movq	$0, -24(%rbp)
	.loc 1 316 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 315 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 317 0
	movl	$0, %eax
	jmp	.L34
.L45:
	.loc 1 320 0
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 321 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 322 0
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 323 0
	movq	$0, -24(%rbp)
.L39:
.LBE2:
	.loc 1 329 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 330 0
	movq	$0, -40(%rbp)
	.loc 1 331 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 333 0
	movl	$1, %eax
.L34:
	.loc 1 334 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
.LFB8:
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
	je	.L47
	.loc 1 337 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L48
.L47:
	.loc 1 338 0
	movl	$0, %eax
	jmp	.L49
.L48:
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
	jmp	.L50
.L51:
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
.L50:
	.loc 1 345 0
	cmpq	$0, -8(%rbp)
	jne	.L51
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
.L49:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	print_list, .-print_list
	.globl	remove_duplicates_list
	.type	remove_duplicates_list, @function
remove_duplicates_list:
.LFB9:
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
	je	.L53
	.loc 1 362 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	.loc 1 363 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	.loc 1 365 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 364 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 366 0
	movl	$0, %eax
	jmp	.L55
.L54:
	.loc 1 369 0
	movq	$0, -16(%rbp)
	.loc 1 370 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 372 0
	jmp	.L56
.L58:
	.loc 1 373 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 374 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	.loc 1 373 0
	cmpq	%rax, %rdx
	jne	.L57
	.loc 1 375 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 376 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 377 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 378 0
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 379 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 380 0
	movq	$0, -16(%rbp)
	jmp	.L56
.L57:
	.loc 1 383 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L56:
	.loc 1 372 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	.loc 1 387 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 388 0
	movl	$1, %eax
.L55:
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	remove_duplicates_list, .-remove_duplicates_list
	.globl	remove_link_list
	.type	remove_link_list, @function
remove_link_list:
.LFB10:
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
	je	.L60
	.loc 1 396 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L61
.L60:
	.loc 1 397 0
	movl	$0, %eax
	jmp	.L62
.L61:
	.loc 1 400 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_wrlock@PLT
	.loc 1 405 0
	cmpq	$0, -56(%rbp)
	js	.L63
	.loc 1 405 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	jg	.L64
.L63:
	.loc 1 407 0 is_stmt 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 406 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 408 0
	movl	$0, %eax
	jmp	.L62
.L64:
	.loc 1 411 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 412 0
	cmpq	$0, -56(%rbp)
	jg	.L65
	.loc 1 421 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.L66
	.loc 1 422 0
	movq	$0, -8(%rbp)
	.loc 1 424 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 423 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 425 0
	movl	$0, %eax
	jmp	.L62
.L66:
	.loc 1 428 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	.loc 1 429 0
	movq	-8(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 434 0
	movq	$0, -8(%rbp)
	.loc 1 435 0
	movl	$1, %eax
	jmp	.L62
.L65:
.LBB3:
	.loc 1 445 0
	movq	$1, -16(%rbp)
	jmp	.L67
.L69:
	.loc 1 447 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L67:
	.loc 1 445 0 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L68
	.loc 1 446 0
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L69
.L68:
	.loc 1 452 0
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L70
	.loc 1 452 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L71
.L70:
	.loc 1 453 0 is_stmt 1
	movq	$0, -8(%rbp)
	.loc 1 455 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 454 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 456 0
	movl	$0, %eax
	jmp	.L62
.L71:
	.loc 1 465 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L72
.LBB4:
	.loc 1 467 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 466 0
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 468 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	.loc 1 469 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 470 0
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 471 0
	movq	$0, -24(%rbp)
	.loc 1 472 0
	movq	$0, -8(%rbp)
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
	jmp	.L62
.L72:
.LBE4:
.LBE3:
	.loc 1 480 0
	movq	$0, -8(%rbp)
	.loc 1 481 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 483 0
	movl	$0, %eax
.L62:
	.loc 1 484 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	remove_link_list, .-remove_link_list
	.globl	sort_list
	.type	sort_list, @function
sort_list:
.LFB11:
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
	je	.L74
	.loc 1 493 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
	.loc 1 494 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L75
.L74:
	.loc 1 496 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 495 0
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 497 0
	movl	$0, %eax
	jmp	.L76
.L75:
	.loc 1 506 0
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 509 0
	movq	$1, -48(%rbp)
	jmp	.L77
.L98:
	.loc 1 510 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 511 0
	jmp	.L78
.L97:
.LBB5:
	.loc 1 516 0
	movb	$0, -49(%rbp)
	.loc 1 517 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L79
	.loc 1 518 0
	movb	$1, -49(%rbp)
.L79:
	.loc 1 524 0
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 1 525 0
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 526 0
	jmp	.L80
.L82:
	.loc 1 527 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L80:
	.loc 1 526 0
	subq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L81
	.loc 1 526 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L82
.L81:
	.loc 1 533 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 534 0
	cmpq	$0, -16(%rbp)
	je	.L99
	.loc 1 537 0
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 1 538 0
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 539 0
	jmp	.L85
.L87:
	.loc 1 540 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L85:
	.loc 1 539 0
	subq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L86
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L87
.L86:
	.loc 1 547 0 is_stmt 1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 1 557 0
	movq	$0, -96(%rbp)
	.loc 1 558 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 559 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 558 0
	cmpq	%rax, %rdx
	jle	.L88
	.loc 1 560 0
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 1 561 0
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 562 0
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 563 0
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 1 564 0
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 565 0
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 566 0
	movq	$0, -96(%rbp)
.L88:
	.loc 1 573 0
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 1 574 0
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 575 0
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 1 576 0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	.loc 1 578 0
	jmp	.L89
.L92:
	.loc 1 581 0
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	.loc 1 582 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 581 0
	cmpq	%rax, %rdx
	jle	.L90
	.loc 1 583 0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 1 586 0
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 585 0
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 587 0
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 589 0
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
.L90:
	.loc 1 592 0
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.L89:
	.loc 1 578 0
	movq	-72(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L91
	.loc 1 579 0
	movq	-80(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.L92
.L91:
	.loc 1 595 0
	movq	-72(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L93
	.loc 1 596 0
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L94
.L93:
	.loc 1 599 0
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L94:
	.loc 1 607 0
	cmpb	$0, -49(%rbp)
	je	.L95
	.loc 1 608 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L96
.L95:
	.loc 1 611 0
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L96:
	.loc 1 614 0
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 615 0
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.L78:
.LBE5:
	.loc 1 511 0
	cmpq	$0, -8(%rbp)
	jne	.L97
	jmp	.L84
.L99:
.LBB6:
	.loc 1 535 0
	nop
.L84:
.LBE6:
	.loc 1 618 0 discriminator 2
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 509 0 discriminator 2
	salq	-48(%rbp)
.L77:
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jg	.L98
	.loc 1 621 0 is_stmt 1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	pthread_rwlock_unlock@PLT
	.loc 1 622 0
	movl	$1, %eax
.L76:
	.loc 1 623 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	sort_list, .-sort_list
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF121
	.byte	0x1
	.long	.LASF122
	.long	.LASF123
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
	.byte	0x83
	.long	0x5e
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x84
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x8f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xd8
	.long	0x42
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x4
	.long	0xa6
	.uleb128 0x8
	.long	0x89
	.long	0xc1
	.uleb128 0x9
	.long	0x80
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
	.long	0x57
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.value	0x11c
	.long	0x5e
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.value	0x121
	.long	0xb1
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x129
	.long	0x57
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x12a
	.long	0x5e
	.uleb128 0x8
	.long	0x8f
	.long	0x119
	.uleb128 0x9
	.long	0x80
	.byte	0x37
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF19
	.uleb128 0xb
	.byte	0x38
	.byte	0x5
	.byte	0xb1
	.long	0x1c0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0xb3
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0xb4
	.long	0x3b
	.byte	0x4
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0xb5
	.long	0x3b
	.byte	0x8
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0xb6
	.long	0x3b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0xb7
	.long	0x3b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0xb8
	.long	0x3b
	.byte	0x14
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0xb9
	.long	0x57
	.byte	0x18
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0xba
	.long	0x57
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0xbb
	.long	0x49
	.byte	0x20
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0xc0
	.long	0x1c0
	.byte	0x21
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0xc3
	.long	0x42
	.byte	0x28
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0xc6
	.long	0x3b
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x2d
	.long	0x1d0
	.uleb128 0x9
	.long	0x80
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x38
	.byte	0x5
	.byte	0xae
	.long	0x1fa
	.uleb128 0xe
	.long	.LASF32
	.byte	0x5
	.byte	0xc8
	.long	0x127
	.uleb128 0xe
	.long	.LASF33
	.byte	0x5
	.byte	0xdc
	.long	0x109
	.uleb128 0xe
	.long	.LASF34
	.byte	0x5
	.byte	0xdd
	.long	0x5e
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x5
	.byte	0xde
	.long	0x1d0
	.uleb128 0xf
	.long	.LASF63
	.byte	0xd8
	.byte	0x6
	.byte	0xf1
	.long	0x382
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0xf2
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0xf7
	.long	0x89
	.byte	0x8
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0xf8
	.long	0x89
	.byte	0x10
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0xf9
	.long	0x89
	.byte	0x18
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0xfa
	.long	0x89
	.byte	0x20
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0xfb
	.long	0x89
	.byte	0x28
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0xfc
	.long	0x89
	.byte	0x30
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.byte	0xfd
	.long	0x89
	.byte	0x38
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.byte	0xfe
	.long	0x89
	.byte	0x40
	.uleb128 0x10
	.long	.LASF45
	.byte	0x6
	.value	0x100
	.long	0x89
	.byte	0x48
	.uleb128 0x10
	.long	.LASF46
	.byte	0x6
	.value	0x101
	.long	0x89
	.byte	0x50
	.uleb128 0x10
	.long	.LASF47
	.byte	0x6
	.value	0x102
	.long	0x89
	.byte	0x58
	.uleb128 0x10
	.long	.LASF48
	.byte	0x6
	.value	0x104
	.long	0x3ba
	.byte	0x60
	.uleb128 0x10
	.long	.LASF49
	.byte	0x6
	.value	0x106
	.long	0x3c0
	.byte	0x68
	.uleb128 0x10
	.long	.LASF50
	.byte	0x6
	.value	0x108
	.long	0x57
	.byte	0x70
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.value	0x10c
	.long	0x57
	.byte	0x74
	.uleb128 0x10
	.long	.LASF52
	.byte	0x6
	.value	0x10e
	.long	0x6a
	.byte	0x78
	.uleb128 0x10
	.long	.LASF53
	.byte	0x6
	.value	0x112
	.long	0x34
	.byte	0x80
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.value	0x113
	.long	0x49
	.byte	0x82
	.uleb128 0x10
	.long	.LASF55
	.byte	0x6
	.value	0x114
	.long	0x3c6
	.byte	0x83
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.value	0x118
	.long	0x3d6
	.byte	0x88
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.value	0x121
	.long	0x75
	.byte	0x90
	.uleb128 0x10
	.long	.LASF29
	.byte	0x6
	.value	0x129
	.long	0x87
	.byte	0x98
	.uleb128 0x10
	.long	.LASF30
	.byte	0x6
	.value	0x12a
	.long	0x87
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.value	0x12b
	.long	0x87
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF59
	.byte	0x6
	.value	0x12c
	.long	0x87
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x6
	.value	0x12e
	.long	0x9b
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF61
	.byte	0x6
	.value	0x12f
	.long	0x57
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x6
	.value	0x131
	.long	0x3dc
	.byte	0xc4
	.byte	0
	.uleb128 0x11
	.long	.LASF124
	.byte	0x6
	.byte	0x96
	.uleb128 0xf
	.long	.LASF64
	.byte	0x18
	.byte	0x6
	.byte	0x9c
	.long	0x3ba
	.uleb128 0xc
	.long	.LASF65
	.byte	0x6
	.byte	0x9d
	.long	0x3ba
	.byte	0
	.uleb128 0xc
	.long	.LASF66
	.byte	0x6
	.byte	0x9e
	.long	0x3c0
	.byte	0x8
	.uleb128 0xc
	.long	.LASF67
	.byte	0x6
	.byte	0xa2
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x389
	.uleb128 0x7
	.byte	0x8
	.long	0x205
	.uleb128 0x8
	.long	0x8f
	.long	0x3d6
	.uleb128 0x9
	.long	0x80
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x382
	.uleb128 0x8
	.long	0x8f
	.long	0x3ec
	.uleb128 0x9
	.long	0x80
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF125
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.value	0x13b
	.long	0x3ec
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.value	0x13c
	.long	0x3ec
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.value	0x13d
	.long	0x3ec
	.uleb128 0x13
	.long	.LASF71
	.byte	0x7
	.byte	0xaa
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF72
	.byte	0x7
	.byte	0xab
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF73
	.byte	0x7
	.byte	0xac
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF74
	.byte	0x8
	.byte	0x1a
	.long	0x57
	.uleb128 0x8
	.long	0xac
	.long	0x44c
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x441
	.uleb128 0x13
	.long	.LASF75
	.byte	0x8
	.byte	0x1b
	.long	0x44c
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.byte	0x1
	.byte	0x23
	.long	0x481
	.uleb128 0xc
	.long	.LASF77
	.byte	0x1
	.byte	0x24
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF78
	.byte	0x1
	.byte	0x25
	.long	0x481
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x45c
	.uleb128 0xf
	.long	.LASF79
	.byte	0x48
	.byte	0x1
	.byte	0x28
	.long	0x4b8
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.byte	0x29
	.long	0x481
	.byte	0
	.uleb128 0xc
	.long	.LASF81
	.byte	0x1
	.byte	0x2a
	.long	0x5e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF82
	.byte	0x1
	.byte	0x2b
	.long	0x1fa
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF96
	.byte	0x1
	.value	0x1e6
	.long	0x8f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.value	0x1e6
	.long	0x5cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.value	0x1f8
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x1f8
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.value	0x1f8
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF86
	.byte	0x1
	.value	0x1f9
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.value	0x1f9
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1fc
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.Ldebug_ranges0+0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x204
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x20c
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x223
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.value	0x22d
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.value	0x23d
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.value	0x23e
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.value	0x23f
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.value	0x240
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5d4
	.uleb128 0x4
	.long	0x5c9
	.uleb128 0x7
	.byte	0x8
	.long	0x487
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.value	0x187
	.long	0x8f
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x67c
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.value	0x187
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x188
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x188
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x19b
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x1bc
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x17
	.long	.LASF103
	.byte	0x1
	.value	0x1d2
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x166
	.long	0x8f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.value	0x166
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF103
	.byte	0x1
	.value	0x171
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x172
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.value	0x150
	.long	0x8f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x70d
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.value	0x150
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x157
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x1
	.byte	0xf0
	.long	0x8f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x79b
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x1
	.byte	0xf0
	.long	0x5cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.byte	0xf1
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x1
	.byte	0xf1
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x105
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.value	0x121
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x122
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x1
	.byte	0xdc
	.long	0x5e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d9
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x1
	.byte	0xdc
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF110
	.byte	0x1
	.byte	0xea
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.byte	0xb8
	.long	0x8f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x817
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.byte	0xb8
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF102
	.byte	0x1
	.byte	0xca
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0xaa
	.long	0x5d4
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x847
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.byte	0xab
	.long	0x5d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.byte	0x56
	.long	0x5d4
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a2
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x1
	.byte	0x56
	.long	0x5cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.byte	0x63
	.long	0x5d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF117
	.byte	0x1
	.byte	0x8d
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF118
	.byte	0x1
	.byte	0x8f
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.byte	0x2e
	.long	0x5d4
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x1
	.byte	0x2e
	.long	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x1
	.byte	0x2f
	.long	0x5cf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LASF107:
	.string	"insertIt"
.LASF55:
	.string	"_shortbuf"
.LASF124:
	.string	"_IO_lock_t"
.LASF73:
	.string	"stderr"
.LASF31:
	.string	"__flags"
.LASF44:
	.string	"_IO_buf_end"
.LASF87:
	.string	"before"
.LASF108:
	.string	"previous"
.LASF42:
	.string	"_IO_write_end"
.LASF2:
	.string	"unsigned int"
.LASF85:
	.string	"end0"
.LASF78:
	.string	"next"
.LASF94:
	.string	"end2"
.LASF36:
	.string	"_flags"
.LASF80:
	.string	"head"
.LASF118:
	.string	"newCurrent"
.LASF76:
	.string	"link"
.LASF100:
	.string	"deleteIt"
.LASF48:
	.string	"_markers"
.LASF98:
	.string	"sortIt"
.LASF117:
	.string	"copyItCurrent"
.LASF14:
	.string	"__timezone"
.LASF79:
	.string	"list"
.LASF104:
	.string	"remove_duplicates_list"
.LASF27:
	.string	"__shared"
.LASF67:
	.string	"_pos"
.LASF72:
	.string	"stdout"
.LASF47:
	.string	"_IO_save_end"
.LASF82:
	.string	"mutex"
.LASF89:
	.string	"count"
.LASF101:
	.string	"index"
.LASF18:
	.string	"long long unsigned int"
.LASF116:
	.string	"copyIt"
.LASF75:
	.string	"sys_errlist"
.LASF46:
	.string	"_IO_backup_base"
.LASF57:
	.string	"_offset"
.LASF74:
	.string	"sys_nerr"
.LASF112:
	.string	"destroyIt"
.LASF28:
	.string	"__rwelision"
.LASF50:
	.string	"_fileno"
.LASF25:
	.string	"__nr_writers_queued"
.LASF90:
	.string	"temp0"
.LASF91:
	.string	"temp1"
.LASF11:
	.string	"size_t"
.LASF54:
	.string	"_vtable_offset"
.LASF111:
	.string	"destroy_list"
.LASF97:
	.string	"remove_link_list"
.LASF39:
	.string	"_IO_read_base"
.LASF71:
	.string	"stdin"
.LASF35:
	.string	"pthread_rwlock_t"
.LASF122:
	.string	"source/list.c"
.LASF10:
	.string	"char"
.LASF61:
	.string	"_mode"
.LASF13:
	.string	"__daylight"
.LASF15:
	.string	"tzname"
.LASF64:
	.string	"_IO_marker"
.LASF37:
	.string	"_IO_read_ptr"
.LASF40:
	.string	"_IO_write_base"
.LASF68:
	.string	"_IO_2_1_stdin_"
.LASF19:
	.string	"long long int"
.LASF69:
	.string	"_IO_2_1_stdout_"
.LASF45:
	.string	"_IO_save_base"
.LASF113:
	.string	"create_list"
.LASF88:
	.string	"firstIteration"
.LASF83:
	.string	"start0"
.LASF84:
	.string	"start1"
.LASF92:
	.string	"start2"
.LASF93:
	.string	"start3"
.LASF109:
	.string	"get_length_list"
.LASF119:
	.string	"assignTo"
.LASF95:
	.string	"beforeEndNext"
.LASF86:
	.string	"end1"
.LASF26:
	.string	"__writer"
.LASF29:
	.string	"__pad1"
.LASF30:
	.string	"__pad2"
.LASF58:
	.string	"__pad3"
.LASF59:
	.string	"__pad4"
.LASF60:
	.string	"__pad5"
.LASF114:
	.string	"newList"
.LASF21:
	.string	"__nr_readers"
.LASF99:
	.string	"this"
.LASF17:
	.string	"timezone"
.LASF106:
	.string	"insert_link_list"
.LASF96:
	.string	"sort_list"
.LASF38:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"length"
.LASF110:
	.string	"temp"
.LASF125:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"print_list"
.LASF103:
	.string	"after"
.LASF32:
	.string	"__data"
.LASF121:
	.string	"GNU C89 6.3.0 20170516 -mtune=generic -march=x86-64 -g -O0 -std=gnu90"
.LASF56:
	.string	"_lock"
.LASF22:
	.string	"__readers_wakeup"
.LASF9:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF52:
	.string	"_old_offset"
.LASF63:
	.string	"_IO_FILE"
.LASF20:
	.string	"__lock"
.LASF120:
	.string	"assignIt"
.LASF0:
	.string	"unsigned char"
.LASF12:
	.string	"__tzname"
.LASF66:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_write_ptr"
.LASF23:
	.string	"__writer_wakeup"
.LASF16:
	.string	"daylight"
.LASF7:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF115:
	.string	"copy_list"
.LASF126:
	.string	"assign_list"
.LASF102:
	.string	"current"
.LASF123:
	.string	"/home/cepexa/Desktop/program"
.LASF34:
	.string	"__align"
.LASF49:
	.string	"_chain"
.LASF51:
	.string	"_flags2"
.LASF24:
	.string	"__nr_readers_queued"
.LASF33:
	.string	"__size"
.LASF53:
	.string	"_cur_column"
.LASF77:
	.string	"value"
.LASF65:
	.string	"_next"
.LASF70:
	.string	"_IO_2_1_stderr_"
.LASF8:
	.string	"__off64_t"
.LASF62:
	.string	"_unused2"
.LASF43:
	.string	"_IO_buf_base"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
