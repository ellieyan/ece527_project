; ModuleID = 'div.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"a is %u,  b is %u and c is %u \0A\00", align 1
@.str1 = private unnamed_addr constant [32 x i8] c"e is %u,  f is %u and g is %u \0A\00", align 1
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
define i32 @do_div(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = udiv i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %c = alloca i32, align 4
  %g = alloca i32, align 4
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  store i32 65534, i32* %a, align 4
  store i32 17, i32* %b, align 4
  store i32 10000, i32* %e, align 4
  store i32 0, i32* %f, align 4
  %1 = load i32* %a, align 4
  %2 = load i32* %b, align 4
  %3 = call i32 @do_div(i32 %1, i32 %2)
  store i32 %3, i32* %c, align 4
  %4 = load i32* %e, align 4
  %5 = load i32* %f, align 4
  %6 = call i32 @do_div(i32 %4, i32 %5)
  store i32 %6, i32* %g, align 4
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  %7 = load i32* %a, align 4
  %8 = load i32* %b, align 4
  %9 = load i32* %c, align 4
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %8, i32 %9)
  %11 = load i32* %e, align 4
  %12 = load i32* %f, align 4
  %13 = load i32* %g, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i32 %11, i32 %12, i32 %13)
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
