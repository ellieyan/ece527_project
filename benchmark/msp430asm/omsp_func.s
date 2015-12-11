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
	xor.b	#1, &41
	mov	#0, r15
	ret
.Lfe1:
	.size	putchar,.Lfe1-putchar
;; End of function 

