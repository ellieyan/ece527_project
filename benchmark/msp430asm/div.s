	.file	"div.c"
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
.global	do_div
	.type	do_div,@function
/***********************
 * Function `do_div' 
 ***********************/
do_div:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-4(r4), r14
	mov	-6(r4), r15
	call	#__udivhi3
	add	#4, r1
	pop	r4
	ret
.Lfe1:
	.size	do_div,.Lfe1-do_div
;; End of function 

	.section	.rodata
.LC0:
	.string	"a is %u,  b is %u and c is %u \n"
.LC1:
	.string	"e is %u,  f is %u and g is %u \n"
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
	add	#llo(-12), r1
	mov	#288, r15
	mov	#23168, @r15
	mov	#25, r15
	mov.b	#1, @r15
	mov	#llo(-2), -14(r4)
	mov	#17, -12(r4)
	mov	#10000, -10(r4)
	mov	#0, -8(r4)
	mov	-12(r4), r14
	mov	-14(r4), r15
	call	#do_div
	mov	r15, -6(r4)
	mov	-8(r4), r14
	mov	-10(r4), r15
	call	#do_div
	mov	r15, -4(r4)
	mov	#25, r15
	mov.b	#0, @r15
	push	-6(r4)
	push	-12(r4)
	push	-14(r4)
	push	#.LC0
	call	#printf
	add	#8, r1
	push	-4(r4)
	push	-8(r4)
	push	-10(r4)
	push	#.LC1
	call	#printf
	add	#8, r1
	mov	#29, r15
	mov.b	#1, @r15
	add	#12, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

