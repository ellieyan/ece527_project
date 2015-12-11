	.file	"mult.c"
	.cpu 430
	.mpy none

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
	mov	r15, r8
	mov	#0, r9
	mov	#0, r10
	mov	#0, r11
	push	r11
	push	r10
	push	r9
	push	r8
	mov	r14, r12
	mov	#0, r13
	mov	#0, r14
	mov	#0, r15
	call	#__muldi3
	add	#8, r1
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
	call	#__mulhi3
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
	mov	#23168, &288
	mov	#25, r15
	mov.b	#1, @r15
	mov.b	#0, @r15
	mov.b	#1, &29
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

	.comm Dhrystones_Per_Second,4,2
	.comm Microseconds,4,2
	.comm User_Time,4,2
	.comm End_Time,4,2
	.comm Begin_Time,4,2
.global	Reg
.global	Reg
	.section	.bss
	.type	Reg,@object
	.size	Reg,2
Reg:
	.skip 2,0
	.comm Arr_2_Glob,5000,2
	.comm Arr_1_Glob,100,2
	.comm Ch_2_Glob,1
	.comm Ch_1_Glob,1
	.comm Bool_Glob,2,2
	.comm Int_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Ptr_Glob,2,2
