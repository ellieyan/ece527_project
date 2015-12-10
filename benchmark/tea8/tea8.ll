; ModuleID = 'tea8.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
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
define void @encrypt(i16* %v, i16* %k) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %v0 = alloca i16, align 2
  %v1 = alloca i16, align 2
  %i = alloca i16, align 2
  %delta = alloca i16, align 2
  %sum = alloca i16, align 2
  %k0 = alloca i16, align 2
  %k1 = alloca i16, align 2
  %k2 = alloca i16, align 2
  %k3 = alloca i16, align 2
  store i16* %v, i16** %1, align 8
  store i16* %k, i16** %2, align 8
  %3 = load i16** %1, align 8
  %4 = getelementptr inbounds i16* %3, i64 0
  %5 = load i16* %4, align 2
  store i16 %5, i16* %v0, align 2
  %6 = load i16** %1, align 8
  %7 = getelementptr inbounds i16* %6, i64 1
  %8 = load i16* %7, align 2
  store i16 %8, i16* %v1, align 2
  store i16 2560, i16* %delta, align 2
  store i16 0, i16* %sum, align 2
  %9 = load i16** %2, align 8
  %10 = getelementptr inbounds i16* %9, i64 0
  %11 = load i16* %10, align 2
  store i16 %11, i16* %k0, align 2
  %12 = load i16** %2, align 8
  %13 = getelementptr inbounds i16* %12, i64 1
  %14 = load i16* %13, align 2
  store i16 %14, i16* %k1, align 2
  %15 = load i16** %2, align 8
  %16 = getelementptr inbounds i16* %15, i64 2
  %17 = load i16* %16, align 2
  store i16 %17, i16* %k2, align 2
  %18 = load i16** %2, align 8
  %19 = getelementptr inbounds i16* %18, i64 3
  %20 = load i16* %19, align 2
  store i16 %20, i16* %k3, align 2
  store i16 0, i16* %i, align 2
  br label %21

; <label>:21                                      ; preds = %78, %0
  %22 = load i16* %i, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %81

; <label>:25                                      ; preds = %21
  %26 = load i16* %delta, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16* %sum, align 2
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %sum, align 2
  %32 = load i16* %v1, align 2
  %33 = sext i16 %32 to i32
  %34 = shl i32 %33, 4
  %35 = load i16* %k0, align 2
  %36 = sext i16 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = load i16* %v1, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16* %sum, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %39, %41
  %43 = xor i32 %37, %42
  %44 = load i16* %v1, align 2
  %45 = sext i16 %44 to i32
  %46 = ashr i32 %45, 5
  %47 = load i16* %k1, align 2
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = xor i32 %43, %49
  %51 = load i16* %v0, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %v0, align 2
  %55 = load i16* %v0, align 2
  %56 = sext i16 %55 to i32
  %57 = shl i32 %56, 4
  %58 = load i16* %k2, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = load i16* %v0, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16* %sum, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = xor i32 %60, %65
  %67 = load i16* %v0, align 2
  %68 = sext i16 %67 to i32
  %69 = ashr i32 %68, 5
  %70 = load i16* %k3, align 2
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = xor i32 %66, %72
  %74 = load i16* %v1, align 2
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %v1, align 2
  br label %78

; <label>:78                                      ; preds = %25
  %79 = load i16* %i, align 2
  %80 = add i16 %79, 1
  store i16 %80, i16* %i, align 2
  br label %21

; <label>:81                                      ; preds = %21
  %82 = load i16* %v0, align 2
  %83 = load i16** %1, align 8
  %84 = getelementptr inbounds i16* %83, i64 0
  store i16 %82, i16* %84, align 2
  %85 = load i16* %v1, align 2
  %86 = load i16** %1, align 8
  %87 = getelementptr inbounds i16* %86, i64 1
  store i16 %85, i16* %87, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @decrypt(i16* %v, i16* %k) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %v0 = alloca i16, align 2
  %v1 = alloca i16, align 2
  %sum = alloca i16, align 2
  %i = alloca i16, align 2
  %delta = alloca i16, align 2
  %k0 = alloca i16, align 2
  %k1 = alloca i16, align 2
  %k2 = alloca i16, align 2
  %k3 = alloca i16, align 2
  store i16* %v, i16** %1, align 8
  store i16* %k, i16** %2, align 8
  %3 = load i16** %1, align 8
  %4 = getelementptr inbounds i16* %3, i64 0
  %5 = load i16* %4, align 2
  store i16 %5, i16* %v0, align 2
  %6 = load i16** %1, align 8
  %7 = getelementptr inbounds i16* %6, i64 1
  %8 = load i16* %7, align 2
  store i16 %8, i16* %v1, align 2
  store i16 20480, i16* %sum, align 2
  store i16 2560, i16* %delta, align 2
  %9 = load i16** %2, align 8
  %10 = getelementptr inbounds i16* %9, i64 0
  %11 = load i16* %10, align 2
  store i16 %11, i16* %k0, align 2
  %12 = load i16** %2, align 8
  %13 = getelementptr inbounds i16* %12, i64 1
  %14 = load i16* %13, align 2
  store i16 %14, i16* %k1, align 2
  %15 = load i16** %2, align 8
  %16 = getelementptr inbounds i16* %15, i64 2
  %17 = load i16* %16, align 2
  store i16 %17, i16* %k2, align 2
  %18 = load i16** %2, align 8
  %19 = getelementptr inbounds i16* %18, i64 3
  %20 = load i16* %19, align 2
  store i16 %20, i16* %k3, align 2
  store i16 0, i16* %i, align 2
  br label %21

; <label>:21                                      ; preds = %78, %0
  %22 = load i16* %i, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %81

; <label>:25                                      ; preds = %21
  %26 = load i16* %v0, align 2
  %27 = sext i16 %26 to i32
  %28 = shl i32 %27, 4
  %29 = load i16* %k2, align 2
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = load i16* %v0, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16* %sum, align 2
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = xor i32 %31, %36
  %38 = load i16* %v0, align 2
  %39 = sext i16 %38 to i32
  %40 = ashr i32 %39, 5
  %41 = load i16* %k3, align 2
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = xor i32 %37, %43
  %45 = load i16* %v1, align 2
  %46 = sext i16 %45 to i32
  %47 = sub nsw i32 %46, %44
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %v1, align 2
  %49 = load i16* %v1, align 2
  %50 = sext i16 %49 to i32
  %51 = shl i32 %50, 4
  %52 = load i16* %k0, align 2
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = load i16* %v1, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16* %sum, align 2
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %56, %58
  %60 = xor i32 %54, %59
  %61 = load i16* %v1, align 2
  %62 = sext i16 %61 to i32
  %63 = ashr i32 %62, 5
  %64 = load i16* %k1, align 2
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = xor i32 %60, %66
  %68 = load i16* %v0, align 2
  %69 = sext i16 %68 to i32
  %70 = sub nsw i32 %69, %67
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %v0, align 2
  %72 = load i16* %delta, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16* %sum, align 2
  %75 = sext i16 %74 to i32
  %76 = sub nsw i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %sum, align 2
  br label %78

; <label>:78                                      ; preds = %25
  %79 = load i16* %i, align 2
  %80 = add i16 %79, 1
  store i16 %80, i16* %i, align 2
  br label %21

; <label>:81                                      ; preds = %21
  %82 = load i16* %v0, align 2
  %83 = load i16** %1, align 8
  %84 = getelementptr inbounds i16* %83, i64 0
  store i16 %82, i16* %84, align 2
  %85 = load i16* %v1, align 2
  %86 = load i16** %1, align 8
  %87 = getelementptr inbounds i16* %86, i64 1
  store i16 %85, i16* %87, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @run_bm() #0 {
  %v = alloca i16*, align 8
  %k = alloca i16*, align 8
  %1 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 4)
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %v, align 8
  %3 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 8)
  %4 = bitcast i8* %3 to i16*
  store i16* %4, i16** %k, align 8
  %5 = load i16** %v, align 8
  %6 = getelementptr inbounds i16* %5, i64 0
  store i16 0, i16* %6, align 2
  %7 = load i16** %v, align 8
  %8 = getelementptr inbounds i16* %7, i64 1
  store i16 255, i16* %8, align 2
  %9 = load i16** %k, align 8
  %10 = getelementptr inbounds i16* %9, i64 0
  store i16 119, i16* %10, align 2
  %11 = load i16** %k, align 8
  %12 = getelementptr inbounds i16* %11, i64 1
  store i16 140, i16* %12, align 2
  %13 = load i16** %k, align 8
  %14 = getelementptr inbounds i16* %13, i64 2
  store i16 174, i16* %14, align 2
  %15 = load i16** %k, align 8
  %16 = getelementptr inbounds i16* %15, i64 3
  store i16 56, i16* %16, align 2
  %17 = load i16** %v, align 8
  %18 = load i16** %k, align 8
  call void @encrypt(i16* %17, i16* %18)
  %19 = load i16** %v, align 8
  %20 = load i16** %k, align 8
  call void @decrypt(i16* %19, i16* %20)
  ret void
}

declare i8* @malloc(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  call void @run_bm()
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
