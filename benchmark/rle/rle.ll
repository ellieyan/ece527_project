; ModuleID = 'rle.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW\00", align 1
@o = global i8* getelementptr inbounds ([68 x i8]* @.str, i32 0, i32 0), align 8
@.str1 = private unnamed_addr constant [11 x i8] c"RLE DONE \0A\00", align 1
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
define i32 @rle_encode(i8* %out, i8* %in, i32 %l) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %dl = alloca i32, align 4
  %i = alloca i32, align 4
  %cp = alloca i8, align 1
  %c = alloca i8, align 1
  store i8* %out, i8** %1, align 8
  store i8* %in, i8** %2, align 8
  store i32 %l, i32* %3, align 4
  %4 = load i8** %2, align 8
  %5 = getelementptr inbounds i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  %6 = load i8* %4, align 1
  store i8 %6, i8* %c, align 1
  store i8 %6, i8* %cp, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %dl, align 4
  br label %7

; <label>:7                                       ; preds = %42, %0
  %8 = load i32* %3, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %48

; <label>:10                                      ; preds = %7
  %11 = load i8* %c, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8* %cp, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %30

; <label>:16                                      ; preds = %10
  %17 = load i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  %19 = load i32* %i, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %16
  %22 = load i8** %1, align 8
  %23 = getelementptr inbounds i8* %22, i32 1
  store i8* %23, i8** %1, align 8
  store i8 -1, i8* %22, align 1
  %24 = load i8* %c, align 1
  %25 = load i8** %1, align 8
  %26 = getelementptr inbounds i8* %25, i32 1
  store i8* %26, i8** %1, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i32* %dl, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %dl, align 4
  store i32 1, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %21, %16
  br label %40

; <label>:30                                      ; preds = %10
  %31 = load i32* %i, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8** %1, align 8
  %34 = getelementptr inbounds i8* %33, i32 1
  store i8* %34, i8** %1, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i8* %cp, align 1
  %36 = load i8** %1, align 8
  %37 = getelementptr inbounds i8* %36, i32 1
  store i8* %37, i8** %1, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32* %dl, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %dl, align 4
  store i32 1, i32* %i, align 4
  br label %40

; <label>:40                                      ; preds = %30, %29
  %41 = load i8* %c, align 1
  store i8 %41, i8* %cp, align 1
  br label %42

; <label>:42                                      ; preds = %40
  %43 = load i8** %2, align 8
  %44 = getelementptr inbounds i8* %43, i32 1
  store i8* %44, i8** %2, align 8
  %45 = load i8* %43, align 1
  store i8 %45, i8* %c, align 1
  %46 = load i32* %3, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %3, align 4
  br label %7

; <label>:48                                      ; preds = %7
  %49 = load i32* %i, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8** %1, align 8
  %52 = getelementptr inbounds i8* %51, i32 1
  store i8* %52, i8** %1, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8* %cp, align 1
  %54 = load i8** %1, align 8
  %55 = getelementptr inbounds i8* %54, i32 1
  store i8* %55, i8** %1, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i32* %dl, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %dl, align 4
  %58 = load i32* %dl, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @rle_decode(i8* %out, i8* %in, i32 %l) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %tb = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %out, i8** %1, align 8
  store i8* %in, i8** %2, align 8
  store i32 %l, i32* %3, align 4
  store i32 0, i32* %tb, align 4
  br label %4

; <label>:4                                       ; preds = %27, %0
  %5 = load i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %4
  %8 = load i8** %2, align 8
  %9 = getelementptr inbounds i8* %8, i32 1
  store i8* %9, i8** %2, align 8
  %10 = load i8* %8, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %i, align 4
  %12 = load i8** %2, align 8
  %13 = getelementptr inbounds i8* %12, i32 1
  store i8* %13, i8** %2, align 8
  %14 = load i8* %12, align 1
  store i8 %14, i8* %c, align 1
  %15 = load i32* %i, align 4
  %16 = load i32* %tb, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %tb, align 4
  br label %18

; <label>:18                                      ; preds = %22, %7
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %i, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %18
  %23 = load i8* %c, align 1
  %24 = load i8** %1, align 8
  %25 = getelementptr inbounds i8* %24, i32 1
  store i8* %25, i8** %1, align 8
  store i8 %23, i8* %24, align 1
  br label %18

; <label>:26                                      ; preds = %18
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32* %3, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %4

; <label>:30                                      ; preds = %4
  %31 = load i32* %tb, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define void @run_bm() #0 {
  %d = alloca i8*, align 8
  %oc = alloca i8*, align 8
  %rl = alloca i32, align 4
  %1 = load i8** @o, align 8
  %2 = call i64 @strlen(i8* %1) #3
  %3 = mul i64 2, %2
  %4 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %3)
  store i8* %4, i8** %d, align 8
  %5 = load i8** @o, align 8
  %6 = call i64 @strlen(i8* %5) #3
  %7 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %6)
  store i8* %7, i8** %oc, align 8
  %8 = load i8** %d, align 8
  %9 = load i8** @o, align 8
  %10 = load i8** @o, align 8
  %11 = call i64 @strlen(i8* %10) #3
  %12 = trunc i64 %11 to i32
  %13 = call i32 @rle_encode(i8* %8, i8* %9, i32 %12)
  store i32 %13, i32* %rl, align 4
  %14 = load i8** %d, align 8
  %15 = call i32 (i8*, ...)* bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %14)
  %16 = load i8** %oc, align 8
  %17 = call i32 (i8*, ...)* bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %16)
  ret void
}

declare i8* @malloc(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @free(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  call void @run_bm()
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
