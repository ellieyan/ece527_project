; ModuleID = 'binSearch.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@a = global [17 x i32] [i32 1, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65534], align 16
@.str = private unnamed_addr constant [19 x i8] c"Assertion FAILED \0A\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"Execution starts\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
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
define void @assert(i32 %value) #0 {
  %1 = alloca i32, align 4
  store i32 %value, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #3
  unreachable

; <label>:6                                       ; preds = %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmpObject(i32* %pa, i32* %pb) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32* %pa, i32** %2, align 8
  store i32* %pb, i32** %3, align 8
  %4 = load i32** %2, align 8
  %5 = load i32* %4, align 4
  store i32 %5, i32* %a, align 4
  %6 = load i32** %3, align 8
  %7 = load i32* %6, align 4
  store i32 %7, i32* %b, align 4
  %8 = load i32* %a, align 4
  %9 = load i32* %b, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i32 -1, i32* %1
  br label %22

; <label>:12                                      ; preds = %0
  %13 = load i32* %a, align 4
  %14 = load i32* %b, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12
  store i32 0, i32* %1
  br label %22

; <label>:17                                      ; preds = %12
  %18 = load i32* %a, align 4
  %19 = load i32* %b, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %17
  store i32 1, i32* %1
  br label %22

; <label>:22                                      ; preds = %11, %16, %21, %17
  %23 = load i32* %1
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @bsearch(i32* %Array, i32 %n, i32* %KeyPtr, i32 (i32*, i32*)* %cmp, i32 %NotFound) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32*, i32*)*, align 8
  %6 = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %Array, i32** %2, align 8
  store i32 %n, i32* %3, align 4
  store i32* %KeyPtr, i32** %4, align 8
  store i32 (i32*, i32*)* %cmp, i32 (i32*, i32*)** %5, align 8
  store i32 %NotFound, i32* %6, align 4
  store i32 1, i32* %left, align 4
  %7 = load i32* %3, align 4
  store i32 %7, i32* %right, align 4
  %8 = load i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %10
  %14 = load i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = load i32 (i32*, i32*)** %5, align 8
  %18 = icmp ne i32 (i32*, i32*)* %17, null
  br i1 %18, label %21, label %19

; <label>:19                                      ; preds = %16, %13, %10, %0
  %20 = load i32* %6, align 4
  store i32 %20, i32* %1
  br label %64

; <label>:21                                      ; preds = %16
  br label %22

; <label>:22                                      ; preds = %48, %21
  %23 = load i32* %left, align 4
  %24 = load i32* %right, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %49

; <label>:26                                      ; preds = %22
  %27 = load i32* %left, align 4
  %28 = load i32* %right, align 4
  %29 = add i32 %27, %28
  %30 = udiv i32 %29, 2
  store i32 %30, i32* %m, align 4
  %31 = load i32 (i32*, i32*)** %5, align 8
  %32 = load i32** %2, align 8
  %33 = load i32* %m, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32* %32, i64 %34
  %36 = load i32** %4, align 8
  %37 = call i32 %31(i32* %35, i32* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

; <label>:39                                      ; preds = %26
  %40 = load i32* %m, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %left, align 4
  br label %48

; <label>:42                                      ; preds = %26
  %43 = load i32* %right, align 4
  %44 = load i32* %m, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  call void @assert(i32 %46)
  %47 = load i32* %m, align 4
  store i32 %47, i32* %right, align 4
  br label %48

; <label>:48                                      ; preds = %42, %39
  br label %22

; <label>:49                                      ; preds = %22
  %50 = load i32 (i32*, i32*)** %5, align 8
  %51 = load i32** %2, align 8
  %52 = load i32* %right, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32* %51, i64 %53
  %55 = load i32** %4, align 8
  %56 = call i32 %50(i32* %54, i32* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %49
  %59 = load i32* %right, align 4
  br label %62

; <label>:60                                      ; preds = %49
  %61 = load i32* %6, align 4
  br label %62

; <label>:62                                      ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %1
  br label %64

; <label>:64                                      ; preds = %62, %19
  %65 = load i32* %1
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define void @run_bm() #0 {
  %n = alloca i32, align 4
  %NotFound = alloca i32, align 4
  %key = alloca i32, align 4
  %index = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 16, i32* %n, align 4
  store i32 -1, i32* %NotFound, align 4
  store i32 0, i32* %key, align 4
  %1 = load i32* %n, align 4
  %2 = call i32 @bsearch(i32* getelementptr inbounds ([17 x i32]* @a, i32 0, i32 0), i32 %1, i32* %key, i32 (i32*, i32*)* @cmpObject, i32 -1)
  store i32 %2, i32* %index, align 4
  store i32 65535, i32* %key, align 4
  %3 = load i32* %n, align 4
  %4 = call i32 @bsearch(i32* getelementptr inbounds ([17 x i32]* @a, i32 0, i32 0), i32 %3, i32* %key, i32 (i32*, i32*)* @cmpObject, i32 -1)
  store i32 %4, i32* %index, align 4
  store i32 255, i32* %key, align 4
  %5 = load i32* %n, align 4
  %6 = call i32 @bsearch(i32* getelementptr inbounds ([17 x i32]* @a, i32 0, i32 0), i32 %5, i32* %key, i32 (i32*, i32*)* @cmpObject, i32 -1)
  store i32 %6, i32* %index, align 4
  %7 = load i32* %n, align 4
  %8 = call i32 @bsearch(i32* getelementptr inbounds ([17 x i32]* @a, i32 0, i32 0), i32 %7, i32* null, i32 (i32*, i32*)* @cmpObject, i32 -1)
  store i32 %8, i32* %index, align 4
  store i32 1, i32* %a, align 4
  store i32 32767, i32* %b, align 4
  %9 = load i32* %a, align 4
  %10 = load i32* %b, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %c, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  call void @run_bm()
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
