	.file	"test1.c"
	.cpu 430
	.mpy none

.global	o
	.section	.rodata
.LC0:
	.ascii	"WWW"
	.string	"WWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
	.data
	.p2align 1,0
	.type	o,@object
	.size	o,2
o:
	.word	.LC0
	.text
	.p2align 1,0
.global	rle_encode
	.type	rle_encode,@function
/***********************
 * Function `rle_encode' 
 ***********************/
rle_encode:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-12), r1
	mov	r15, -8(r4)
	mov	r14, -6(r4)
	mov	r13, -4(r4)
	mov	-6(r4), r15
	mov.b	@r15, -9(r4)
	mov.b	-9(r4), -10(r4)
	add	#1, -6(r4)
	mov	#0, -12(r4)
	mov	#0, -14(r4)
	jmp	.L2
.L5:
	cmp.b	-10(r4), -9(r4)
	jne	.L3
	add	#1, -12(r4)
	cmp	#256, -12(r4)
	jl	.L4
	mov	-8(r4), r15
	mov.b	#llo(-1), @r15
	add	#1, -8(r4)
	mov	-8(r4), r15
	mov.b	-9(r4), @r15
	add	#1, -8(r4)
	add	#2, -14(r4)
	mov	#1, -12(r4)
	jmp	.L4
.L3:
	mov	-12(r4), r15
	mov.b	r15, r14
	mov	-8(r4), r15
	mov.b	r14, @r15
	add	#1, -8(r4)
	mov	-8(r4), r15
	mov.b	-10(r4), @r15
	add	#1, -8(r4)
	add	#2, -14(r4)
	mov	#1, -12(r4)
.L4:
	mov.b	-9(r4), -10(r4)
	mov	-6(r4), r15
	mov.b	@r15, -9(r4)
	add	#1, -6(r4)
	add	#llo(-1), -4(r4)
.L2:
	cmp	#1, -4(r4)
	jge	.L5
	mov	-12(r4), r15
	mov.b	r15, r14
	mov	-8(r4), r15
	mov.b	r14, @r15
	add	#1, -8(r4)
	mov	-8(r4), r15
	mov.b	-10(r4), @r15
	add	#1, -8(r4)
	add	#2, -14(r4)
	mov	-14(r4), r15
	add	#12, r1
	pop	r4
	ret
.Lfe1:
	.size	rle_encode,.Lfe1-rle_encode
;; End of function 

	.p2align 1,0
.global	rle_decode
	.type	rle_decode,@function
/***********************
 * Function `rle_decode' 
 ***********************/
rle_decode:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-12), r1
	mov	r15, -8(r4)
	mov	r14, -6(r4)
	mov	r13, -4(r4)
	mov	#0, -12(r4)
	jmp	.L7
.L11:
	mov	-6(r4), r15
	mov.b	@r15, r15
	mov.b	r15, -14(r4)
	sxt	-14(r4)
	add	#1, -6(r4)
	mov	-6(r4), r15
	mov.b	@r15, -10(r4)
	add	#1, -6(r4)
	add	-14(r4), -12(r4)
	jmp	.L8
.L10:
	mov	-8(r4), r15
	mov.b	-10(r4), @r15
	add	#1, -8(r4)
.L8:
	mov.b	#1, r15
	cmp	#1, -14(r4)
	jge	.L9
	mov.b	#0, r15
.L9:
	add	#llo(-1), -14(r4)
	cmp.b	#0, r15
	jne	.L10
	sub	#2, -4(r4)
.L7:
	cmp	#1, -4(r4)
	jge	.L11
	mov	-12(r4), r15
	add	#12, r1
	pop	r4
	ret
.Lfe2:
	.size	rle_decode,.Lfe2-rle_decode
;; End of function 

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
	add	#llo(-10), r1
	mov	&o, r15
	mov	r15, r14
	mov	r14, r15
	sub	#1, r15
.L13:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L13
	sub	r14, r15
	rla	r15
	call	#malloc
	mov	r15, -10(r4)
	mov	&o, r15
	mov	r15, r14
	mov	r14, r15
	sub	#1, r15
.L14:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L14
	sub	r14, r15
	call	#malloc
	mov	r15, -8(r4)
	mov	&o, r15
	mov	r15, r14
	mov	r14, r15
	sub	#1, r15
.L15:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L15
	sub	r14, r15
	mov	r15, r14
	mov	&o, r15
	mov	r14, r13
	mov	r15, r14
	mov	-10(r4), r15
	call	#rle_encode
	mov	r15, -6(r4)
	mov	-6(r4), r13
	mov	-10(r4), r14
	mov	-8(r4), r15
	call	#rle_decode
	mov	r15, -4(r4)
	mov	#0, -12(r4)
	jmp	.L16
.L17:
	mov	-12(r4), r15
	add	-8(r4), r15
	mov.b	@r15, r15
	sxt	r15
	call	#putchar
	add	#1, -12(r4)
.L16:
	cmp	-4(r4), -12(r4)
	jl	.L17
	mov	-10(r4), r15
	call	#free
	mov	-8(r4), r15
	call	#free
	mov	#0, r15
	add	#10, r1
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

