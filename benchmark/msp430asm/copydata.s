	.file	"copydata.c"
	.cpu 430
	.mpy none

	.section	.text.startup,"ax",@progbits
	.p2align 1,0
.global	__data_move
	.type	__data_move,@function
/***********************
 * Function `__data_move' 
 ***********************/
__data_move:
	mov	#__datastart, r15
	cmp	#__romdatastart, r15
	jeq	.L1
	mov	#__romdatacopysize, r13
	mov	#__romdatastart, r14
	call	#memcpy
.L1:
	ret
.Lfe1:
	.size	__data_move,.Lfe1-__data_move
;; End of function 

	.global	__do_global_ctors
	.section	.ctors
	.p2align 1,0
	.word	__data_move
