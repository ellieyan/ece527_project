; ModuleID = 'dhry_1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Ptr_Glob = common global %struct.record* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 16
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"Dhrystone Benchmark, Version 2.1 (Language: C)\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"Program compiled with 'register' attribute\0A\00", align 1
@.str5 = private unnamed_addr constant [47 x i8] c"Program compiled without 'register' attribute\0A\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c"Execution starts, %d runs through Dhrystone\0A\00", align 1
@.str7 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 16
@Ch_2_Glob = common global i8 0, align 1
@.str8 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@Int_Glob = common global i32 0, align 4
@.str9 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
@.str10 = private unnamed_addr constant [54 x i8] c"Final values of the variables used in the benchmark:\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"Int_Glob:            %d\0A\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"        should be:   %d\0A\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"Bool_Glob:           %d\0A\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"Ch_1_Glob:           %c\0A\00", align 1
@Ch_1_Glob = common global i8 0, align 1
@.str15 = private unnamed_addr constant [25 x i8] c"        should be:   %c\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"Ch_2_Glob:           %c\0A\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"Arr_1_Glob[8]:       %d\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"Arr_2_Glob[8][7]:    %d\0A\00", align 1
@.str19 = private unnamed_addr constant [42 x i8] c"        should be:   Number_Of_Runs + 10\0A\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"Ptr_Glob->\0A\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"  Ptr_Comp:          %d\0A\00", align 1
@.str22 = private unnamed_addr constant [49 x i8] c"        should be:   (implementation-dependent)\0A\00", align 1
@.str23 = private unnamed_addr constant [25 x i8] c"  Discr:             %d\0A\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"  Enum_Comp:         %d\0A\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"  Int_Comp:          %d\0A\00", align 1
@.str26 = private unnamed_addr constant [25 x i8] c"  Str_Comp:          %s\0A\00", align 1
@.str27 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, SOME STRING\0A\00", align 1
@.str28 = private unnamed_addr constant [17 x i8] c"Next_Ptr_Glob->\0A\00", align 1
@.str29 = private unnamed_addr constant [64 x i8] c"        should be:   (implementation-dependent), same as above\0A\00", align 1
@.str30 = private unnamed_addr constant [25 x i8] c"Int_1_Loc:           %d\0A\00", align 1
@.str31 = private unnamed_addr constant [25 x i8] c"Int_2_Loc:           %d\0A\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"Int_3_Loc:           %d\0A\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"Enum_Loc:            %d\0A\00", align 1
@.str34 = private unnamed_addr constant [25 x i8] c"Str_1_Loc:           %s\0A\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\0A\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"Str_2_Loc:           %s\0A\00", align 1
@.str37 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\0A\00", align 1
@Begin_Time = common global i64 0, align 8
@End_Time = common global i64 0, align 8
@User_Time = common global i64 0, align 8
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %Int_1_Loc = alloca i32, align 4
  %Int_2_Loc = alloca i32, align 4
  %Int_3_Loc = alloca i32, align 4
  %Ch_Index = alloca i8, align 1
  %Enum_Loc = alloca i32, align 4
  %Str_1_Loc = alloca [31 x i8], align 16
  %Str_2_Loc = alloca [31 x i8], align 16
  %Run_Index = alloca i32, align 4
  %Number_Of_Runs = alloca i32, align 4
  store i32 0, i32* %1
  store volatile i32 23168, i32* inttoptr (i64 288 to i32*), align 4
  %2 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %3 = bitcast i8* %2 to %struct.record*
  store %struct.record* %3, %struct.record** @Next_Ptr_Glob, align 8
  %4 = call i8* (i64, ...)* bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %5 = bitcast i8* %4 to %struct.record*
  store %struct.record* %5, %struct.record** @Ptr_Glob, align 8
  %6 = load %struct.record** @Next_Ptr_Glob, align 8
  %7 = load %struct.record** @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record* %7, i32 0, i32 0
  store %struct.record* %6, %struct.record** %8, align 8
  %9 = load %struct.record** @Ptr_Glob, align 8
  %10 = getelementptr inbounds %struct.record* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.record** @Ptr_Glob, align 8
  %12 = getelementptr inbounds %struct.record* %11, i32 0, i32 2
  %13 = bitcast %union.anon* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon* %13, i32 0, i32 0
  store i32 2, i32* %14, align 4
  %15 = load %struct.record** @Ptr_Glob, align 8
  %16 = getelementptr inbounds %struct.record* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon* %17, i32 0, i32 1
  store i32 40, i32* %18, align 4
  %19 = load %struct.record** @Ptr_Glob, align 8
  %20 = getelementptr inbounds %struct.record* %19, i32 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon* %21, i32 0, i32 2
  %23 = getelementptr inbounds [31 x i8]* %22, i32 0, i32 0
  %24 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0))
  %25 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %26 = call i8* @strcpy(i8* %25, i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  store i32 10, i32* getelementptr inbounds ([50 x [50 x i32]]* @Arr_2_Glob, i32 0, i64 8, i64 7), align 4
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str3, i32 0, i32 0))
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %30 = load i32* @Reg, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %0
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str4, i32 0, i32 0))
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  br label %38

; <label>:35                                      ; preds = %0
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str5, i32 0, i32 0))
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  br label %38

; <label>:38                                      ; preds = %35, %32
  store i32 100, i32* %Number_Of_Runs, align 4
  %39 = load i32* %Number_Of_Runs, align 4
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0), i32 %39)
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  store i32 1, i32* %Run_Index, align 4
  br label %41

; <label>:41                                      ; preds = %112, %38
  %42 = load i32* %Run_Index, align 4
  %43 = load i32* %Number_Of_Runs, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %115

; <label>:45                                      ; preds = %41
  %46 = call i32 @Proc_5()
  %47 = call i32 @Proc_4()
  store i32 2, i32* %Int_1_Loc, align 4
  store i32 3, i32* %Int_2_Loc, align 4
  %48 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %49 = call i8* @strcpy(i8* %48, i8* getelementptr inbounds ([31 x i8]* @.str7, i32 0, i32 0))
  store i32 1, i32* %Enum_Loc, align 4
  %50 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %51 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %52 = call i32 (i8*, i8*, ...)* bitcast (i32 (...)* @Func_2 to i32 (i8*, i8*, ...)*)(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @Bool_Glob, align 4
  br label %56

; <label>:56                                      ; preds = %60, %45
  %57 = load i32* %Int_1_Loc, align 4
  %58 = load i32* %Int_2_Loc, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

; <label>:60                                      ; preds = %56
  %61 = load i32* %Int_1_Loc, align 4
  %62 = mul nsw i32 5, %61
  %63 = load i32* %Int_2_Loc, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %Int_3_Loc, align 4
  %65 = load i32* %Int_1_Loc, align 4
  %66 = load i32* %Int_2_Loc, align 4
  %67 = call i32 (i32, i32, i32*, ...)* bitcast (i32 (...)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %65, i32 %66, i32* %Int_3_Loc)
  %68 = load i32* %Int_1_Loc, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %Int_1_Loc, align 4
  br label %56

; <label>:70                                      ; preds = %56
  %71 = load i32* %Int_1_Loc, align 4
  %72 = load i32* %Int_3_Loc, align 4
  %73 = call i32 (i32*, [50 x i32]*, i32, i32, ...)* bitcast (i32 (...)* @Proc_8 to i32 (i32*, [50 x i32]*, i32, i32, ...)*)(i32* getelementptr inbounds ([50 x i32]* @Arr_1_Glob, i32 0, i32 0), [50 x i32]* getelementptr inbounds ([50 x [50 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %71, i32 %72)
  %74 = load %struct.record** @Ptr_Glob, align 8
  %75 = call i32 @Proc_1(%struct.record* %74)
  store i8 65, i8* %Ch_Index, align 1
  br label %76

; <label>:76                                      ; preds = %95, %70
  %77 = load i8* %Ch_Index, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8* @Ch_2_Glob, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %98

; <label>:82                                      ; preds = %76
  %83 = load i32* %Enum_Loc, align 4
  %84 = load i8* %Ch_Index, align 1
  %85 = sext i8 %84 to i32
  %86 = call i32 (i32, i32, ...)* bitcast (i32 (...)* @Func_1 to i32 (i32, i32, ...)*)(i32 %85, i32 67)
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %94

; <label>:88                                      ; preds = %82
  %89 = call i32 (i32, i32*, ...)* bitcast (i32 (...)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 0, i32* %Enum_Loc)
  %90 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %91 = call i8* @strcpy(i8* %90, i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0))
  %92 = load i32* %Run_Index, align 4
  store i32 %92, i32* %Int_2_Loc, align 4
  %93 = load i32* %Run_Index, align 4
  store i32 %93, i32* @Int_Glob, align 4
  br label %94

; <label>:94                                      ; preds = %88, %82
  br label %95

; <label>:95                                      ; preds = %94
  %96 = load i8* %Ch_Index, align 1
  %97 = add i8 %96, 1
  store i8 %97, i8* %Ch_Index, align 1
  br label %76

; <label>:98                                      ; preds = %76
  %99 = load i32* %Int_2_Loc, align 4
  %100 = load i32* %Int_1_Loc, align 4
  %101 = mul nsw i32 %99, %100
  store i32 %101, i32* %Int_2_Loc, align 4
  %102 = load i32* %Int_2_Loc, align 4
  %103 = load i32* %Int_3_Loc, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %Int_1_Loc, align 4
  %105 = load i32* %Int_2_Loc, align 4
  %106 = load i32* %Int_3_Loc, align 4
  %107 = sub nsw i32 %105, %106
  %108 = mul nsw i32 7, %107
  %109 = load i32* %Int_1_Loc, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %Int_2_Loc, align 4
  %111 = call i32 @Proc_2(i32* %Int_1_Loc)
  br label %112

; <label>:112                                     ; preds = %98
  %113 = load i32* %Run_Index, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %Run_Index, align 4
  br label %41

; <label>:115                                     ; preds = %41
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str9, i32 0, i32 0))
  %117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str10, i32 0, i32 0))
  %119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %120 = load i32* @Int_Glob, align 4
  %121 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i32 %120)
  %122 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 5)
  %123 = load i32* @Bool_Glob, align 4
  %124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0), i32 %123)
  %125 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 1)
  %126 = load i8* @Ch_1_Glob, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str14, i32 0, i32 0), i32 %127)
  %129 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str15, i32 0, i32 0), i32 65)
  %130 = load i8* @Ch_2_Glob, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0), i32 %131)
  %133 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str15, i32 0, i32 0), i32 66)
  %134 = load i32* getelementptr inbounds ([50 x i32]* @Arr_1_Glob, i32 0, i64 8), align 4
  %135 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i32 %134)
  %136 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 7)
  %137 = load i32* getelementptr inbounds ([50 x [50 x i32]]* @Arr_2_Glob, i32 0, i64 8, i64 7), align 4
  %138 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i32 %137)
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str19, i32 0, i32 0))
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str20, i32 0, i32 0))
  %141 = load %struct.record** @Ptr_Glob, align 8
  %142 = getelementptr inbounds %struct.record* %141, i32 0, i32 0
  %143 = load %struct.record** %142, align 8
  %144 = ptrtoint %struct.record* %143 to i32
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %144)
  %146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str22, i32 0, i32 0))
  %147 = load %struct.record** @Ptr_Glob, align 8
  %148 = getelementptr inbounds %struct.record* %147, i32 0, i32 1
  %149 = load i32* %148, align 4
  %150 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %149)
  %151 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 0)
  %152 = load %struct.record** @Ptr_Glob, align 8
  %153 = getelementptr inbounds %struct.record* %152, i32 0, i32 2
  %154 = bitcast %union.anon* %153 to %struct.anon*
  %155 = getelementptr inbounds %struct.anon* %154, i32 0, i32 0
  %156 = load i32* %155, align 4
  %157 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i32 %156)
  %158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 2)
  %159 = load %struct.record** @Ptr_Glob, align 8
  %160 = getelementptr inbounds %struct.record* %159, i32 0, i32 2
  %161 = bitcast %union.anon* %160 to %struct.anon*
  %162 = getelementptr inbounds %struct.anon* %161, i32 0, i32 1
  %163 = load i32* %162, align 4
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str25, i32 0, i32 0), i32 %163)
  %165 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 17)
  %166 = load %struct.record** @Ptr_Glob, align 8
  %167 = getelementptr inbounds %struct.record* %166, i32 0, i32 2
  %168 = bitcast %union.anon* %167 to %struct.anon*
  %169 = getelementptr inbounds %struct.anon* %168, i32 0, i32 2
  %170 = getelementptr inbounds [31 x i8]* %169, i32 0, i32 0
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str26, i32 0, i32 0), i8* %170)
  %172 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str27, i32 0, i32 0))
  %173 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str28, i32 0, i32 0))
  %174 = load %struct.record** @Next_Ptr_Glob, align 8
  %175 = getelementptr inbounds %struct.record* %174, i32 0, i32 0
  %176 = load %struct.record** %175, align 8
  %177 = ptrtoint %struct.record* %176 to i32
  %178 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %177)
  %179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str29, i32 0, i32 0))
  %180 = load %struct.record** @Next_Ptr_Glob, align 8
  %181 = getelementptr inbounds %struct.record* %180, i32 0, i32 1
  %182 = load i32* %181, align 4
  %183 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %182)
  %184 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 0)
  %185 = load %struct.record** @Next_Ptr_Glob, align 8
  %186 = getelementptr inbounds %struct.record* %185, i32 0, i32 2
  %187 = bitcast %union.anon* %186 to %struct.anon*
  %188 = getelementptr inbounds %struct.anon* %187, i32 0, i32 0
  %189 = load i32* %188, align 4
  %190 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i32 %189)
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 1)
  %192 = load %struct.record** @Next_Ptr_Glob, align 8
  %193 = getelementptr inbounds %struct.record* %192, i32 0, i32 2
  %194 = bitcast %union.anon* %193 to %struct.anon*
  %195 = getelementptr inbounds %struct.anon* %194, i32 0, i32 1
  %196 = load i32* %195, align 4
  %197 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str25, i32 0, i32 0), i32 %196)
  %198 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 18)
  %199 = load %struct.record** @Next_Ptr_Glob, align 8
  %200 = getelementptr inbounds %struct.record* %199, i32 0, i32 2
  %201 = bitcast %union.anon* %200 to %struct.anon*
  %202 = getelementptr inbounds %struct.anon* %201, i32 0, i32 2
  %203 = getelementptr inbounds [31 x i8]* %202, i32 0, i32 0
  %204 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str26, i32 0, i32 0), i8* %203)
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str27, i32 0, i32 0))
  %206 = load i32* %Int_1_Loc, align 4
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str30, i32 0, i32 0), i32 %206)
  %208 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 5)
  %209 = load i32* %Int_2_Loc, align 4
  %210 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 0), i32 %209)
  %211 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 13)
  %212 = load i32* %Int_3_Loc, align 4
  %213 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str32, i32 0, i32 0), i32 %212)
  %214 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 7)
  %215 = load i32* %Enum_Loc, align 4
  %216 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str33, i32 0, i32 0), i32 %215)
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 1)
  %218 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %219 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str34, i32 0, i32 0), i8* %218)
  %220 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str35, i32 0, i32 0))
  %221 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %222 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str36, i32 0, i32 0), i8* %221)
  %223 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str37, i32 0, i32 0))
  %224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  %225 = load i32* %1
  ret i32 %225
}

declare i8* @malloc(...) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @Func_2(...) #1

declare i32 @Proc_7(...) #1

declare i32 @Proc_8(...) #1

declare i32 @Func_1(...) #1

declare i32 @Proc_6(...) #1

; Function Attrs: nounwind uwtable
define i32 @Proc_1(%struct.record* %Ptr_Val_Par) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record*, align 8
  %Next_Record = alloca %struct.record*, align 8
  store %struct.record* %Ptr_Val_Par, %struct.record** %2, align 8
  %3 = load %struct.record** %2, align 8
  %4 = getelementptr inbounds %struct.record* %3, i32 0, i32 0
  %5 = load %struct.record** %4, align 8
  store %struct.record* %5, %struct.record** %Next_Record, align 8
  %6 = load %struct.record** %2, align 8
  %7 = getelementptr inbounds %struct.record* %6, i32 0, i32 0
  %8 = load %struct.record** %7, align 8
  %9 = load %struct.record** @Ptr_Glob, align 8
  %10 = bitcast %struct.record* %8 to i8*
  %11 = bitcast %struct.record* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 56, i32 8, i1 false)
  %12 = load %struct.record** %2, align 8
  %13 = getelementptr inbounds %struct.record* %12, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon* %14, i32 0, i32 1
  store i32 5, i32* %15, align 4
  %16 = load %struct.record** %2, align 8
  %17 = getelementptr inbounds %struct.record* %16, i32 0, i32 2
  %18 = bitcast %union.anon* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon* %18, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = load %struct.record** %Next_Record, align 8
  %22 = getelementptr inbounds %struct.record* %21, i32 0, i32 2
  %23 = bitcast %union.anon* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.record** %2, align 8
  %26 = getelementptr inbounds %struct.record* %25, i32 0, i32 0
  %27 = load %struct.record** %26, align 8
  %28 = load %struct.record** %Next_Record, align 8
  %29 = getelementptr inbounds %struct.record* %28, i32 0, i32 0
  store %struct.record* %27, %struct.record** %29, align 8
  %30 = load %struct.record** %Next_Record, align 8
  %31 = getelementptr inbounds %struct.record* %30, i32 0, i32 0
  %32 = call i32 @Proc_3(%struct.record** %31)
  %33 = load %struct.record** %Next_Record, align 8
  %34 = getelementptr inbounds %struct.record* %33, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

; <label>:37                                      ; preds = %0
  %38 = load %struct.record** %Next_Record, align 8
  %39 = getelementptr inbounds %struct.record* %38, i32 0, i32 2
  %40 = bitcast %union.anon* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon* %40, i32 0, i32 1
  store i32 6, i32* %41, align 4
  %42 = load %struct.record** %2, align 8
  %43 = getelementptr inbounds %struct.record* %42, i32 0, i32 2
  %44 = bitcast %union.anon* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon* %44, i32 0, i32 0
  %46 = load i32* %45, align 4
  %47 = load %struct.record** %Next_Record, align 8
  %48 = getelementptr inbounds %struct.record* %47, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon* %49, i32 0, i32 0
  %51 = call i32 (i32, i32*, ...)* bitcast (i32 (...)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 %46, i32* %50)
  %52 = load %struct.record** @Ptr_Glob, align 8
  %53 = getelementptr inbounds %struct.record* %52, i32 0, i32 0
  %54 = load %struct.record** %53, align 8
  %55 = load %struct.record** %Next_Record, align 8
  %56 = getelementptr inbounds %struct.record* %55, i32 0, i32 0
  store %struct.record* %54, %struct.record** %56, align 8
  %57 = load %struct.record** %Next_Record, align 8
  %58 = getelementptr inbounds %struct.record* %57, i32 0, i32 2
  %59 = bitcast %union.anon* %58 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon* %59, i32 0, i32 1
  %61 = load i32* %60, align 4
  %62 = load %struct.record** %Next_Record, align 8
  %63 = getelementptr inbounds %struct.record* %62, i32 0, i32 2
  %64 = bitcast %union.anon* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon* %64, i32 0, i32 1
  %66 = call i32 (i32, i32, i32*, ...)* bitcast (i32 (...)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %61, i32 10, i32* %65)
  br label %74

; <label>:67                                      ; preds = %0
  %68 = load %struct.record** %2, align 8
  %69 = load %struct.record** %2, align 8
  %70 = getelementptr inbounds %struct.record* %69, i32 0, i32 0
  %71 = load %struct.record** %70, align 8
  %72 = bitcast %struct.record* %68 to i8*
  %73 = bitcast %struct.record* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 56, i32 8, i1 false)
  br label %74

; <label>:74                                      ; preds = %67, %37
  %75 = load i32* %1
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @Proc_2(i32* %Int_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  %Enum_Loc = alloca i32, align 4
  store i32* %Int_Par_Ref, i32** %2, align 8
  %3 = load i32** %2, align 8
  %4 = load i32* %3, align 4
  %5 = add nsw i32 %4, 10
  store i32 %5, i32* %Int_Loc, align 4
  br label %6

; <label>:6                                       ; preds = %18, %0
  %7 = load i8* @Ch_1_Glob, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 65
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i32* %Int_Loc, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %Int_Loc, align 4
  %13 = load i32* %Int_Loc, align 4
  %14 = load i32* @Int_Glob, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32** %2, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %Enum_Loc, align 4
  br label %17

; <label>:17                                      ; preds = %10, %6
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %Enum_Loc, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %6, label %21

; <label>:21                                      ; preds = %18
  %22 = load i32* %1
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @Proc_3(%struct.record** %Ptr_Ref_Par) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record**, align 8
  store %struct.record** %Ptr_Ref_Par, %struct.record*** %2, align 8
  %3 = load %struct.record** @Ptr_Glob, align 8
  %4 = icmp ne %struct.record* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.record** @Ptr_Glob, align 8
  %7 = getelementptr inbounds %struct.record* %6, i32 0, i32 0
  %8 = load %struct.record** %7, align 8
  %9 = load %struct.record*** %2, align 8
  store %struct.record* %8, %struct.record** %9, align 8
  br label %10

; <label>:10                                      ; preds = %5, %0
  %11 = load i32* @Int_Glob, align 4
  %12 = load %struct.record** @Ptr_Glob, align 8
  %13 = getelementptr inbounds %struct.record* %12, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon* %14, i32 0, i32 1
  %16 = call i32 (i32, i32, i32*, ...)* bitcast (i32 (...)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 10, i32 %11, i32* %15)
  %17 = load i32* %1
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @Proc_4() #0 {
  %1 = alloca i32, align 4
  %Bool_Loc = alloca i32, align 4
  %2 = load i8* @Ch_1_Glob, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 65
  %5 = zext i1 %4 to i32
  store i32 %5, i32* %Bool_Loc, align 4
  %6 = load i32* %Bool_Loc, align 4
  %7 = load i32* @Bool_Glob, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* @Bool_Glob, align 4
  store i8 66, i8* @Ch_2_Glob, align 1
  %9 = load i32* %1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @Proc_5() #0 {
  %1 = alloca i32, align 4
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32* %1
  ret i32 %2
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
