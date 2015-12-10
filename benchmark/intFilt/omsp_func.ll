; ModuleID = 'omsp_func.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @putchar(i32 %txdata) #0 {
  %1 = alloca i32, align 4
  store i32 %txdata, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = trunc i32 %2 to i8
  store volatile i8 %3, i8* inttoptr (i64 33 to i8*), align 1
  %4 = load volatile i8* inttoptr (i64 41 to i8*), align 1
  %5 = zext i8 %4 to i32
  %6 = xor i32 %5, 1
  %7 = trunc i32 %6 to i8
  store volatile i8 %7, i8* inttoptr (i64 41 to i8*), align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
