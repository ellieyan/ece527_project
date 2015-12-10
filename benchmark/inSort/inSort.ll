; ModuleID = 'inSort.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@run_bm.a = private unnamed_addr constant [17 x i32] [i32 1, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65534], align 16
@run_bm.b = private unnamed_addr constant [17 x i32] [i32 65534, i32 32767, i32 16383, i32 8191, i32 4095, i32 2047, i32 1023, i32 511, i32 255, i32 127, i32 63, i32 31, i32 15, i32 7, i32 3, i32 1, i32 1], align 16
@run_bm.c = private unnamed_addr constant [17 x i32] [i32 127, i32 63, i32 511, i32 8191, i32 1023, i32 65534, i32 3, i32 7, i32 32767, i32 2047, i32 31, i32 4095, i32 15, i32 16383, i32 1, i32 255, i32 1], align 16
@.str = private unnamed_addr constant [17 x i8] c"Execution starts\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
@Ptr_Glob = common global %struct.record* null, align 8
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Int_Glob = common global i32 0, align 4
@Bool_Glob = common global i32 0, align 4
@Ch_1_Glob = common global i8 0, align 1
@Ch_2_Glob = common global i8 0, align 1
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 16
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 16
@Begin_Time = common global i64 0, align 8
@End_Time = common global i64 0, align 8
@User_Time = common global i64 0, align 8
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define void @run_bm() #0 {
  %a = alloca [17 x i32], align 16
  %b = alloca [17 x i32], align 16
  %c = alloca [17 x i32], align 16
  %1 = bitcast [17 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([17 x i32]* @run_bm.a to i8*), i64 68, i32 16, i1 false)
  %2 = bitcast [17 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([17 x i32]* @run_bm.b to i8*), i64 68, i32 16, i1 false)
  %3 = bitcast [17 x i32]* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([17 x i32]* @run_bm.c to i8*), i64 68, i32 16, i1 false)
  %4 = getelementptr inbounds [17 x i32]* %a, i32 0, i32 0
  call void @insertion_sort(i32* %4, i64 17)
  %5 = getelementptr inbounds [17 x i32]* %b, i32 0, i32 0
  call void @insertion_sort(i32* %5, i64 17)
  %6 = getelementptr inbounds [17 x i32]* %c, i32 0, i32 0
  call void @insertion_sort(i32* %6, i64 17)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @insertion_sort(i32* %a, i64 %n) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %value = alloca i32, align 4
  store i32* %a, i32** %1, align 8
  store i64 %n, i64* %2, align 8
  store i64 1, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %43, %0
  %4 = load i64* %i, align 8
  %5 = load i64* %2, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %46

; <label>:7                                       ; preds = %3
  %8 = load i64* %i, align 8
  %9 = load i32** %1, align 8
  %10 = getelementptr inbounds i32* %9, i64 %8
  %11 = load i32* %10, align 4
  store i32 %11, i32* %value, align 4
  %12 = load i64* %i, align 8
  store i64 %12, i64* %j, align 8
  br label %13

; <label>:13                                      ; preds = %35, %7
  %14 = load i64* %j, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %13
  %17 = load i32* %value, align 4
  %18 = load i64* %j, align 8
  %19 = sub i64 %18, 1
  %20 = load i32** %1, align 8
  %21 = getelementptr inbounds i32* %20, i64 %19
  %22 = load i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br label %24

; <label>:24                                      ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %38

; <label>:26                                      ; preds = %24
  %27 = load i64* %j, align 8
  %28 = sub i64 %27, 1
  %29 = load i32** %1, align 8
  %30 = getelementptr inbounds i32* %29, i64 %28
  %31 = load i32* %30, align 4
  %32 = load i64* %j, align 8
  %33 = load i32** %1, align 8
  %34 = getelementptr inbounds i32* %33, i64 %32
  store i32 %31, i32* %34, align 4
  br label %35

; <label>:35                                      ; preds = %26
  %36 = load i64* %j, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %j, align 8
  br label %13

; <label>:38                                      ; preds = %24
  %39 = load i32* %value, align 4
  %40 = load i64* %j, align 8
  %41 = load i32** %1, align 8
  %42 = getelementptr inbounds i32* %41, i64 %40
  store i32 %39, i32* %42, align 4
  br label %43

; <label>:43                                      ; preds = %38
  %44 = load i64* %i, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %3

; <label>:46                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  call void @run_bm()
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
