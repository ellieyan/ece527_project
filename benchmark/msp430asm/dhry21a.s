	.file	"dhry21a.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	Proc_1
	.type	Proc_1,@function
/***********************
 * Function `Proc_1' 
 ***********************/
Proc_1:
	push	r11
	push	r10
	push	r9
	mov	r15, r10
	mov	@r15, r11
	mov	&Ptr_Glob, r9
	mov	#40, r13
	mov	r9, r14
	mov	r11, r15
	call	#memcpy
	mov	#5, 6(r10)
	mov	#5, 6(r11)
	mov	@r10, @r11
	mov	@r9, @r11
	mov	&Ptr_Glob, r13
	add	#6, r13
	mov	&Int_Glob, r14
	mov	#10, r15
	call	#Proc_7
	cmp	#0, 2(r11)
	jeq	.L5
	mov	#40, r13
	mov	@r10, r14
	mov	r10, r15
	call	#memcpy
	pop	r9
	pop	r10
	pop	r11
	ret
.L5:
	mov	#6, 6(r11)
	mov	r11, r14
	add	#4, r14
	mov	4(r10), r15
	call	#Proc_6
	mov	&Ptr_Glob, r15
	mov	@r15, @r11
	mov	r11, r13
	add	#6, r13
	mov	#10, r14
	mov	6(r11), r15
	call	#Proc_7
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe1:
	.size	Proc_1,.Lfe1-Proc_1
;; End of function 

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
	add	#llo(-68), r1
	mov	#23168, &288
	mov	#40, r15
	call	#malloc
	mov	r15, r11
	mov	r15, &Next_Ptr_Glob
	mov	#40, r15
	call	#malloc
	mov	r15, &Ptr_Glob
	mov	r11, @r15
	mov	#0, 2(r15)
	mov	#2, 4(r15)
	mov	#40, 6(r15)
	mov	#31, r13
	mov	#.LC0, r14
	add	#8, r15
	call	#memcpy
	mov	r1, r6
	add	#35, r6
	mov	#31, r13
	mov	#.LC1, r14
	mov	r6, r15
	call	#memcpy
	mov	#10, &Arr_2_Glob+414
	mov	#10, r15
	call	#putchar
	mov	#.LC2, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	push	#100
	push	#.LC3
	call	#printf
	add	#4, r1
	mov	#llo(0x3f800000), &Begin_Time
	mov	#lhi(0x3f800000), &Begin_Time+2
	mov.b	#1, &25
	mov	#1, r10
	mov	r1, r8
	add	#4, r8
.L12:
	mov.b	#65, &Ch_1_Glob
	mov	#1, &Bool_Glob
	mov.b	#66, &Ch_2_Glob
	mov	#31, r13
	mov	#.LC4, r14
	mov	r8, r15
	call	#memcpy
	mov	#1, @r1
	mov	r8, r14
	mov	r6, r15
	call	#Func_2
	mov	#1, r14
	cmp	#0, r15
	jeq	.L7
	mov	#0, r14
.L7:
	mov	r14, &Bool_Glob
	mov	#7, 2(r1)
	mov	r1, r13
	add	#2, r13
	mov	#3, r14
	mov	#2, r15
	call	#Proc_7
	mov	2(r1), r12
	mov	#3, r13
	mov	#Arr_2_Glob, r14
	mov	#Arr_1_Glob, r15
	call	#Proc_8
	mov	&Ptr_Glob, r15
	call	#Proc_1
	cmp.b	#65, &Ch_2_Glob
	jl	.L13
	mov.b	#65, r11
	mov	#3, r9
.L10:
	mov.b	#67, r14
	mov.b	r11, r15
	call	#Func_1
	cmp	@r1, r15
	jne	.L9
	mov	r1, r14
	mov	#0, r15
	call	#Proc_6
	mov	#31, r13
	mov	#.LC5, r14
	mov	r8, r15
	call	#memcpy
	mov	r10, &Int_Glob
	mov	r10, r9
.L9:
	add.b	#1, r11
	cmp.b	r11, &Ch_2_Glob
	jge	.L10
	mov	r9, r13
	rla	r13
	add	r13, r9
	jmp	.L8
.L13:
	mov	#9, r9
.L8:
	mov	2(r1), r7
	mov	r7, r14
	mov	r9, r15
	call	#__divhi3
	mov	r15, r11
	sub	r7, r9
	mov	r9, r13
	rla	r13
	rla	r13
	rla	r13
	sub	r9, r13
	sub	r15, r13
	cmp.b	#65, &Ch_1_Glob
	jne	.L11
	add	#9, r11
	sub	&Int_Glob, r11
.L11:
	add	#1, r10
	cmp	#101, r10
	jne	.L12
	mov.b	#0, &25
	mov	#llo(0x40000000), &End_Time
	mov	#lhi(0x40000000), &End_Time+2
	mov	#.LC6, r15
	mov	r13, 66(r1)
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	#.LC7, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	push	&Int_Glob
	push	#.LC8
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC9
	call	#printf
	add	#4, r1
	push	&Bool_Glob
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
	push	&Arr_1_Glob+16
	push	#.LC14
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC9
	call	#printf
	add	#4, r1
	push	&Arr_2_Glob+414
	push	#.LC15
	call	#printf
	add	#4, r1
	mov	#.LC16, r15
	call	#puts
	mov	#.LC17, r15
	call	#puts
	mov	&Ptr_Glob, r15
	push	@r15
	push	#.LC18
	call	#printf
	add	#4, r1
	mov	#.LC19, r15
	call	#puts
	mov	&Ptr_Glob, r15
	push	2(r15)
	push	#.LC20
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	push	4(r15)
	push	#.LC21
	call	#printf
	add	#4, r1
	push	#2
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	push	6(r15)
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
	push	@r15
	push	#.LC18
	call	#printf
	add	#4, r1
	mov	#.LC26, r15
	call	#puts
	mov	&Next_Ptr_Glob, r15
	push	2(r15)
	push	#.LC20
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	push	4(r15)
	push	#.LC21
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	push	6(r15)
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
	push	r11
	push	#.LC27
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC9
	call	#printf
	add	#4, r1
	mov	66(r1), r13
	push	r13
	push	#.LC28
	call	#printf
	add	#4, r1
	push	#13
	push	#.LC9
	call	#printf
	add	#4, r1
	push	2+2(r1)
	push	#.LC29
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC9
	call	#printf
	add	#4, r1
	push	2(r1)
	push	#.LC30
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC9
	call	#printf
	add	#4, r1
	push	r6
	push	#.LC31
	call	#printf
	add	#4, r1
	mov	#.LC32, r15
	call	#puts
	push	r8
	push	#.LC33
	call	#printf
	add	#4, r1
	mov	#.LC34, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov.b	#1, &29
	mov	#0, r15
	add	#68, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

	.text
	.p2align 1,0
.global	Proc_2
	.type	Proc_2,@function
/***********************
 * Function `Proc_2' 
 ***********************/
Proc_2:
	mov	@r15, r14
	cmp.b	#65, &Ch_1_Glob
	jeq	.L18
	ret
.L18:
	add	#9, r14
	sub	&Int_Glob, r14
	mov	r14, @r15
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
	mov	&Ptr_Glob, r14
	cmp	#0, r14
	jeq	.L21
	mov	@r14, @r15
	mov	&Ptr_Glob, r13
.L20:
	add	#6, r13
	mov	&Int_Glob, r14
	mov	#10, r15
	call	#Proc_7
	ret
.L21:
	mov	#0, r13
	jmp	.L20
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
	mov	#1, r15
	cmp.b	#65, &Ch_1_Glob
	jeq	.L23
	mov	#0, r15
.L23:
	bis	r15, &Bool_Glob
	mov.b	#66, &Ch_2_Glob
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
	mov.b	#65, &Ch_1_Glob
	mov	#0, &Bool_Glob
	ret
.Lfe6:
	.size	Proc_5,.Lfe6-Proc_5
;; End of function 

	.comm Vax_Mips,4,2
	.comm Dhrystones_Per_Second,4,2
	.comm Microseconds,4,2
	.comm User_Time,4,2
	.comm End_Time,4,2
	.comm Begin_Time,4,2
.global	Reg_Define
	.data
	.type	Reg_Define,@object
	.size	Reg_Define,26
Reg_Define:
	.string	"Register option selected."
	.comm Arr_2_Glob,1250,2
	.comm Arr_1_Glob,50,2
	.comm Ch_2_Glob,1
	.comm Ch_1_Glob,1
	.comm Bool_Glob,2,2
	.comm Int_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Ptr_Glob,2,2
