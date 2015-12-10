; ModuleID = 'intAVG.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@size1 = global i32 200, align 4
@size2 = global i32 17, align 4
@input_buf1 = internal global [200 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@input_buf2 = internal global [17 x i32] [i32 1, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65534], align 16
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
define i32 @run_bm() #0 {
  %i = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %avg1 = alloca i32, align 4
  %avg2 = alloca i32, align 4
  %avg = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %sum1, align 4
  store i32 0, i32* %sum2, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %12, %0
  %2 = load i32* %i, align 4
  %3 = load i32* @size1, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %1
  %6 = load i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [200 x i32]* @input_buf1, i32 0, i64 %7
  %9 = load i32* %8, align 4
  %10 = load i32* %sum1, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %sum1, align 4
  br label %12

; <label>:12                                      ; preds = %5
  %13 = load i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %1

; <label>:15                                      ; preds = %1
  %16 = load i32* %sum1, align 4
  %17 = load i32* @size1, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %avg1, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %30, %15
  %20 = load i32* %i, align 4
  %21 = load i32* @size2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

; <label>:23                                      ; preds = %19
  %24 = load i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [17 x i32]* @input_buf2, i32 0, i64 %25
  %27 = load i32* %26, align 4
  %28 = load i32* %sum2, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %sum2, align 4
  br label %30

; <label>:30                                      ; preds = %23
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %19

; <label>:33                                      ; preds = %19
  %34 = load i32* %sum2, align 4
  %35 = load i32* @size2, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %avg2, align 4
  %37 = load i32* %avg1, align 4
  %38 = load i32* %avg2, align 4
  %39 = add nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %avg, align 4
  %41 = load i32* %avg, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %avg = alloca i32, align 4
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  %1 = call i32 @run_bm()
  store i32 %1, i32* %avg, align 4
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
