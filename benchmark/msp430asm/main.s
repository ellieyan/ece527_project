	.file	"main.c"
	.cpu 430
	.mpy none

.global	shift_direction
	.data
	.type	shift_direction,@object
	.size	shift_direction,1
shift_direction:
	.byte	1
	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	r1, r4
	add	#2, r4
	mov	#288, r15
	mov	#23168, @r15
	mov	#42, r15
	mov.b	#llo(-1), @r15
	mov	#41, r15
	mov.b	&shift_direction, r14
	mov.b	r14, @r15
	mov	#34, r15
	mov.b	#0, @r15
	mov	#37, r15
	mov.b	#1, @r15
	mov	#36, r15
	mov.b	#0, @r15
	mov	#35, r15
	mov.b	#0, @r15
#APP
 ;  52 "../sandbox//main.c" 1
	eint { nop
 ;  0 "" 2
#NOAPP
.L5:
	mov	#41, r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jne	.L2
	mov	#41, r15
	mov.b	&shift_direction, r14
	mov.b	r14, @r15
	jmp	.L5
.L2:
	mov.b	&shift_direction, r15
	cmp.b	#1, r15
	jne	.L4
	mov	#41, r14
	mov	#41, r15
	mov.b	@r15, r15
	mov.b	r15, r15
	mov.b	r15, r15
	rla.b	r15
	mov.b	r15, @r14
	jmp	.L5
.L4:
	mov	#41, r14
	mov	#41, r15
	mov.b	@r15, r15
	mov.b	r15, r15
	mov.b	r15, r15
	clrc
	rrc.b	r15
	mov.b	r15, @r14
	jmp	.L5
.LIRD0:
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 

	.text
	.p2align 1,0
.global	port1_isr
	.type	port1_isr,@function
/***********************
 * Interrupt Vector 2 Service Routine `port1_isr' 
 ***********************/
port1_isr:
.global	__isr_2
__isr_2:
	push	r15
	push	r14
	push	r4
	mov	r1, r4
	add	#6, r4
	mov	#35, r15
	mov.b	@r15, r15
	mov.b	r15, r15
	and	#1, r15
	mov.b	r15, r15
	cmp.b	#0, r15
	jeq	.L6
	mov.b	&shift_direction, r15
	xor.b	#llo(-127), r15
	mov.b	r15, &shift_direction
	mov	#35, r15
	mov	#35, r14
	mov.b	@r14, r14
	and.b	#llo(-2), r14
	mov.b	r14, @r15
.L6:
	pop	r4
	pop	r14
	pop	r15
	reti
.Lfe2:
	.size	port1_isr,.Lfe2-port1_isr
;; End of function 

