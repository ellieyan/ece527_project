	.file	"mult.c"
	.cpu 430
	.mpy none

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
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r4
	mov	r1, r4
	add	#14, r4
	sub	#4, r1
	mov	r15, -18(r4)
	mov	r14, -16(r4)
	mov	-18(r4), r10
	mov	#0, r11
	mov	#0, r12
	mov	#0, r13
	mov	-16(r4), r6
	mov	#0, r7
	mov	#0, r8
	mov	#0, r9
	push	r9
	push	r8
	push	r7
	push	r6
	mov	r13, r15
	mov	r12, r14
	mov	r11, r13
	mov	r10, r12
	call	#__muldi3
	add	#8, r1
	add	#4, r1
	pop	r4
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe1:
	.size	domult,.Lfe1-domult
;; End of function 

	.p2align 1,0
.global	domult_int
	.type	domult_int,@function
/***********************
 * Function `domult_int' 
 ***********************/
domult_int:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-4(r4), r14
	mov	-6(r4), r15
	call	#__mulhi3
	add	#4, r1
	pop	r4
	ret
.Lfe2:
	.size	domult_int,.Lfe2-domult_int
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
	mov	#llo(-21171), -8(r4)
	mov	#19300, -6(r4)
	mov	-6(r4), r14
	mov	-8(r4), r15
	call	#domult_int
	mov	r15, -4(r4)
	mov	#25, r15
	mov.b	#0, @r15
	mov	#29, r15
	mov.b	#1, @r15
	add	#6, r1
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

