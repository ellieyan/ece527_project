	.file	"main.c"
	.cpu 430
	.mpy none

	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	#23168, &288
	mov.b	#llo(-1), &42
	mov.b	&shift_direction, r15
	mov.b	r15, &41
	mov.b	#0, &34
	mov.b	#1, &37
	mov.b	#0, &36
	mov.b	#0, &35
#APP
 ;  52 "../sandbox//main.c" 1
	eint { nop
 ;  0 "" 2
#NOAPP
.L6:
	mov.b	&41, r15
	cmp.b	#0, r15
	jne	.L3
	mov.b	&shift_direction, r15
	mov.b	r15, &41
	jmp	.L6
.L3:
	mov.b	&shift_direction, r15
	cmp.b	#1, r15
	jne	.L5
	mov	#41, r14
	mov.b	@r14, r15
	rla.b	r15
	mov.b	r15, @r14
	jmp	.L6
.L5:
	mov	#41, r14
	mov.b	@r14, r15
	clrc
	rrc.b	r15
	mov.b	r15, @r14
	jmp	.L6
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
	mov.b	&35, r15
	and	#1, r15
	jeq	.L7
	mov.b	&shift_direction, r15
	xor.b	#llo(-127), r15
	mov.b	r15, &shift_direction
	mov	#35, r15
	mov.b	@r15, r14
	and.b	#llo(-2), r14
	mov.b	r14, @r15
.L7:
	pop	r14
	pop	r15
	reti
.Lfe2:
	.size	port1_isr,.Lfe2-port1_isr
;; End of function 

.global	shift_direction
	.data
	.type	shift_direction,@object
	.size	shift_direction,1
shift_direction:
	.byte	1
