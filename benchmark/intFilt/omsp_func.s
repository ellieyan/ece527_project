	.file	"omsp_func.c"
	.arch msp430f235
	.cpu 430
	.mpy 16se

	.text
	.p2align 1,0
.global	putchar
	.type	putchar,@function
/***********************
 * Function `putchar' 
 ***********************/
putchar:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#2, r1
	mov	r15, -4(r4)
	mov	#33, r15
	mov	-4(r4), r14
	mov.b	r14, @r15
	mov	#41, r15
	mov	#41, r14
	mov.b	@r14, r14
	xor.b	#1, r14
	mov.b	r14, @r15
	mov	#0, r15
	add	#2, r1
	pop	r4
	ret
.Lfe1:
	.size	putchar,.Lfe1-putchar
;; End of function 

