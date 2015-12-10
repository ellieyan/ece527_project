; ModuleID = 'dhry21a.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg_Define = global [26 x i8] c"Register option selected.\00", align 16
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Ptr_Glob = common global %struct.record* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Arr_2_Glob = common global [25 x [25 x i32]] zeroinitializer, align 16
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"Dhrystone Benchmark, Version 2.1 (Language: C)\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"Execution starts, %d runs through Dhrystone\0A\00", align 1
@Begin_Time = common global double 0.000000e+00, align 8
@.str5 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [25 x i32] zeroinitializer, align 16
@Ch_2_Glob = common global i8 0, align 1
@.str6 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@Int_Glob = common global i32 0, align 4
@End_Time = common global double 0.000000e+00, align 8
@.str7 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
@.str8 = private unnamed_addr constant [54 x i8] c"Final values of the variables used in the benchmark:\0A\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"Int_Glob:            %d\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"        should be:   %d\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"Bool_Glob:           %d\0A\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"Ch_1_Glob:           %c\0A\00", align 1
@Ch_1_Glob = common global i8 0, align 1
@.str13 = private unnamed_addr constant [25 x i8] c"        should be:   %c\0A\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"Ch_2_Glob:           %c\0A\00", align 1
@.str15 = private unnamed_addr constant [25 x i8] c"Arr_1_Glob[8]:       %d\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"Arr_2_Glob[8][7]:    %d\0A\00", align 1
@.str17 = private unnamed_addr constant [42 x i8] c"        should be:   Number_Of_Runs + 10\0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"Ptr_Glob->\0A\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"  Ptr_Comp:          %d\0A\00", align 1
@.str20 = private unnamed_addr constant [49 x i8] c"        should be:   (implementation-dependent)\0A\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"  Discr:             %d\0A\00", align 1
@.str22 = private unnamed_addr constant [25 x i8] c"  Enum_Comp:         %d\0A\00", align 1
@.str23 = private unnamed_addr constant [25 x i8] c"  Int_Comp:          %d\0A\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"  Str_Comp:          %s\0A\00", align 1
@.str25 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, SOME STRING\0A\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"Next_Ptr_Glob->\0A\00", align 1
@.str27 = private unnamed_addr constant [64 x i8] c"        should be:   (implementation-dependent), same as above\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"Int_1_Loc:           %d\0A\00", align 1
@.str29 = private unnamed_addr constant [25 x i8] c"Int_2_Loc:           %d\0A\00", align 1
@.str30 = private unnamed_addr constant [25 x i8] c"Int_3_Loc:           %d\0A\00", align 1
@.str31 = private unnamed_addr constant [25 x i8] c"Enum_Loc:            %d\0A\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"Str_1_Loc:           %s\0A\00", align 1
@.str33 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\0A\00", align 1
@.str34 = private unnamed_addr constant [25 x i8] c"Str_2_Loc:           %s\0A\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\0A\00", align 1
@User_Time = common global double 0.000000e+00, align 8
@Microseconds = common global double 0.000000e+00, align 8
@Dhrystones_Per_Second = common global double 0.000000e+00, align 8
@Vax_Mips = common global double 0.000000e+00, align 8

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
  %2 = call noalias i8* @malloc(i64 56) #3
  %3 = bitcast i8* %2 to %struct.record*
  store %struct.record* %3, %struct.record** @Next_Ptr_Glob, align 8
  %4 = call noalias i8* @malloc(i64 56) #3
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
  %24 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0)) #3
  %25 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %26 = call i8* @strcpy(i8* %25, i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0)) #3
  store i32 10, i32* getelementptr inbounds ([25 x [25 x i32]]* @Arr_2_Glob, i32 0, i64 8, i64 7), align 4
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str3, i32 0, i32 0))
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store i32 100, i32* %Number_Of_Runs, align 4
  %30 = load i32* %Number_Of_Runs, align 4
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str4, i32 0, i32 0), i32 %30)
  store double 1.000000e+00, double* @Begin_Time, align 8
  store volatile i8 1, i8* inttoptr (i64 25 to i8*), align 1
  store i32 1, i32* %Run_Index, align 4
  br label %32

; <label>:32                                      ; preds = %95, %0
  %33 = load i32* %Run_Index, align 4
  %34 = load i32* %Number_Of_Runs, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %98

; <label>:36                                      ; preds = %32
  call void @Proc_5()
  call void @Proc_4()
  store i32 2, i32* %Int_1_Loc, align 4
  store i32 3, i32* %Int_2_Loc, align 4
  %37 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %38 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([31 x i8]* @.str5, i32 0, i32 0)) #3
  store i32 1, i32* %Enum_Loc, align 4
  %39 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %40 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %41 = call i32 @Func_2(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* @Bool_Glob, align 4
  br label %45

; <label>:45                                      ; preds = %49, %36
  %46 = load i32* %Int_1_Loc, align 4
  %47 = load i32* %Int_2_Loc, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

; <label>:49                                      ; preds = %45
  %50 = load i32* %Int_1_Loc, align 4
  %51 = mul nsw i32 5, %50
  %52 = load i32* %Int_2_Loc, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %Int_3_Loc, align 4
  %54 = load i32* %Int_1_Loc, align 4
  %55 = load i32* %Int_2_Loc, align 4
  call void @Proc_7(i32 %54, i32 %55, i32* %Int_3_Loc)
  %56 = load i32* %Int_1_Loc, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %Int_1_Loc, align 4
  br label %45

; <label>:58                                      ; preds = %45
  %59 = load i32* %Int_1_Loc, align 4
  %60 = load i32* %Int_3_Loc, align 4
  call void @Proc_8(i32* getelementptr inbounds ([25 x i32]* @Arr_1_Glob, i32 0, i32 0), [25 x i32]* getelementptr inbounds ([25 x [25 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %59, i32 %60)
  %61 = load %struct.record** @Ptr_Glob, align 8
  call void @Proc_1(%struct.record* %61)
  store i8 65, i8* %Ch_Index, align 1
  br label %62

; <label>:62                                      ; preds = %79, %58
  %63 = load i8* %Ch_Index, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8* @Ch_2_Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %82

; <label>:68                                      ; preds = %62
  %69 = load i32* %Enum_Loc, align 4
  %70 = load i8* %Ch_Index, align 1
  %71 = call i32 @Func_1(i8 signext %70, i8 signext 67)
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

; <label>:73                                      ; preds = %68
  call void @Proc_6(i32 0, i32* %Enum_Loc)
  %74 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %75 = call i8* @strcpy(i8* %74, i8* getelementptr inbounds ([31 x i8]* @.str6, i32 0, i32 0)) #3
  %76 = load i32* %Run_Index, align 4
  store i32 %76, i32* %Int_2_Loc, align 4
  %77 = load i32* %Run_Index, align 4
  store i32 %77, i32* @Int_Glob, align 4
  br label %78

; <label>:78                                      ; preds = %73, %68
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load i8* %Ch_Index, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %Ch_Index, align 1
  br label %62

; <label>:82                                      ; preds = %62
  %83 = load i32* %Int_2_Loc, align 4
  %84 = load i32* %Int_1_Loc, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %Int_2_Loc, align 4
  %86 = load i32* %Int_2_Loc, align 4
  %87 = load i32* %Int_3_Loc, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %Int_1_Loc, align 4
  %89 = load i32* %Int_2_Loc, align 4
  %90 = load i32* %Int_3_Loc, align 4
  %91 = sub nsw i32 %89, %90
  %92 = mul nsw i32 7, %91
  %93 = load i32* %Int_1_Loc, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %Int_2_Loc, align 4
  call void @Proc_2(i32* %Int_1_Loc)
  br label %95

; <label>:95                                      ; preds = %82
  %96 = load i32* %Run_Index, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %Run_Index, align 4
  br label %32

; <label>:98                                      ; preds = %32
  store volatile i8 0, i8* inttoptr (i64 25 to i8*), align 1
  store double 2.000000e+00, double* @End_Time, align 8
  %99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0))
  %100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str8, i32 0, i32 0))
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %103 = load i32* @Int_Glob, align 4
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str9, i32 0, i32 0), i32 %103)
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 5)
  %106 = load i32* @Bool_Glob, align 4
  %107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i32 %106)
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 1)
  %109 = load i8* @Ch_1_Glob, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 %110)
  %112 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0), i32 65)
  %113 = load i8* @Ch_2_Glob, align 1
  %114 = sext i8 %113 to i32
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str14, i32 0, i32 0), i32 %114)
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0), i32 66)
  %117 = load i32* getelementptr inbounds ([25 x i32]* @Arr_1_Glob, i32 0, i64 8), align 4
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str15, i32 0, i32 0), i32 %117)
  %119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 7)
  %120 = load i32* getelementptr inbounds ([25 x [25 x i32]]* @Arr_2_Glob, i32 0, i64 8, i64 7), align 4
  %121 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0), i32 %120)
  %122 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str17, i32 0, i32 0))
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0))
  %124 = load %struct.record** @Ptr_Glob, align 8
  %125 = getelementptr inbounds %struct.record* %124, i32 0, i32 0
  %126 = load %struct.record** %125, align 8
  %127 = ptrtoint %struct.record* %126 to i32
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str19, i32 0, i32 0), i32 %127)
  %129 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str20, i32 0, i32 0))
  %130 = load %struct.record** @Ptr_Glob, align 8
  %131 = getelementptr inbounds %struct.record* %130, i32 0, i32 1
  %132 = load i32* %131, align 4
  %133 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %132)
  %134 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 0)
  %135 = load %struct.record** @Ptr_Glob, align 8
  %136 = getelementptr inbounds %struct.record* %135, i32 0, i32 2
  %137 = bitcast %union.anon* %136 to %struct.anon*
  %138 = getelementptr inbounds %struct.anon* %137, i32 0, i32 0
  %139 = load i32* %138, align 4
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str22, i32 0, i32 0), i32 %139)
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 2)
  %142 = load %struct.record** @Ptr_Glob, align 8
  %143 = getelementptr inbounds %struct.record* %142, i32 0, i32 2
  %144 = bitcast %union.anon* %143 to %struct.anon*
  %145 = getelementptr inbounds %struct.anon* %144, i32 0, i32 1
  %146 = load i32* %145, align 4
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %146)
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 17)
  %149 = load %struct.record** @Ptr_Glob, align 8
  %150 = getelementptr inbounds %struct.record* %149, i32 0, i32 2
  %151 = bitcast %union.anon* %150 to %struct.anon*
  %152 = getelementptr inbounds %struct.anon* %151, i32 0, i32 2
  %153 = getelementptr inbounds [31 x i8]* %152, i32 0, i32 0
  %154 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i8* %153)
  %155 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str25, i32 0, i32 0))
  %156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str26, i32 0, i32 0))
  %157 = load %struct.record** @Next_Ptr_Glob, align 8
  %158 = getelementptr inbounds %struct.record* %157, i32 0, i32 0
  %159 = load %struct.record** %158, align 8
  %160 = ptrtoint %struct.record* %159 to i32
  %161 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str19, i32 0, i32 0), i32 %160)
  %162 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str27, i32 0, i32 0))
  %163 = load %struct.record** @Next_Ptr_Glob, align 8
  %164 = getelementptr inbounds %struct.record* %163, i32 0, i32 1
  %165 = load i32* %164, align 4
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %165)
  %167 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 0)
  %168 = load %struct.record** @Next_Ptr_Glob, align 8
  %169 = getelementptr inbounds %struct.record* %168, i32 0, i32 2
  %170 = bitcast %union.anon* %169 to %struct.anon*
  %171 = getelementptr inbounds %struct.anon* %170, i32 0, i32 0
  %172 = load i32* %171, align 4
  %173 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str22, i32 0, i32 0), i32 %172)
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 1)
  %175 = load %struct.record** @Next_Ptr_Glob, align 8
  %176 = getelementptr inbounds %struct.record* %175, i32 0, i32 2
  %177 = bitcast %union.anon* %176 to %struct.anon*
  %178 = getelementptr inbounds %struct.anon* %177, i32 0, i32 1
  %179 = load i32* %178, align 4
  %180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %179)
  %181 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 18)
  %182 = load %struct.record** @Next_Ptr_Glob, align 8
  %183 = getelementptr inbounds %struct.record* %182, i32 0, i32 2
  %184 = bitcast %union.anon* %183 to %struct.anon*
  %185 = getelementptr inbounds %struct.anon* %184, i32 0, i32 2
  %186 = getelementptr inbounds [31 x i8]* %185, i32 0, i32 0
  %187 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i8* %186)
  %188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str25, i32 0, i32 0))
  %189 = load i32* %Int_1_Loc, align 4
  %190 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str28, i32 0, i32 0), i32 %189)
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 5)
  %192 = load i32* %Int_2_Loc, align 4
  %193 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str29, i32 0, i32 0), i32 %192)
  %194 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 13)
  %195 = load i32* %Int_3_Loc, align 4
  %196 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str30, i32 0, i32 0), i32 %195)
  %197 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 7)
  %198 = load i32* %Enum_Loc, align 4
  %199 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 0), i32 %198)
  %200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 1)
  %201 = getelementptr inbounds [31 x i8]* %Str_1_Loc, i32 0, i32 0
  %202 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str32, i32 0, i32 0), i8* %201)
  %203 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str33, i32 0, i32 0))
  %204 = getelementptr inbounds [31 x i8]* %Str_2_Loc, i32 0, i32 0
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str34, i32 0, i32 0), i8* %204)
  %206 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str35, i32 0, i32 0))
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store volatile i8 1, i8* inttoptr (i64 29 to i8*), align 1
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @Proc_5() #0 {
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Proc_4() #0 {
  %Bool_Loc = alloca i32, align 4
  %1 = load i8* @Ch_1_Glob, align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 65
  %4 = zext i1 %3 to i32
  store i32 %4, i32* %Bool_Loc, align 4
  %5 = load i32* %Bool_Loc, align 4
  %6 = load i32* @Bool_Glob, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* @Bool_Glob, align 4
  store i8 66, i8* @Ch_2_Glob, align 1
  ret void
}

declare i32 @Func_2(i8*, i8*) #2

declare void @Proc_7(i32, i32, i32*) #2

declare void @Proc_8(i32*, [25 x i32]*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @Proc_1(%struct.record* %Ptr_Val_Par) #0 {
  %1 = alloca %struct.record*, align 8
  %Next_Record = alloca %struct.record*, align 8
  store %struct.record* %Ptr_Val_Par, %struct.record** %1, align 8
  %2 = load %struct.record** %1, align 8
  %3 = getelementptr inbounds %struct.record* %2, i32 0, i32 0
  %4 = load %struct.record** %3, align 8
  store %struct.record* %4, %struct.record** %Next_Record, align 8
  %5 = load %struct.record** %1, align 8
  %6 = getelementptr inbounds %struct.record* %5, i32 0, i32 0
  %7 = load %struct.record** %6, align 8
  %8 = load %struct.record** @Ptr_Glob, align 8
  %9 = bitcast %struct.record* %7 to i8*
  %10 = bitcast %struct.record* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 56, i32 8, i1 false)
  %11 = load %struct.record** %1, align 8
  %12 = getelementptr inbounds %struct.record* %11, i32 0, i32 2
  %13 = bitcast %union.anon* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon* %13, i32 0, i32 1
  store i32 5, i32* %14, align 4
  %15 = load %struct.record** %1, align 8
  %16 = getelementptr inbounds %struct.record* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon* %17, i32 0, i32 1
  %19 = load i32* %18, align 4
  %20 = load %struct.record** %Next_Record, align 8
  %21 = getelementptr inbounds %struct.record* %20, i32 0, i32 2
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.record** %1, align 8
  %25 = getelementptr inbounds %struct.record* %24, i32 0, i32 0
  %26 = load %struct.record** %25, align 8
  %27 = load %struct.record** %Next_Record, align 8
  %28 = getelementptr inbounds %struct.record* %27, i32 0, i32 0
  store %struct.record* %26, %struct.record** %28, align 8
  %29 = load %struct.record** %Next_Record, align 8
  %30 = getelementptr inbounds %struct.record* %29, i32 0, i32 0
  call void @Proc_3(%struct.record** %30)
  %31 = load %struct.record** %Next_Record, align 8
  %32 = getelementptr inbounds %struct.record* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

; <label>:35                                      ; preds = %0
  %36 = load %struct.record** %Next_Record, align 8
  %37 = getelementptr inbounds %struct.record* %36, i32 0, i32 2
  %38 = bitcast %union.anon* %37 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon* %38, i32 0, i32 1
  store i32 6, i32* %39, align 4
  %40 = load %struct.record** %1, align 8
  %41 = getelementptr inbounds %struct.record* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon* %42, i32 0, i32 0
  %44 = load i32* %43, align 4
  %45 = load %struct.record** %Next_Record, align 8
  %46 = getelementptr inbounds %struct.record* %45, i32 0, i32 2
  %47 = bitcast %union.anon* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon* %47, i32 0, i32 0
  call void @Proc_6(i32 %44, i32* %48)
  %49 = load %struct.record** @Ptr_Glob, align 8
  %50 = getelementptr inbounds %struct.record* %49, i32 0, i32 0
  %51 = load %struct.record** %50, align 8
  %52 = load %struct.record** %Next_Record, align 8
  %53 = getelementptr inbounds %struct.record* %52, i32 0, i32 0
  store %struct.record* %51, %struct.record** %53, align 8
  %54 = load %struct.record** %Next_Record, align 8
  %55 = getelementptr inbounds %struct.record* %54, i32 0, i32 2
  %56 = bitcast %union.anon* %55 to %struct.anon*
  %57 = getelementptr inbounds %struct.anon* %56, i32 0, i32 1
  %58 = load i32* %57, align 4
  %59 = load %struct.record** %Next_Record, align 8
  %60 = getelementptr inbounds %struct.record* %59, i32 0, i32 2
  %61 = bitcast %union.anon* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon* %61, i32 0, i32 1
  call void @Proc_7(i32 %58, i32 10, i32* %62)
  br label %70

; <label>:63                                      ; preds = %0
  %64 = load %struct.record** %1, align 8
  %65 = load %struct.record** %1, align 8
  %66 = getelementptr inbounds %struct.record* %65, i32 0, i32 0
  %67 = load %struct.record** %66, align 8
  %68 = bitcast %struct.record* %64 to i8*
  %69 = bitcast %struct.record* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 56, i32 8, i1 false)
  br label %70

; <label>:70                                      ; preds = %63, %35
  ret void
}

declare i32 @Func_1(i8 signext, i8 signext) #2

declare void @Proc_6(i32, i32*) #2

; Function Attrs: nounwind uwtable
define void @Proc_2(i32* %Int_Par_Ref) #0 {
  %1 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  %Enum_Loc = alloca i32, align 4
  store i32* %Int_Par_Ref, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = load i32* %2, align 4
  %4 = add nsw i32 %3, 10
  store i32 %4, i32* %Int_Loc, align 4
  br label %5

; <label>:5                                       ; preds = %17, %0
  %6 = load i8* @Ch_1_Glob, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 65
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %5
  %10 = load i32* %Int_Loc, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %Int_Loc, align 4
  %12 = load i32* %Int_Loc, align 4
  %13 = load i32* @Int_Glob, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32** %1, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %Enum_Loc, align 4
  br label %16

; <label>:16                                      ; preds = %9, %5
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load i32* %Enum_Loc, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %5, label %20

; <label>:20                                      ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @Proc_3(%struct.record** %Ptr_Ref_Par) #0 {
  %1 = alloca %struct.record**, align 8
  store %struct.record** %Ptr_Ref_Par, %struct.record*** %1, align 8
  %2 = load %struct.record** @Ptr_Glob, align 8
  %3 = icmp ne %struct.record* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = load %struct.record** @Ptr_Glob, align 8
  %6 = getelementptr inbounds %struct.record* %5, i32 0, i32 0
  %7 = load %struct.record** %6, align 8
  %8 = load %struct.record*** %1, align 8
  store %struct.record* %7, %struct.record** %8, align 8
  br label %9

; <label>:9                                       ; preds = %4, %0
  %10 = load i32* @Int_Glob, align 4
  %11 = load %struct.record** @Ptr_Glob, align 8
  %12 = getelementptr inbounds %struct.record* %11, i32 0, i32 2
  %13 = bitcast %union.anon* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon* %13, i32 0, i32 1
  call void @Proc_7(i32 10, i32 %10, i32* %14)
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
