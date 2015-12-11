	.file	"omsp_func.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	putchar
	.type	putchar,@function
/***********************
 * Function `putchar' 
 ***********************/
putchar:
	mov.b	r15, &33
	mov	#41, r15
	mov.b	@r15, r14
	xor.b	#1, r14
	mov.b	r14, @r15
	mov	#0, r15
	ret
.Lfe1:
	.size	putchar,.Lfe1-putchar
;; End of function 

