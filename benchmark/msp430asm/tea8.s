	.file	"tea8.c"
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
.global	encrypt
	.type	encrypt,@function
/***********************
 * Function `encrypt' 
 ***********************/
encrypt:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-22), r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-6(r4), r15
	mov	@r15, -24(r4)
	mov	-6(r4), r15
	mov	2(r15), -22(r4)
	mov	#2560, -16(r4)
	mov	#0, -18(r4)
	mov	-4(r4), r15
	mov	@r15, -14(r4)
	mov	-4(r4), r15
	mov	2(r15), -12(r4)
	mov	-4(r4), r15
	mov	4(r15), -10(r4)
	mov	-4(r4), r15
	mov	6(r15), -8(r4)
	mov	#0, -20(r4)
	jmp	.L2
.L3:
	add	-16(r4), -18(r4)
	mov	-22(r4), r15
	rla	r15
	rla	r15
	rla	r15
	rla	r15
	add	-14(r4), r15
	mov	r15, r14
	mov	-22(r4), r15
	add	-18(r4), r15
	xor	r15, r14
	mov	-22(r4), r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	add	-12(r4), r15
	xor	r15, r14
	mov	-24(r4), r15
	add	r14, r15
	mov	r15, -24(r4)
	mov	-24(r4), r15
	rla	r15
	rla	r15
	rla	r15
	rla	r15
	add	-10(r4), r15
	mov	r15, r14
	mov	-24(r4), r15
	add	-18(r4), r15
	xor	r15, r14
	mov	-24(r4), r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	add	-8(r4), r15
	xor	r15, r14
	mov	-22(r4), r15
	add	r14, r15
	mov	r15, -22(r4)
	add	#1, -20(r4)
.L2:
	cmp	#8, -20(r4)
	jl	.L3
	mov	-6(r4), r15
	mov	-24(r4), @r15
	mov	-6(r4), r15
	add	#2, r15
	mov	-22(r4), @r15
	add	#22, r1
	pop	r4
	ret
.Lfe1:
	.size	encrypt,.Lfe1-encrypt
;; End of function 

	.p2align 1,0
.global	decrypt
	.type	decrypt,@function
/***********************
 * Function `decrypt' 
 ***********************/
decrypt:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-22), r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-6(r4), r15
	mov	@r15, -24(r4)
	mov	-6(r4), r15
	mov	2(r15), -22(r4)
	mov	#20480, -20(r4)
	mov	#2560, -16(r4)
	mov	-4(r4), r15
	mov	@r15, -14(r4)
	mov	-4(r4), r15
	mov	2(r15), -12(r4)
	mov	-4(r4), r15
	mov	4(r15), -10(r4)
	mov	-4(r4), r15
	mov	6(r15), -8(r4)
	mov	#0, -18(r4)
	jmp	.L5
.L6:
	mov	-24(r4), r15
	rla	r15
	rla	r15
	rla	r15
	rla	r15
	mov	r15, r14
	add	-10(r4), r14
	mov	-24(r4), r15
	add	-20(r4), r15
	xor	r15, r14
	mov	-24(r4), r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	add	-8(r4), r15
	xor	r14, r15
	sub	r15, -22(r4)
	mov	-22(r4), r15
	rla	r15
	rla	r15
	rla	r15
	rla	r15
	mov	r15, r14
	add	-14(r4), r14
	mov	-22(r4), r15
	add	-20(r4), r15
	xor	r15, r14
	mov	-22(r4), r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	add	-12(r4), r15
	xor	r14, r15
	sub	r15, -24(r4)
	sub	-16(r4), -20(r4)
	add	#1, -18(r4)
.L5:
	cmp	#8, -18(r4)
	jl	.L6
	mov	-6(r4), r15
	mov	-24(r4), @r15
	mov	-6(r4), r15
	add	#2, r15
	mov	-22(r4), @r15
	add	#22, r1
	pop	r4
	ret
.Lfe2:
	.size	decrypt,.Lfe2-decrypt
;; End of function 

	.p2align 1,0
.global	run_bm
	.type	run_bm,@function
/***********************
 * Function `run_bm' 
 ***********************/
run_bm:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	#4, r15
	call	#malloc
	mov	r15, -6(r4)
	mov	#8, r15
	call	#malloc
	mov	r15, -4(r4)
	mov	-6(r4), r15
	mov	#0, @r15
	mov	-6(r4), r15
	add	#2, r15
	mov	#255, @r15
	mov	-4(r4), r15
	mov	#119, @r15
	mov	-4(r4), r15
	add	#2, r15
	mov	#140, @r15
	mov	-4(r4), r15
	add	#4, r15
	mov	#174, @r15
	mov	-4(r4), r15
	add	#6, r15
	mov	#56, @r15
	mov	-4(r4), r14
	mov	-6(r4), r15
	call	#encrypt
	mov	-4(r4), r14
	mov	-6(r4), r15
	call	#decrypt
	add	#4, r1
	pop	r4
	ret
.Lfe3:
	.size	run_bm,.Lfe3-run_bm
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
	mov	#288, r15
	mov	#23168, @r15
	mov	#25, r15
	mov.b	#1, @r15
	call	#run_bm
	mov	#25, r15
	mov.b	#0, @r15
	mov	#29, r15
	mov.b	#1, @r15
.LIRD0:
.Lfe4:
	.size	main,.Lfe4-main
;; End of function 

