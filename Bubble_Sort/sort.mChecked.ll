; ModuleID = 'sort.mChecked.ll'
source_filename = "sort.mChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 0, i32 23, i32 14, i32 12, i32 9, i32 39], align 16
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Pointer belongs to tainted memory and has data %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\0APointer belongs to Host memory and has data %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@PrintfFormatStr = global [5 x i8] c"temp\00"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @t_malloc(i64 %size, i8* %assignment_name) #0 {
entry:
  %size.addr = alloca i64, align 8
  %assignment_name.addr = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %assignment_name, i8** %assignment_name.addr, align 8
  %0 = load i8*, i8** %assignment_name.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @c_malloc(i8* %0, i64 %1)
  store i8* %call, i8** %temp, align 8
  %2 = load i8*, i8** %temp, align 8
  ret i8* %2
}

declare dso_local i8* @c_malloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t_free(i8* %assignment_name) #0 {
entry:
  %assignment_name.addr = alloca i8*, align 8
  store i8* %assignment_name, i8** %assignment_name.addr, align 8
  %0 = load i8*, i8** %assignment_name.addr, align 8
  call void @c_free(i8* %0)
  ret void
}

declare dso_local void @c_free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @t_realloc(i64 %size, i8* %assignment_name) #0 {
entry:
  %size.addr = alloca i64, align 8
  %assignment_name.addr = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %assignment_name, i8** %assignment_name.addr, align 8
  %0 = load i8*, i8** %assignment_name.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @c_realloc(i8* %0, i64 %1)
  ret i8* %call
}

declare dso_local i8* @c_realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %arr = alloca [6 x i32], align 16
  %temp = alloca i32*, align 8
  %host_pointer = alloca i32*, align 8
  %r34 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 6, i32* %n, align 4
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  %call = call i8* @t_malloc(i64 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %temp, align 8
  %2 = load i32*, i32** %temp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32*, i32** %temp, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 23, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %temp, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 14, i32* %arrayidx2, align 4
  %5 = load i32*, i32** %temp, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 3
  store i32 39, i32* %arrayidx3, align 4
  %6 = load i32*, i32** %temp, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 12, i32* %arrayidx4, align 4
  %7 = load i32*, i32** %temp, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 5
  store i32 9, i32* %arrayidx5, align 4
  %8 = load i32*, i32** %temp, align 8
  %call6 = call i32 @c_isTaintedPointerToTaintedMem(i32* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %temp, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call noalias i8* @malloc(i64 40) #5
  %11 = bitcast i8* %call9 to i32*
  store i32* %11, i32** %host_pointer, align 8
  %12 = load i32*, i32** %host_pointer, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 0, i32* %arrayidx10, align 4
  %13 = load i32*, i32** %host_pointer, align 8
  %14 = bitcast i32* %13 to i8*
  %call11 = call i32 @c_isPointerToTaintedMem(i8* %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %15 = load i32*, i32** %host_pointer, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  %17 = load i32, i32* %n, align 4
  %18 = load i32*, i32** %temp, align 8
  %19 = call i8* @c_fetch_sandbox_address()
  %20 = call i64 @c_fetch_pointer_offset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @PrintfFormatStr, i32 0, i32 0))
  %21 = call i64 @w2c_tainted_sort(i8* %19, i32 %17, i64 %20)
  %22 = call i64 @c_fetch_sandbox_heap_address()
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %r34, align 8
  %25 = load i32*, i32** %r34, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx18, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %27 = load i32*, i32** %r34, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 1
  %28 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %29 = load i32*, i32** %r34, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx22, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %31 = load i32*, i32** %r34, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %31, i64 3
  %32 = load i32, i32* %arrayidx24, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %33 = load i32*, i32** %r34, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %33, i64 4
  %34 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %35 = load i32*, i32** %r34, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %35, i64 5
  %36 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @c_isTaintedPointerToTaintedMem(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local i32 @c_isPointerToTaintedMem(i8*) #1

; Function Attrs: tainted
declare dso_local i32* @tainted_sort(i32, i32*) #4

declare i8* @c_fetch_sandbox_address()

declare i64 @c_fetch_pointer_offset(i8*)

declare i64 @w2c_tainted_sort(i8*, i32, i64)

declare i64 @c_fetch_sandbox_heap_address()

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { tainted "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/checkedc-llvm-project.git 8d853ea48ef682321e9472f03f367a6c8dae1ee9)"}

