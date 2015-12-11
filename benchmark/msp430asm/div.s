	.file	"div.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	do_div
	.type	do_div,@function
/***********************
 * Function `do_div' 
 ***********************/
do_div:
	call	#__udivhi3
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
	mov	#23168, &288
	mov	#25, r11
	mov.b	#1, @r11
	mov	#17, r14
	mov	#llo(-2), r15
	call	#do_div
	mov	r15, r9
	mov	#0, r14
	mov	#10000, r15
	call	#do_div
	mov	r15, r10
	mov.b	#0, @r11
	push	r9
	push	#17
	push	#llo(-2)
	push	#.LC0
	call	#printf
	add	#8, r1
	push	r10
	push	#0
	push	#10000
	push	#.LC1
	call	#printf
	add	#8, r1
	mov.b	#1, &29
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
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
