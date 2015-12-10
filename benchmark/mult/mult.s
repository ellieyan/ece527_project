	.file	"mult.c"
	.arch msp430f235
	.cpu 430
	.mpy 16se

	.comm Ptr_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Int_Glob,2,2
	.comm Bool_Glob,2,2
	.comm Ch_1_Glob,1
	.comm Ch_2_Glob,1
	.comm Arr_1_Glob,100,2
	.comm Arr_2_Glob,5000,2
.global	Reg
.global	Reg
	.section	.bss
	.type	Reg,@object
	.size	Reg,2
Reg:
	.skip 2,0
	.comm Begin_Time,4,2
	.comm End_Time,4,2
	.comm User_Time,4,2
	.comm Microseconds,4,2
	.comm Dhrystones_Per_Second,4,2
	.text
	.p2align 1,0
.global	domult
	.type	domult,@function
/***********************
 * Function `domult' 
 ***********************/
domult:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	push	r2
	dint
	nop
	mov	-6(r4), &__MPYS
	mov	-4(r4), &__OP2
	mov	&__RESLO, r15
	pop	r2
	add	#4, r1
	pop	r4
	ret
.Lfe1:
	.size	domult,.Lfe1-domult
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
	add	#llo(-6), r1
	mov	#288, r15
	mov	#23168, @r15
	mov	#25, r15
	mov.b	#1, @r15
	mov	#1099, -8(r4)
	mov	#73, -6(r4)
	mov	-6(r4), r14
	mov	-8(r4), r15
	call	#domult
	mov	r15, -4(r4)
	mov	#25, r15
	mov.b	#0, @r15
	mov	#29, r15
	mov.b	#1, @r15
	add	#6, r1
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

