; ModuleID = 'main.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@shift_direction = global i8 1, align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  store volatile i8 -1, i8* inttoptr (i64 42 to i8*), align 1
  %2 = load volatile i8* @shift_direction, align 1
  store volatile i8 %2, i8* inttoptr (i64 41 to i8*), align 1
  store volatile i8 0, i8* inttoptr (i64 34 to i8*), align 1
  store volatile i8 1, i8* inttoptr (i64 37 to i8*), align 1
  store volatile i8 0, i8* inttoptr (i64 36 to i8*), align 1
  store volatile i8 0, i8* inttoptr (i64 35 to i8*), align 1
  call void asm sideeffect "eint { nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !1
  br label %3

; <label>:3                                       ; preds = %0, %24
  %4 = load volatile i8* inttoptr (i64 41 to i8*), align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %3
  %8 = load volatile i8* @shift_direction, align 1
  store volatile i8 %8, i8* inttoptr (i64 41 to i8*), align 1
  br label %24

; <label>:9                                       ; preds = %3
  %10 = load volatile i8* @shift_direction, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %9
  %14 = load volatile i8* inttoptr (i64 41 to i8*), align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 1
  %17 = trunc i32 %16 to i8
  store volatile i8 %17, i8* inttoptr (i64 41 to i8*), align 1
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load volatile i8* inttoptr (i64 41 to i8*), align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 1
  %22 = trunc i32 %21 to i8
  store volatile i8 %22, i8* inttoptr (i64 41 to i8*), align 1
  br label %23

; <label>:23                                      ; preds = %18, %13
  br label %24

; <label>:24                                      ; preds = %23, %7
  br label %3
                                                  ; No predecessors!
  %26 = load i32* %1
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @port1_isr() #0 {
  %1 = load volatile i8* inttoptr (i64 35 to i8*), align 1
  %2 = zext i8 %1 to i32
  %3 = and i32 %2, 1
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %0
  %6 = load volatile i8* @shift_direction, align 1
  %7 = sext i8 %6 to i32
  %8 = xor i32 %7, 129
  %9 = trunc i32 %8 to i8
  store volatile i8 %9, i8* @shift_direction, align 1
  %10 = load volatile i8* inttoptr (i64 35 to i8*), align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, -2
  %13 = trunc i32 %12 to i8
  store volatile i8 %13, i8* inttoptr (i64 35 to i8*), align 1
  br label %14

; <label>:14                                      ; preds = %5, %0
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{i32 -2147458745}
