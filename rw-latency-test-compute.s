	.file	"rw-latency-test-compute.c"
	.text
	.type	rdtsc, @function
rdtsc:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
#APP
# 23 "rw-latency-test-compute.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%edx, %ebx
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	movl	%eax, %r12d
	movl	%r12d, -24(%rbp)
	movl	%ebx, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rdtsc, .-rdtsc
	.globl	sw_barrier
	.type	sw_barrier, @function
sw_barrier:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sw_barrier, .-sw_barrier
	.globl	hw_barrier
	.type	hw_barrier, @function
hw_barrier:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	mfence
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	hw_barrier, .-hw_barrier
	.globl	clflush
	.type	clflush, @function
clflush:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
#APP
# 46 "rw-latency-test-compute.c" 1
	clflush (%rax)
# 0 "" 2
#NO_APP
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	clflush, .-clflush
	.section	.rodata
	.align 8
.LC0:
	.string	"[Usage] ./program array_size_kb iters cpu_to_pin"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %edi
	call	puts
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	usage, .-usage
	.globl	flush_array
	.type	flush_array, @function
flush_array:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	clflush
	addl	$64, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jl	.L8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	flush_array, .-flush_array
	.globl	init_array
	.type	init_array, @function
init_array:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movb	$1, (%rax)
	addl	$64, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jl	.L11
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_array, .-init_array
	.section	.rodata
.LC1:
	.string	"read sum=%d\n"
	.text
	.globl	read_array
	.type	read_array, @function
read_array:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L13
	.cfi_offset 3, -24
.L14:
	movl	$0, %eax
	call	sw_barrier
	movl	-28(%rbp), %eax
	cltq
	addq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %eax
	movl	%eax, %ecx
	addl	-24(%rbp), %ecx
	movl	$-2147450879, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$15, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	addl	$64, -28(%rbp)
.L13:
	movl	-28(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jl	.L14
	movl	$.LC1, %eax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	read_array, .-read_array
	.section	.rodata
.LC2:
	.string	"write sum=%d\n"
	.text
	.globl	write_array
	.type	write_array, @function
write_array:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movb	$1, -17(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L16
	.cfi_offset 3, -24
.L17:
	movl	$0, %eax
	call	sw_barrier
	movl	-28(%rbp), %eax
	cltq
	addq	-40(%rbp), %rax
	movzbl	-17(%rbp), %edx
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	addl	-24(%rbp), %ecx
	movl	$-2147450879, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$15, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	addl	$64, -28(%rbp)
.L16:
	movl	-28(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jl	.L17
	movl	$.LC2, %eax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	write_array, .-write_array
	.section	.rodata
.LC6:
	.string	"%s\t%ld\t%.3f\n"
.LC3:
	.string	"read"
	.string	""
.LC4:
	.string	"write"
	.string	""
	.text
	.globl	print_latency
	.type	print_latency, @function
print_latency:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	.LC3(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	.LC3+4(%rip), %eax
	movw	%ax, -12(%rbp)
	movl	.LC4(%rip), %eax
	movl	%eax, -32(%rbp)
	movzwl	.LC4+4(%rip), %eax
	movw	%ax, -28(%rbp)
	movzbl	.LC4+6(%rip), %eax
	movb	%al, -26(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L19
	leaq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.L19:
	cmpl	$1, -68(%rbp)
	jne	.L20
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.L20:
	movl	$0, -36(%rbp)
	jmp	.L21
.L22:
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-56(%rbp), %rax
	movq	(%rax), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	$.LC6, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf
	addl	$1, -36(%rbp)
.L21:
	movl	-36(%rbp), %eax
	cltq
	cmpq	-64(%rbp), %rax
	jl	.L22
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_latency, .-print_latency
	.section	.rodata
.LC7:
	.string	"setaffinity fails. exit\n"
.LC8:
	.string	"setscheduler fails. exit\n"
	.text
	.globl	pin_to_cpu
	.type	pin_to_cpu, @function
pin_to_cpu:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	movl	%edi, -180(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$16, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	-180(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$1023, -40(%rbp)
	ja	.L26
	.cfi_offset 3, -24
	movq	-40(%rbp), %rax
	shrq	$6, %rax
	leaq	0(,%rax,8), %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	leaq	0(,%rax,8), %rcx
	leaq	-176(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	andl	$63, %ecx
	movl	$1, %esi
	movq	%rsi, %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	orq	%rcx, %rax
	movq	%rax, (%rdx)
.L26:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$128, %esi
	movl	$0, %edi
	call	sched_setaffinity
	testl	%eax, %eax
	je	.L27
	movq	stderr(%rip), %rax
	movq	%rax, %rdx
	movl	$.LC7, %eax
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movl	$3, %eax
	jmp	.L28
.L27:
	leaq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$99, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movl	$0, %edi
	call	sched_setscheduler
	testl	%eax, %eax
	je	.L29
	movq	stderr(%rip), %rax
	movq	%rax, %rdx
	movl	$.LC8, %eax
	movq	%rdx, %rcx
	movl	$25, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movl	$4, %eax
	jmp	.L28
.L29:
	movl	$0, %eax
.L28:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	pin_to_cpu, .-pin_to_cpu
	.section	.rodata
	.align 8
.LC9:
	.string	"iters=%d or array_size_kb=%d is invalid\n"
	.align 8
.LC10:
	.string	"array=%lx, read_latency=%lx, write_latency=%lx\n"
.LC11:
	.string	"pin to cpu %d fails\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	cmpl	$3, -84(%rbp)
	jg	.L31
	.cfi_offset 3, -24
	movl	$0, %eax
	call	usage
	movl	$1, %eax
	jmp	.L32
.L31:
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -28(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -24(%rbp)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L33
	cmpl	$0, -28(%rbp)
	jns	.L34
.L33:
	movl	$.LC9, %esi
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %eax
	jmp	.L32
.L34:
	movl	-28(%rbp), %eax
	sall	$10, %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -72(%rbp)
	movl	-24(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L35
	cmpq	$0, -64(%rbp)
	je	.L35
	cmpq	$0, -56(%rbp)
	jne	.L36
.L35:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	$.LC10, %esi
	movq	stderr(%rip), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %eax
	jmp	.L32
.L36:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	pin_to_cpu
	testl	%eax, %eax
	je	.L37
	movl	$.LC11, %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$2, %eax
	jmp	.L32
.L37:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init_array
	movl	$0, -32(%rbp)
	jmp	.L38
.L39:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flush_array
	movl	$0, %eax
	call	hw_barrier
	call	rdtsc
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_array
	call	rdtsc
	movq	%rax, -40(%rbp)
	movl	-32(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -32(%rbp)
.L38:
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L39
	movl	$0, -32(%rbp)
	jmp	.L40
.L41:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flush_array
	movl	$0, %eax
	call	hw_barrier
	call	rdtsc
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_array
	call	rdtsc
	movq	%rax, -40(%rbp)
	movl	-32(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -32(%rbp)
.L40:
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L41
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_latency
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_latency
	movl	$0, %eax
.L32:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
