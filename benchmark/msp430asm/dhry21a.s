	.file	"dhry21a.c"
	.cpu 430
	.mpy none

	.comm Ptr_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Int_Glob,2,2
	.comm Bool_Glob,2,2
	.comm Ch_1_Glob,1
	.comm Ch_2_Glob,1
	.comm Arr_1_Glob,50,2
	.comm Arr_2_Glob,1250,2
.global	Reg_Define
	.data
	.type	Reg_Define,@object
	.size	Reg_Define,26
Reg_Define:
	.string	"Register option selected."
	.comm Begin_Time,4,2
	.comm End_Time,4,2
	.comm User_Time,4,2
	.comm Microseconds,4,2
	.comm Dhrystones_Per_Second,4,2
	.comm Vax_Mips,4,2
	.section	.rodata
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
.LC1:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
.LC2:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)"
.LC3:
	.string	"Execution starts, %d runs through Dhrystone\n"
.LC4:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
.LC5:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
.LC6:
	.string	"Execution ends"
.LC7:
	.string	"Final values of the variables used in the benchmark:"
.LC8:
	.string	"Int_Glob:            %d\n"
.LC9:
	.string	"        should be:   %d\n"
.LC10:
	.string	"Bool_Glob:           %d\n"
.LC11:
	.string	"Ch_1_Glob:           %c\n"
.LC12:
	.string	"        should be:   %c\n"
.LC13:
	.string	"Ch_2_Glob:           %c\n"
.LC14:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC15:
	.string	"Arr_2_Glob[8][7]:    %d\n"
.LC16:
	.string	"        should be:   Number_Of_Runs + 10"
.LC17:
	.string	"Ptr_Glob->"
.LC18:
	.string	"  Ptr_Comp:          %d\n"
.LC19:
	.string	"        should be:   (implementation-dependent)"
.LC20:
	.string	"  Discr:             %d\n"
.LC21:
	.string	"  Enum_Comp:         %d\n"
.LC22:
	.string	"  Int_Comp:          %d\n"
.LC23:
	.string	"  Str_Comp:          %s\n"
.LC24:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING"
.LC25:
	.string	"Next_Ptr_Glob->"
.LC26:
	.string	"        should be:   (implementation-dependent), same as above"
.LC27:
	.string	"Int_1_Loc:           %d\n"
.LC28:
	.string	"Int_2_Loc:           %d\n"
.LC29:
	.string	"Int_3_Loc:           %d\n"
.LC30:
	.string	"Enum_Loc:            %d\n"
.LC31:
	.string	"Str_1_Loc:           %s\n"
.LC32:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
.LC33:
	.string	"Str_2_Loc:           %s\n"
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
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
	add	#llo(-76), r1
	mov	#288, r15
	mov	#23168, @r15
	mov	#40, r15
	call	#malloc
	mov	r15, &Next_Ptr_Glob
	mov	#40, r15
	call	#malloc
	mov	r15, &Ptr_Glob
	mov	&Ptr_Glob, r15
	mov	&Next_Ptr_Glob, r14
	mov	r14, @r15
	mov	&Ptr_Glob, r15
	mov	#0, 2(r15)
	mov	&Ptr_Glob, r15
	mov	#2, 4(r15)
	mov	&Ptr_Glob, r15
	mov	#40, 6(r15)
	mov	&Ptr_Glob, r15
	add	#8, r15
	mov	#.LC0, r14
	mov	#31, r13
	call	#memcpy
	mov	r4, r15
	add	#llo(-64), r15
	mov	#.LC1, r14
	mov	#31, r13
	call	#memcpy
	mov	#10, &Arr_2_Glob+414
	mov	#10, r15
	call	#putchar
	mov	#.LC2, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	#100, -72(r4)
	push	-72(r4)
	push	#.LC3
	call	#printf
	add	#4, r1
	mov	#llo(0x3f800000), &Begin_Time
	mov	#lhi(0x3f800000), &Begin_Time+2
	mov	#25, r15
	mov.b	#1, @r15
	mov	#1, -74(r4)
	jmp	.L2
.L9:
	call	#Proc_5
	call	#Proc_4
	mov	#2, -70(r4)
	mov	#3, -78(r4)
	mov	r4, r15
	add	#llo(-33), r15
	mov	#.LC4, r14
	mov	#31, r13
	call	#memcpy
	mov	#1, -66(r4)
	mov	r4, r14
	add	#llo(-33), r14
	mov	r4, r15
	add	#llo(-64), r15
	call	#Func_2
	mov	r15, r14
	mov	#1, r15
	cmp	#0, r14
	jeq	.L3
	mov	#0, r15
.L3:
	mov	r15, &Bool_Glob
	jmp	.L4
.L5:
	mov	-70(r4), r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r14, r15
	sub	-78(r4), r15
	mov	r15, -68(r4)
	mov	-70(r4), r15
	mov	r4, r14
	add	#llo(-68), r14
	mov	r14, r13
	mov	-78(r4), r14
	call	#Proc_7
	mov	-70(r4), r15
	add	#1, r15
	mov	r15, -70(r4)
.L4:
	mov	-70(r4), r15
	cmp	-78(r4), r15
	jl	.L5
	mov	-68(r4), r14
	mov	-70(r4), r15
	mov	r14, r12
	mov	r15, r13
	mov	#Arr_2_Glob, r14
	mov	#Arr_1_Glob, r15
	call	#Proc_8
	mov	&Ptr_Glob, r15
	call	#Proc_1
	mov.b	#65, -76(r4)
	jmp	.L6
.L8:
	mov.b	#67, r14
	mov.b	-76(r4), r15
	call	#Func_1
	mov	r15, r14
	mov	-66(r4), r15
	cmp	r15, r14
	jne	.L7
	mov	r4, r15
	add	#llo(-66), r15
	mov	r15, r14
	mov	#0, r15
	call	#Proc_6
	mov	r4, r15
	add	#llo(-33), r15
	mov	#.LC5, r14
	mov	#31, r13
	call	#memcpy
	mov	-74(r4), -78(r4)
	mov	-74(r4), &Int_Glob
.L7:
	add.b	#1, -76(r4)
.L6:
	mov.b	&Ch_2_Glob, r15
	cmp.b	-76(r4), r15
	jge	.L8
	mov	-70(r4), r15
	mov	-78(r4), r14
	call	#__mulhi3
	mov	r15, -78(r4)
	mov	-68(r4), r15
	mov	r15, r14
	mov	-78(r4), r15
	call	#__divhi3
	mov	r15, -70(r4)
	mov	-68(r4), r15
	mov	-78(r4), r14
	sub	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	rla	r15
	mov	r15, r13
	sub	r14, r13
	mov	r13, r14
	mov	-70(r4), r15
	mov	r14, r13
	sub	r15, r13
	mov	r13, -78(r4)
	mov	r4, r15
	add	#llo(-70), r15
	call	#Proc_2
	add	#1, -74(r4)
.L2:
	cmp	-74(r4), -72(r4)
	jge	.L9
	mov	#25, r15
	mov.b	#0, @r15
	mov	#llo(0x40000000), &End_Time
	mov	#lhi(0x40000000), &End_Time+2
	mov	#.LC6, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	#.LC7, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	&Int_Glob, r15
	push	r15
	push	#.LC8
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Bool_Glob, r15
	push	r15
	push	#.LC10
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC9
	call	#printf
	add	#4, r1
	mov.b	&Ch_1_Glob, r15
	sxt	r15
	push	r15
	push	#.LC11
	call	#printf
	add	#4, r1
	push	#65
	push	#.LC12
	call	#printf
	add	#4, r1
	mov.b	&Ch_2_Glob, r15
	sxt	r15
	push	r15
	push	#.LC13
	call	#printf
	add	#4, r1
	push	#66
	push	#.LC12
	call	#printf
	add	#4, r1
	mov	&Arr_1_Glob+16, r15
	push	r15
	push	#.LC14
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Arr_2_Glob+414, r15
	push	r15
	push	#.LC15
	call	#printf
	add	#4, r1
	mov	#.LC16, r15
	call	#puts
	mov	#.LC17, r15
	call	#puts
	mov	&Ptr_Glob, r15
	mov	@r15, r15
	push	r15
	push	#.LC18
	call	#printf
	add	#4, r1
	mov	#.LC19, r15
	call	#puts
	mov	&Ptr_Glob, r15
	mov	2(r15), r15
	push	r15
	push	#.LC20
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	mov	4(r15), r15
	push	r15
	push	#.LC21
	call	#printf
	add	#4, r1
	push	#2
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	mov	6(r15), r15
	push	r15
	push	#.LC22
	call	#printf
	add	#4, r1
	push	#17
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	add	#8, r15
	push	r15
	push	#.LC23
	call	#printf
	add	#4, r1
	mov	#.LC24, r15
	call	#puts
	mov	#.LC25, r15
	call	#puts
	mov	&Next_Ptr_Glob, r15
	mov	@r15, r15
	push	r15
	push	#.LC18
	call	#printf
	add	#4, r1
	mov	#.LC26, r15
	call	#puts
	mov	&Next_Ptr_Glob, r15
	mov	2(r15), r15
	push	r15
	push	#.LC20
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	mov	4(r15), r15
	push	r15
	push	#.LC21
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	mov	6(r15), r15
	push	r15
	push	#.LC22
	call	#printf
	add	#4, r1
	push	#18
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	add	#8, r15
	push	r15
	push	#.LC23
	call	#printf
	add	#4, r1
	mov	#.LC24, r15
	call	#puts
	mov	-70(r4), r15
	push	r15
	push	#.LC27
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC9
	call	#printf
	add	#4, r1
	push	-78(r4)
	push	#.LC28
	call	#printf
	add	#4, r1
	push	#13
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	-68(r4), r15
	push	r15
	push	#.LC29
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	-66(r4), r15
	push	r15
	push	#.LC30
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	r4, r15
	add	#llo(-64), r15
	push	r15
	push	#.LC31
	call	#printf
	add	#4, r1
	mov	#.LC32, r15
	call	#puts
	mov	r4, r15
	add	#llo(-33), r15
	push	r15
	push	#.LC33
	call	#printf
	add	#4, r1
	mov	#.LC34, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	#29, r15
	mov.b	#1, @r15
	mov	#0, r15
	add	#76, r1
.LIRD0:
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 

	.text
	.p2align 1,0
.global	Proc_1
	.type	Proc_1,@function
/***********************
 * Function `Proc_1' 
 ***********************/
Proc_1:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -4(r4)
	mov	-4(r4), r15
	mov	@r15, -6(r4)
	mov	-4(r4), r15
	mov	@r15, r15
	mov	&Ptr_Glob, r14
	mov	#40, r13
	call	#memcpy
	mov	-4(r4), r15
	mov	#5, 6(r15)
	mov	-4(r4), r15
	mov	6(r15), r14
	mov	-6(r4), r15
	mov	r14, 6(r15)
	mov	-4(r4), r15
	mov	@r15, r14
	mov	-6(r4), r15
	mov	r14, @r15
	mov	-6(r4), r15
	call	#Proc_3
	mov	-6(r4), r15
	mov	2(r15), r15
	cmp	#0, r15
	jne	.L11
	mov	-6(r4), r15
	mov	#6, 6(r15)
	mov	-6(r4), r14
	add	#4, r14
	mov	-4(r4), r15
	mov	4(r15), r15
	call	#Proc_6
	mov	&Ptr_Glob, r15
	mov	@r15, r14
	mov	-6(r4), r15
	mov	r14, @r15
	mov	-6(r4), r14
	add	#6, r14
	mov	-6(r4), r15
	mov	6(r15), r15
	mov	r14, r13
	mov	#10, r14
	call	#Proc_7
	jmp	.L10
.L11:
	mov	-4(r4), r15
	mov	@r15, r14
	mov	-4(r4), r15
	mov	#40, r13
	call	#memcpy
.L10:
	add	#4, r1
	pop	r4
	ret
.Lfe2:
	.size	Proc_1,.Lfe2-Proc_1
;; End of function 

	.p2align 1,0
.global	Proc_2
	.type	Proc_2,@function
/***********************
 * Function `Proc_2' 
 ***********************/
Proc_2:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-6), r1
	mov	r15, -4(r4)
	mov	-4(r4), r15
	mov	@r15, r15
	mov	r15, r14
	add	#10, r14
	mov	r14, -8(r4)
.L15:
	mov.b	&Ch_1_Glob, r15
	cmp.b	#65, r15
	jne	.L14
	add	#llo(-1), -8(r4)
	mov	&Int_Glob, r15
	mov	-8(r4), r14
	sub	r15, r14
	mov	-4(r4), r15
	mov	r14, @r15
	mov	#0, -6(r4)
.L14:
	cmp	#0, -6(r4)
	jne	.L15
	add	#6, r1
	pop	r4
	ret
.Lfe3:
	.size	Proc_2,.Lfe3-Proc_2
;; End of function 

	.p2align 1,0
.global	Proc_3
	.type	Proc_3,@function
/***********************
 * Function `Proc_3' 
 ***********************/
Proc_3:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#2, r1
	mov	r15, -4(r4)
	mov	&Ptr_Glob, r15
	cmp	#0, r15
	jeq	.L17
	mov	&Ptr_Glob, r15
	mov	@r15, r14
	mov	-4(r4), r15
	mov	r14, @r15
.L17:
	mov	&Ptr_Glob, r15
	mov	r15, r14
	add	#6, r14
	mov	&Int_Glob, r15
	mov	r14, r13
	mov	r15, r14
	mov	#10, r15
	call	#Proc_7
	add	#2, r1
	pop	r4
	ret
.Lfe4:
	.size	Proc_3,.Lfe4-Proc_3
;; End of function 

	.p2align 1,0
.global	Proc_4
	.type	Proc_4,@function
/***********************
 * Function `Proc_4' 
 ***********************/
Proc_4:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#2, r1
	mov.b	&Ch_1_Glob, r14
	mov	#1, r15
	cmp.b	#65, r14
	jeq	.L19
	mov	#0, r15
.L19:
	mov	r15, -4(r4)
	mov	&Bool_Glob, r15
	bis	-4(r4), r15
	mov	r15, &Bool_Glob
	mov.b	#66, &Ch_2_Glob
	add	#2, r1
	pop	r4
	ret
.Lfe5:
	.size	Proc_4,.Lfe5-Proc_4
;; End of function 

	.p2align 1,0
.global	Proc_5
	.type	Proc_5,@function
/***********************
 * Function `Proc_5' 
 ***********************/
Proc_5:
	push	r4
	mov	r1, r4
	add	#2, r4
	mov.b	#65, &Ch_1_Glob
	mov	#0, &Bool_Glob
	pop	r4
	ret
.Lfe6:
	.size	Proc_5,.Lfe6-Proc_5
;; End of function 

