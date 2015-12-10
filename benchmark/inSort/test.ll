; ModuleID = 'test.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.a = private unnamed_addr constant [10 x i32] [i32 4, i32 65, i32 2, i32 -31, i32 0, i32 99, i32 2, i32 83, i32 782, i32 1], align 16
@.str = private unnamed_addr constant [17 x i8] c"a at start is  \0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"a at the end is  \0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [10 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([10 x i32]* @main.a to i8*), i64 40, i32 16, i1 false)
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %13, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 %9
  %11 = load i32* %10, align 4
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %11)
  br label %13

; <label>:13                                      ; preds = %7
  %14 = load i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %4

; <label>:16                                      ; preds = %4
  %17 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 0
  call void @insertion_sort(i32* %17, i64 10)
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %28, %16
  %20 = load i32* %i, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %31

; <label>:22                                      ; preds = %19
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 %24
  %26 = load i32* %25, align 4
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28                                      ; preds = %22
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %19

; <label>:31                                      ; preds = %19
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

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

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
