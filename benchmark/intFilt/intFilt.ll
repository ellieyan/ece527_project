; ModuleID = 'intFilt.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@coeff = global [4 x float] [float 0.000000e+00, float 0x3FD71DE6A0000000, float 5.000000e-01, float 0x3FD71DE6A0000000], align 16
@size = global i32 7, align 4
@input = internal global [49 x i32] [i32 -11996, i32 -6146, i32 11025, i32 11693, i32 13596, i32 11996, i32 -9765, i32 8797, i32 4137, i32 11320, i32 -5598, i32 -5598, i32 -16794, i32 -5493, i32 15770, i32 2350, i32 14819, i32 12305, i32 -8251, i32 -4908, i32 -4204, i32 2207, i32 2466, i32 -36, i32 460, i32 -6662, i32 10888, i32 -13415, i32 -14539, i32 6222, i32 -2663, i32 11074, i32 -2947, i32 -10955, i32 -18798, i32 -13595, i32 3898, i32 13180, i32 7853, i32 10050, i32 -6334, i32 12681, i32 -12786, i32 1854, i32 12866, i32 -2767, i32 18394, i32 -6294, i32 -14598], align 16
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
define i32 @domult(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = mul i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @doFilt(i32* %output) #0 {
  %1 = alloca i32*, align 8
  %i = alloca i32, align 4
  %one = alloca i32, align 4
  %two = alloca i32, align 4
  %three = alloca i32, align 4
  %four = alloca i32, align 4
  store i32* %output, i32** %1, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %49, %0
  %3 = load i32* %i, align 4
  %4 = load i32* @size, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %52

; <label>:6                                       ; preds = %2
  %7 = load float* getelementptr inbounds ([4 x float]* @coeff, i32 0, i64 0), align 4
  %8 = fptoui float %7 to i32
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [49 x i32]* @input, i32 0, i64 %10
  %12 = load i32* %11, align 4
  %13 = call i32 @domult(i32 %8, i32 %12)
  store i32 %13, i32* %one, align 4
  %14 = load float* getelementptr inbounds ([4 x float]* @coeff, i32 0, i64 1), align 4
  %15 = fptoui float %14 to i32
  %16 = load i32* %i, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [49 x i32]* @input, i32 0, i64 %18
  %20 = load i32* %19, align 4
  %21 = call i32 @domult(i32 %15, i32 %20)
  store i32 %21, i32* %two, align 4
  %22 = load float* getelementptr inbounds ([4 x float]* @coeff, i32 0, i64 2), align 4
  %23 = fptoui float %22 to i32
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [49 x i32]* @input, i32 0, i64 %26
  %28 = load i32* %27, align 4
  %29 = call i32 @domult(i32 %23, i32 %28)
  store i32 %29, i32* %three, align 4
  %30 = load float* getelementptr inbounds ([4 x float]* @coeff, i32 0, i64 3), align 4
  %31 = fptoui float %30 to i32
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [49 x i32]* @input, i32 0, i64 %34
  %36 = load i32* %35, align 4
  %37 = call i32 @domult(i32 %31, i32 %36)
  store i32 %37, i32* %four, align 4
  %38 = load i32* %one, align 4
  %39 = load i32* %two, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32* %three, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32* %four, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32* %i, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32** %1, align 8
  %48 = getelementptr inbounds i32* %47, i64 %46
  store i32 %44, i32* %48, align 4
  br label %49

; <label>:49                                      ; preds = %6
  %50 = load i32* %i, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %i, align 4
  br label %2

; <label>:52                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %output = alloca i32*, align 8
  %i = alloca i32, align 4
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  %1 = load i32* @size, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %3)
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %output, align 8
  store i32 0, i32* %i, align 4
  %6 = load i32** %output, align 8
  call void @doFilt(i32* %6)
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

declare i8* @malloc(...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
