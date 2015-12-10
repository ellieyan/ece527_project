; ModuleID = 'dhry_2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Int_Glob = external global i32
@Ch_1_Glob = external global i8

; Function Attrs: nounwind uwtable
define i32 @Proc_6(i32 %Enum_Val_Par, i32* %Enum_Ref_Par) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %Enum_Val_Par, i32* %2, align 4
  store i32* %Enum_Ref_Par, i32** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load i32** %3, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32* %2, align 4
  %7 = call i32 @Func_3(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32** %3, align 8
  store i32 3, i32* %10, align 4
  br label %11

; <label>:11                                      ; preds = %9, %0
  %12 = load i32* %2, align 4
  switch i32 %12, label %28 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %23
    i32 3, label %25
    i32 4, label %26
  ]

; <label>:13                                      ; preds = %11
  %14 = load i32** %3, align 8
  store i32 0, i32* %14, align 4
  br label %28

; <label>:15                                      ; preds = %11
  %16 = load i32* @Int_Glob, align 4
  %17 = icmp sgt i32 %16, 100
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = load i32** %3, align 8
  store i32 0, i32* %19, align 4
  br label %22

; <label>:20                                      ; preds = %15
  %21 = load i32** %3, align 8
  store i32 3, i32* %21, align 4
  br label %22

; <label>:22                                      ; preds = %20, %18
  br label %28

; <label>:23                                      ; preds = %11
  %24 = load i32** %3, align 8
  store i32 1, i32* %24, align 4
  br label %28

; <label>:25                                      ; preds = %11
  br label %28

; <label>:26                                      ; preds = %11
  %27 = load i32** %3, align 8
  store i32 2, i32* %27, align 4
  br label %28

; <label>:28                                      ; preds = %11, %26, %25, %23, %22, %13
  %29 = load i32* %1
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @Proc_7(i32 %Int_1_Par_Val, i32 %Int_2_Par_Val, i32* %Int_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  store i32 %Int_1_Par_Val, i32* %2, align 4
  store i32 %Int_2_Par_Val, i32* %3, align 4
  store i32* %Int_Par_Ref, i32** %4, align 8
  %5 = load i32* %2, align 4
  %6 = add nsw i32 %5, 2
  store i32 %6, i32* %Int_Loc, align 4
  %7 = load i32* %3, align 4
  %8 = load i32* %Int_Loc, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32** %4, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32* %1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @Proc_8(i32* %Arr_1_Par_Ref, [50 x i32]* %Arr_2_Par_Ref, i32 %Int_1_Par_Val, i32 %Int_2_Par_Val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [50 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %Int_Index = alloca i32, align 4
  %Int_Loc = alloca i32, align 4
  store i32* %Arr_1_Par_Ref, i32** %2, align 8
  store [50 x i32]* %Arr_2_Par_Ref, [50 x i32]** %3, align 8
  store i32 %Int_1_Par_Val, i32* %4, align 4
  store i32 %Int_2_Par_Val, i32* %5, align 4
  %6 = load i32* %4, align 4
  %7 = add nsw i32 %6, 5
  store i32 %7, i32* %Int_Loc, align 4
  %8 = load i32* %5, align 4
  %9 = load i32* %Int_Loc, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %2, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  store i32 %8, i32* %12, align 4
  %13 = load i32* %Int_Loc, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32** %2, align 8
  %16 = getelementptr inbounds i32* %15, i64 %14
  %17 = load i32* %16, align 4
  %18 = load i32* %Int_Loc, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i32** %2, align 8
  %22 = getelementptr inbounds i32* %21, i64 %20
  store i32 %17, i32* %22, align 4
  %23 = load i32* %Int_Loc, align 4
  %24 = load i32* %Int_Loc, align 4
  %25 = add nsw i32 %24, 30
  %26 = sext i32 %25 to i64
  %27 = load i32** %2, align 8
  %28 = getelementptr inbounds i32* %27, i64 %26
  store i32 %23, i32* %28, align 4
  %29 = load i32* %Int_Loc, align 4
  store i32 %29, i32* %Int_Index, align 4
  br label %30

; <label>:30                                      ; preds = %44, %0
  %31 = load i32* %Int_Index, align 4
  %32 = load i32* %Int_Loc, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %30
  %36 = load i32* %Int_Loc, align 4
  %37 = load i32* %Int_Index, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32* %Int_Loc, align 4
  %40 = sext i32 %39 to i64
  %41 = load [50 x i32]** %3, align 8
  %42 = getelementptr inbounds [50 x i32]* %41, i64 %40
  %43 = getelementptr inbounds [50 x i32]* %42, i32 0, i64 %38
  store i32 %36, i32* %43, align 4
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load i32* %Int_Index, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %Int_Index, align 4
  br label %30

; <label>:47                                      ; preds = %30
  %48 = load i32* %Int_Loc, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i32* %Int_Loc, align 4
  %52 = sext i32 %51 to i64
  %53 = load [50 x i32]** %3, align 8
  %54 = getelementptr inbounds [50 x i32]* %53, i64 %52
  %55 = getelementptr inbounds [50 x i32]* %54, i32 0, i64 %50
  %56 = load i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32* %Int_Loc, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32** %2, align 8
  %61 = getelementptr inbounds i32* %60, i64 %59
  %62 = load i32* %61, align 4
  %63 = load i32* %Int_Loc, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32* %Int_Loc, align 4
  %66 = add nsw i32 %65, 20
  %67 = sext i32 %66 to i64
  %68 = load [50 x i32]** %3, align 8
  %69 = getelementptr inbounds [50 x i32]* %68, i64 %67
  %70 = getelementptr inbounds [50 x i32]* %69, i32 0, i64 %64
  store i32 %62, i32* %70, align 4
  store i32 5, i32* @Int_Glob, align 4
  %71 = load i32* %1
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @Func_1(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %Ch_1_Loc = alloca i8, align 1
  %Ch_2_Loc = alloca i8, align 1
  %Ch_1_Par_Val = trunc i32 %0 to i8
  %Ch_2_Par_Val = trunc i32 %1 to i8
  store i8 %Ch_1_Par_Val, i8* %4, align 1
  store i8 %Ch_2_Par_Val, i8* %5, align 1
  %6 = load i8* %4, align 1
  store i8 %6, i8* %Ch_1_Loc, align 1
  %7 = load i8* %Ch_1_Loc, align 1
  store i8 %7, i8* %Ch_2_Loc, align 1
  %8 = load i8* %Ch_2_Loc, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %2
  store i32 0, i32* %3
  br label %16

; <label>:14                                      ; preds = %2
  %15 = load i8* %Ch_1_Loc, align 1
  store i8 %15, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %3
  br label %16

; <label>:16                                      ; preds = %14, %13
  %17 = load i32* %3
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @Func_2(i8* %Str_1_Par_Ref, i8* %Str_2_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %Int_Loc = alloca i32, align 4
  %Ch_Loc = alloca i8, align 1
  store i8* %Str_1_Par_Ref, i8** %2, align 8
  store i8* %Str_2_Par_Ref, i8** %3, align 8
  store i32 2, i32* %Int_Loc, align 4
  br label %4

; <label>:4                                       ; preds = %26, %0
  %5 = load i32* %Int_Loc, align 4
  %6 = icmp sle i32 %5, 2
  br i1 %6, label %7, label %27

; <label>:7                                       ; preds = %4
  %8 = load i32* %Int_Loc, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds i8* %10, i64 %9
  %12 = load i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32* %Int_Loc, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = load i8** %3, align 8
  %18 = getelementptr inbounds i8* %17, i64 %16
  %19 = load i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func_1(i32 %13, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %7
  store i8 65, i8* %Ch_Loc, align 1
  %24 = load i32* %Int_Loc, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %Int_Loc, align 4
  br label %26

; <label>:26                                      ; preds = %23, %7
  br label %4

; <label>:27                                      ; preds = %4
  %28 = load i8* %Ch_Loc, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 87
  br i1 %30, label %31, label %36

; <label>:31                                      ; preds = %27
  %32 = load i8* %Ch_Loc, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 90
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %31
  store i32 7, i32* %Int_Loc, align 4
  br label %36

; <label>:36                                      ; preds = %35, %31, %27
  %37 = load i8* %Ch_Loc, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 82
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %36
  store i32 1, i32* %1
  br label %51

; <label>:41                                      ; preds = %36
  %42 = load i8** %2, align 8
  %43 = load i8** %3, align 8
  %44 = call i32 @strcmp(i8* %42, i8* %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %41
  %47 = load i32* %Int_Loc, align 4
  %48 = add nsw i32 %47, 7
  store i32 %48, i32* %Int_Loc, align 4
  %49 = load i32* %Int_Loc, align 4
  store i32 %49, i32* @Int_Glob, align 4
  store i32 1, i32* %1
  br label %51

; <label>:50                                      ; preds = %41
  store i32 0, i32* %1
  br label %51

; <label>:51                                      ; preds = %50, %46, %40
  %52 = load i32* %1
  ret i32 %52
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @Func_3(i32 %Enum_Par_Val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Enum_Loc = alloca i32, align 4
  store i32 %Enum_Par_Val, i32* %2, align 4
  %3 = load i32* %2, align 4
  store i32 %3, i32* %Enum_Loc, align 4
  %4 = load i32* %Enum_Loc, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 1, i32* %1
  br label %8

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i32* %1
  ret i32 %9
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
