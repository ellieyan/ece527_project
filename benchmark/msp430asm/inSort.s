	.file	"inSort.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	run_bm
	.type	run_bm,@function
/***********************
 * Function `run_bm' 
 ***********************/
run_bm:
	ret
.Lfe1:
	.size	run_bm,.Lfe1-run_bm
;; End of function 

	.section	.rodata
.LC3:
	.string	"Execution starts"
.LC4:
	.string	"Execution ends"
	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	#23168, &288
	push	#.LC3
	call	#printf
	add	#2, r1
	mov	#25, r15
	mov.b	#1, @r15
	mov.b	#0, @r15
	mov	#.LC4, r15
	call	#puts
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
