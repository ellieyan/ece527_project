; ModuleID = 'dhry21b.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Int_Glob = external global i32
@Ch_1_Glob = external global i8

; Function Attrs: nounwind uwtable
define void @Proc_6(i32 %Enum_Val_Par, i32* %Enum_Ref_Par) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 %Enum_Val_Par, i32* %1, align 4
  store i32* %Enum_Ref_Par, i32** %2, align 8
  %3 = load i32* %1, align 4
  %4 = load i32** %2, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32* %1, align 4
  %6 = call i32 @Func_3(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = load i32** %2, align 8
  store i32 3, i32* %9, align 4
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = load i32* %1, align 4
  switch i32 %11, label %27 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %22
    i32 3, label %24
    i32 4, label %25
  ]

; <label>:12                                      ; preds = %10
  %13 = load i32** %2, align 8
  store i32 0, i32* %13, align 4
  br label %27

; <label>:14                                      ; preds = %10
  %15 = load i32* @Int_Glob, align 4
  %16 = icmp sgt i32 %15, 100
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = load i32** %2, align 8
  store i32 0, i32* %18, align 4
  br label %21

; <label>:19                                      ; preds = %14
  %20 = load i32** %2, align 8
  store i32 3, i32* %20, align 4
  br label %21

; <label>:21                                      ; preds = %19, %17
  br label %27

; <label>:22                                      ; preds = %10
  %23 = load i32** %2, align 8
  store i32 1, i32* %23, align 4
  br label %27

; <label>:24                                      ; preds = %10
  br label %27

; <label>:25                                      ; preds = %10
  %26 = load i32** %2, align 8
  store i32 2, i32* %26, align 4
  br label %27

; <label>:27                                      ; preds = %10, %25, %24, %22, %21, %12
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @Proc_7(i32 %Int_1_Par_Val, i32 %Int_2_Par_Val, i32* %Int_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  store i32 %Int_1_Par_Val, i32* %1, align 4
  store i32 %Int_2_Par_Val, i32* %2, align 4
  store i32* %Int_Par_Ref, i32** %3, align 8
  %4 = load i32* %1, align 4
  %5 = add nsw i32 %4, 2
  store i32 %5, i32* %Int_Loc, align 4
  %6 = load i32* %2, align 4
  %7 = load i32* %Int_Loc, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32** %3, align 8
  store i32 %8, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Proc_8(i32* %Arr_1_Par_Ref, [25 x i32]* %Arr_2_Par_Ref, i32 %Int_1_Par_Val, i32 %Int_2_Par_Val) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [25 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %Int_Index = alloca i32, align 4
  %Int_Loc = alloca i32, align 4
  store i32* %Arr_1_Par_Ref, i32** %1, align 8
  store [25 x i32]* %Arr_2_Par_Ref, [25 x i32]** %2, align 8
  store i32 %Int_1_Par_Val, i32* %3, align 4
  store i32 %Int_2_Par_Val, i32* %4, align 4
  %5 = load i32* %3, align 4
  %6 = add nsw i32 %5, 5
  store i32 %6, i32* %Int_Loc, align 4
  %7 = load i32* %4, align 4
  %8 = load i32* %Int_Loc, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32** %1, align 8
  %11 = getelementptr inbounds i32* %10, i64 %9
  store i32 %7, i32* %11, align 4
  %12 = load i32* %Int_Loc, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32** %1, align 8
  %15 = getelementptr inbounds i32* %14, i64 %13
  %16 = load i32* %15, align 4
  %17 = load i32* %Int_Loc, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load i32** %1, align 8
  %21 = getelementptr inbounds i32* %20, i64 %19
  store i32 %16, i32* %21, align 4
  %22 = load i32* %Int_Loc, align 4
  %23 = load i32* %Int_Loc, align 4
  %24 = add nsw i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = load i32** %1, align 8
  %27 = getelementptr inbounds i32* %26, i64 %25
  store i32 %22, i32* %27, align 4
  %28 = load i32* %Int_Loc, align 4
  store i32 %28, i32* %Int_Index, align 4
  br label %29

; <label>:29                                      ; preds = %43, %0
  %30 = load i32* %Int_Index, align 4
  %31 = load i32* %Int_Loc, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %29
  %35 = load i32* %Int_Loc, align 4
  %36 = load i32* %Int_Index, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32* %Int_Loc, align 4
  %39 = sext i32 %38 to i64
  %40 = load [25 x i32]** %2, align 8
  %41 = getelementptr inbounds [25 x i32]* %40, i64 %39
  %42 = getelementptr inbounds [25 x i32]* %41, i32 0, i64 %37
  store i32 %35, i32* %42, align 4
  br label %43

; <label>:43                                      ; preds = %34
  %44 = load i32* %Int_Index, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %Int_Index, align 4
  br label %29

; <label>:46                                      ; preds = %29
  %47 = load i32* %Int_Loc, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i32* %Int_Loc, align 4
  %51 = sext i32 %50 to i64
  %52 = load [25 x i32]** %2, align 8
  %53 = getelementptr inbounds [25 x i32]* %52, i64 %51
  %54 = getelementptr inbounds [25 x i32]* %53, i32 0, i64 %49
  %55 = load i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32* %Int_Loc, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32** %1, align 8
  %60 = getelementptr inbounds i32* %59, i64 %58
  %61 = load i32* %60, align 4
  %62 = load i32* %Int_Loc, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32* %Int_Loc, align 4
  %65 = add nsw i32 %64, 10
  %66 = sext i32 %65 to i64
  %67 = load [25 x i32]** %2, align 8
  %68 = getelementptr inbounds [25 x i32]* %67, i64 %66
  %69 = getelementptr inbounds [25 x i32]* %68, i32 0, i64 %63
  store i32 %61, i32* %69, align 4
  store i32 5, i32* @Int_Glob, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Func_1(i8 signext %Ch_1_Par_Val, i8 signext %Ch_2_Par_Val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %Ch_1_Loc = alloca i8, align 1
  %Ch_2_Loc = alloca i8, align 1
  store i8 %Ch_1_Par_Val, i8* %2, align 1
  store i8 %Ch_2_Par_Val, i8* %3, align 1
  %4 = load i8* %2, align 1
  store i8 %4, i8* %Ch_1_Loc, align 1
  %5 = load i8* %Ch_1_Loc, align 1
  store i8 %5, i8* %Ch_2_Loc, align 1
  %6 = load i8* %Ch_2_Loc, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1
  br label %14

; <label>:12                                      ; preds = %0
  %13 = load i8* %Ch_1_Loc, align 1
  store i8 %13, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %1
  br label %14

; <label>:14                                      ; preds = %12, %11
  %15 = load i32* %1
  ret i32 %15
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

; <label>:4                                       ; preds = %24, %0
  %5 = load i32* %Int_Loc, align 4
  %6 = icmp sle i32 %5, 2
  br i1 %6, label %7, label %25

; <label>:7                                       ; preds = %4
  %8 = load i32* %Int_Loc, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds i8* %10, i64 %9
  %12 = load i8* %11, align 1
  %13 = load i32* %Int_Loc, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = load i8** %3, align 8
  %17 = getelementptr inbounds i8* %16, i64 %15
  %18 = load i8* %17, align 1
  %19 = call i32 @Func_1(i8 signext %12, i8 signext %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %7
  store i8 65, i8* %Ch_Loc, align 1
  %22 = load i32* %Int_Loc, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %Int_Loc, align 4
  br label %24

; <label>:24                                      ; preds = %21, %7
  br label %4

; <label>:25                                      ; preds = %4
  %26 = load i8* %Ch_Loc, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 87
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i8* %Ch_Loc, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %31, 90
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  store i32 7, i32* %Int_Loc, align 4
  br label %34

; <label>:34                                      ; preds = %33, %29, %25
  %35 = load i8* %Ch_Loc, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 82
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %34
  store i32 1, i32* %1
  br label %49

; <label>:39                                      ; preds = %34
  %40 = load i8** %2, align 8
  %41 = load i8** %3, align 8
  %42 = call i32 @strcmp(i8* %40, i8* %41) #2
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

; <label>:44                                      ; preds = %39
  %45 = load i32* %Int_Loc, align 4
  %46 = add nsw i32 %45, 7
  store i32 %46, i32* %Int_Loc, align 4
  %47 = load i32* %Int_Loc, align 4
  store i32 %47, i32* @Int_Glob, align 4
  store i32 1, i32* %1
  br label %49

; <label>:48                                      ; preds = %39
  store i32 0, i32* %1
  br label %49

; <label>:49                                      ; preds = %48, %44, %38
  %50 = load i32* %1
  ret i32 %50
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
