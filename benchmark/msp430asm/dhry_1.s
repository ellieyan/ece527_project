	.file	"dhry_1.c"
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
	jeq	.L6
	mov	#40, r13
	mov	@r10, r14
	mov	r10, r15
	call	#memcpy
	pop	r9
	pop	r10
	pop	r11
	ret
.L6:
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
	.string	"Program compiled with 'register' attribute"
.LC4:
	.string	"Program compiled without 'register' attribute"
.LC5:
	.string	"Execution starts, %d runs through Dhrystone\n"
.LC6:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
.LC7:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
.LC8:
	.string	"Execution ends"
.LC9:
	.string	"Final values of the variables used in the benchmark:"
.LC10:
	.string	"Int_Glob:            %d\n"
.LC11:
	.string	"        should be:   %d\n"
.LC12:
	.string	"Bool_Glob:           %d\n"
.LC13:
	.string	"Ch_1_Glob:           %c\n"
.LC14:
	.string	"        should be:   %c\n"
.LC15:
	.string	"Ch_2_Glob:           %c\n"
.LC16:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC17:
	.string	"Arr_2_Glob[8][7]:    %d\n"
.LC18:
	.string	"        should be:   Number_Of_Runs + 10"
.LC19:
	.string	"Ptr_Glob->"
.LC20:
	.string	"  Ptr_Comp:          %d\n"
.LC21:
	.string	"        should be:   (implementation-dependent)"
.LC22:
	.string	"  Discr:             %d\n"
.LC23:
	.string	"  Enum_Comp:         %d\n"
.LC24:
	.string	"  Int_Comp:          %d\n"
.LC25:
	.string	"  Str_Comp:          %s\n"
.LC26:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING"
.LC27:
	.string	"Next_Ptr_Glob->"
.LC28:
	.string	"        should be:   (implementation-dependent), same as above"
.LC29:
	.string	"Int_1_Loc:           %d\n"
.LC30:
	.string	"Int_2_Loc:           %d\n"
.LC31:
	.string	"Int_3_Loc:           %d\n"
.LC32:
	.string	"Enum_Loc:            %d\n"
.LC33:
	.string	"Str_1_Loc:           %s\n"
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
.LC35:
	.string	"Str_2_Loc:           %s\n"
.LC36:
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
	mov	r15, &Next_Ptr_Glob
	mov	#40, r15
	call	#malloc
	mov	r15, &Ptr_Glob
	mov	&Next_Ptr_Glob, @r15
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
	mov	#10, &Arr_2_Glob+814
	mov	#10, r15
	call	#putchar
	mov	#.LC2, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	cmp	#0, &Reg
	jeq	.L8
	mov	#.LC3, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	jmp	.L9
.L8:
	mov	#.LC4, r15
	call	#puts
	mov	#10, r15
	call	#putchar
.L9:
	push	#100
	push	#.LC5
	call	#printf
	add	#4, r1
	mov.b	#1, &25
	mov	#1, r10
	mov	r1, r8
	add	#4, r8
.L15:
	mov.b	#65, &Ch_1_Glob
	mov	#1, &Bool_Glob
	mov.b	#66, &Ch_2_Glob
	mov	#31, r13
	mov	#.LC6, r14
	mov	r8, r15
	call	#memcpy
	mov	#1, @r1
	mov	r8, r14
	mov	r6, r15
	call	#Func_2
	mov	#1, r14
	cmp	#0, r15
	jeq	.L10
	mov	#0, r14
.L10:
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
	jl	.L16
	mov	#65, r11
	mov	#3, r9
.L13:
	mov	#67, r14
	mov	r11, r15
	call	#Func_1
	cmp	@r1, r15
	jne	.L12
	mov	r1, r14
	mov	#0, r15
	call	#Proc_6
	mov	#31, r13
	mov	#.LC7, r14
	mov	r8, r15
	call	#memcpy
	mov	r10, &Int_Glob
	mov	r10, r9
.L12:
	mov.b	r11, r13
	add.b	#1, r13
	add	#1, r11
	cmp.b	r13, &Ch_2_Glob
	jge	.L13
	mov	r9, r13
	rla	r13
	add	r13, r9
	jmp	.L11
.L16:
	mov	#9, r9
.L11:
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
	jne	.L14
	add	#9, r11
	sub	&Int_Glob, r11
.L14:
	add	#1, r10
	cmp	#101, r10
	jne	.L15
	mov.b	#0, &25
	mov	#.LC8, r15
	mov	r13, 66(r1)
	call	#puts
	mov	#10, r15
	call	#putchar
	mov	#.LC9, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	push	&Int_Glob
	push	#.LC10
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC11
	call	#printf
	add	#4, r1
	push	&Bool_Glob
	push	#.LC12
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC11
	call	#printf
	add	#4, r1
	mov.b	&Ch_1_Glob, r15
	sxt	r15
	push	r15
	push	#.LC13
	call	#printf
	add	#4, r1
	push	#65
	push	#.LC14
	call	#printf
	add	#4, r1
	mov.b	&Ch_2_Glob, r15
	sxt	r15
	push	r15
	push	#.LC15
	call	#printf
	add	#4, r1
	push	#66
	push	#.LC14
	call	#printf
	add	#4, r1
	push	&Arr_1_Glob+16
	push	#.LC16
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC11
	call	#printf
	add	#4, r1
	push	&Arr_2_Glob+814
	push	#.LC17
	call	#printf
	add	#4, r1
	mov	#.LC18, r15
	call	#puts
	mov	#.LC19, r15
	call	#puts
	mov	&Ptr_Glob, r15
	push	@r15
	push	#.LC20
	call	#printf
	add	#4, r1
	mov	#.LC21, r15
	call	#puts
	mov	&Ptr_Glob, r15
	push	2(r15)
	push	#.LC22
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	push	4(r15)
	push	#.LC23
	call	#printf
	add	#4, r1
	push	#2
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	push	6(r15)
	push	#.LC24
	call	#printf
	add	#4, r1
	push	#17
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Ptr_Glob, r15
	add	#8, r15
	push	r15
	push	#.LC25
	call	#printf
	add	#4, r1
	mov	#.LC26, r15
	call	#puts
	mov	#.LC27, r15
	call	#puts
	mov	&Next_Ptr_Glob, r15
	push	@r15
	push	#.LC20
	call	#printf
	add	#4, r1
	mov	#.LC28, r15
	call	#puts
	mov	&Next_Ptr_Glob, r15
	push	2(r15)
	push	#.LC22
	call	#printf
	add	#4, r1
	push	#0
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	push	4(r15)
	push	#.LC23
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	push	6(r15)
	push	#.LC24
	call	#printf
	add	#4, r1
	push	#18
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	&Next_Ptr_Glob, r15
	add	#8, r15
	push	r15
	push	#.LC25
	call	#printf
	add	#4, r1
	mov	#.LC26, r15
	call	#puts
	push	r11
	push	#.LC29
	call	#printf
	add	#4, r1
	push	#5
	push	#.LC11
	call	#printf
	add	#4, r1
	mov	66(r1), r13
	push	r13
	push	#.LC30
	call	#printf
	add	#4, r1
	push	#13
	push	#.LC11
	call	#printf
	add	#4, r1
	push	2+2(r1)
	push	#.LC31
	call	#printf
	add	#4, r1
	push	#7
	push	#.LC11
	call	#printf
	add	#4, r1
	push	2(r1)
	push	#.LC32
	call	#printf
	add	#4, r1
	push	#1
	push	#.LC11
	call	#printf
	add	#4, r1
	push	r6
	push	#.LC33
	call	#printf
	add	#4, r1
	mov	#.LC34, r15
	call	#puts
	push	r8
	push	#.LC35
	call	#printf
	add	#4, r1
	mov	#.LC36, r15
	call	#puts
	mov	#10, r15
	call	#putchar
	mov.b	#1, &29
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
	jeq	.L22
	ret
.L22:
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
	jeq	.L25
	mov	@r14, @r15
	mov	&Ptr_Glob, r13
.L24:
	add	#6, r13
	mov	&Int_Glob, r14
	mov	#10, r15
	call	#Proc_7
	ret
.L25:
	mov	#0, r13
	jmp	.L24
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
	jeq	.L27
	mov	#0, r15
.L27:
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
