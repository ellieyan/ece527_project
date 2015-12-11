	.file	"intFilt.c"
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
	mov	r14, r13
	mov	r15, r14
	mov	r13, r15
	call	#__mulhi3
	ret
.Lfe1:
	.size	domult,.Lfe1-domult
;; End of function 

	.p2align 1,0
.global	doFilt
	.type	doFilt,@function
/***********************
 * Function `doFilt' 
 ***********************/
doFilt:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r5
	push	r4
	mov	r15, r9
	cmp	#1, &size
	jl	.L2
	mov	&coeff, r14
	mov	&coeff+2, r15
	call	#__fixunssfsi
	mov	r14, r4
	mov	&coeff+4, r14
	mov	&coeff+4+2, r15
	call	#__fixunssfsi
	mov	r14, r5
	mov	&coeff+8, r14
	mov	&coeff+8+2, r15
	call	#__fixunssfsi
	mov	r14, r6
	mov	&coeff+12, r14
	mov	&coeff+12+2, r15
	call	#__fixunssfsi
	mov	r14, r7
	mov	#input, r11
	mov	#0, r8
.L4:
	add	#1, r8
	mov	@r11, r14
	mov	r4, r15
	call	#__mulhi3
	mov	r15, r10
	mov	2(r11), r14
	mov	r5, r15
	call	#__mulhi3
	add	r15, r10
	mov	4(r11), r14
	mov	r6, r15
	call	#__mulhi3
	add	r15, r10
	mov	6(r11), r14
	mov	r7, r15
	call	#__mulhi3
	add	r15, r10
	mov	r10, @r9
	add	#2, r11
	add	#2, r9
	cmp	&size, r8
	jl	.L4
.L2:
	pop	r4
	pop	r5
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe2:
	.size	doFilt,.Lfe2-doFilt
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
	mov	#25, r11
	mov.b	#1, @r11
	mov	&size, r15
	rla	r15
	call	#malloc
	call	#doFilt
	mov.b	#0, @r11
	mov.b	#1, &29
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

.global	size
	.data
	.p2align 1,0
	.type	size,@object
	.size	size,2
size:
	.word	7
.global	coeff
	.p2align 1,0
	.type	coeff,@object
	.size	coeff,16
coeff:
	.word	0
	.word	0
	.word	-4299
	.word	16056
	.word	0
	.word	16128
	.word	-4299
	.word	16056
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
	.section	.rodata
	.p2align 1,0
	.type	input,@object
	.size	input,98
input:
	.word	-11996
	.word	-6146
	.word	11025
	.word	11693
	.word	13596
	.word	11996
	.word	-9765
	.word	8797
	.word	4137
	.word	11320
	.word	-5598
	.word	-5598
	.word	-16794
	.word	-5493
	.word	15770
	.word	2350
	.word	14819
	.word	12305
	.word	-8251
	.word	-4908
	.word	-4204
	.word	2207
	.word	2466
	.word	-36
	.word	460
	.word	-6662
	.word	10888
	.word	-13415
	.word	-14539
	.word	6222
	.word	-2663
	.word	11074
	.word	-2947
	.word	-10955
	.word	-18798
	.word	-13595
	.word	3898
	.word	13180
	.word	7853
	.word	10050
	.word	-6334
	.word	12681
	.word	-12786
	.word	1854
	.word	12866
	.word	-2767
	.word	18394
	.word	-6294
	.word	-14598
