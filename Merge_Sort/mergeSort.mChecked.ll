; ModuleID = 'mergeSort.mChecked.c'
source_filename = "mergeSort.mChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  %lis_t = alloca i32*, align 8
  %lis_t_t = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 40) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %lis_t, align 8
  %call1 = call noalias i8* @malloc(i64 40) #4
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %lis_t_t, align 8
  %2 = load i32*, i32** %lis_t, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32*, i32** %lis_t, align 8
  %4 = load i32*, i32** %lis_t, align 8
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 10
  %_Dynamic_check.lower = icmp ule i32* %3, %arrayidx
  %_Dynamic_check.upper = icmp ult i32* %arrayidx, %add.ptr
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  store i32 48, i32* %arrayidx, align 4
  %5 = load i32*, i32** %lis_t, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32*, i32** %lis_t, align 8
  %7 = load i32*, i32** %lis_t, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %7, i64 10
  %_Dynamic_check.lower4 = icmp ule i32* %6, %arrayidx2
  %_Dynamic_check.upper5 = icmp ult i32* %arrayidx2, %add.ptr3
  %_Dynamic_check.range6 = and i1 %_Dynamic_check.lower4, %_Dynamic_check.upper5
  br i1 %_Dynamic_check.range6, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  store i32 54, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %lis_t, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32*, i32** %lis_t, align 8
  %10 = load i32*, i32** %lis_t, align 8
  %add.ptr10 = getelementptr inbounds i32, i32* %10, i64 10
  %_Dynamic_check.lower11 = icmp ule i32* %9, %arrayidx9
  %_Dynamic_check.upper12 = icmp ult i32* %arrayidx9, %add.ptr10
  %_Dynamic_check.range13 = and i1 %_Dynamic_check.lower11, %_Dynamic_check.upper12
  br i1 %_Dynamic_check.range13, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded8
  store i32 92, i32* %arrayidx9, align 4
  %11 = load i32*, i32** %lis_t, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %11, i64 3
  %12 = load i32*, i32** %lis_t, align 8
  %13 = load i32*, i32** %lis_t, align 8
  %add.ptr17 = getelementptr inbounds i32, i32* %13, i64 10
  %_Dynamic_check.lower18 = icmp ule i32* %12, %arrayidx16
  %_Dynamic_check.upper19 = icmp ult i32* %arrayidx16, %add.ptr17
  %_Dynamic_check.range20 = and i1 %_Dynamic_check.lower18, %_Dynamic_check.upper19
  br i1 %_Dynamic_check.range20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded15
  store i32 36, i32* %arrayidx16, align 4
  %14 = load i32*, i32** %lis_t, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %14, i64 4
  %15 = load i32*, i32** %lis_t, align 8
  %16 = load i32*, i32** %lis_t, align 8
  %add.ptr24 = getelementptr inbounds i32, i32* %16, i64 10
  %_Dynamic_check.lower25 = icmp ule i32* %15, %arrayidx23
  %_Dynamic_check.upper26 = icmp ult i32* %arrayidx23, %add.ptr24
  %_Dynamic_check.range27 = and i1 %_Dynamic_check.lower25, %_Dynamic_check.upper26
  br i1 %_Dynamic_check.range27, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded22
  store i32 13, i32* %arrayidx23, align 4
  %17 = load i32*, i32** %lis_t, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %17, i64 5
  %18 = load i32*, i32** %lis_t, align 8
  %19 = load i32*, i32** %lis_t, align 8
  %add.ptr31 = getelementptr inbounds i32, i32* %19, i64 10
  %_Dynamic_check.lower32 = icmp ule i32* %18, %arrayidx30
  %_Dynamic_check.upper33 = icmp ult i32* %arrayidx30, %add.ptr31
  %_Dynamic_check.range34 = and i1 %_Dynamic_check.lower32, %_Dynamic_check.upper33
  br i1 %_Dynamic_check.range34, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %_Dynamic_check.succeeded29
  store i32 8, i32* %arrayidx30, align 4
  %20 = load i32*, i32** %lis_t, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %20, i64 6
  %21 = load i32*, i32** %lis_t, align 8
  %22 = load i32*, i32** %lis_t, align 8
  %add.ptr38 = getelementptr inbounds i32, i32* %22, i64 10
  %_Dynamic_check.lower39 = icmp ule i32* %21, %arrayidx37
  %_Dynamic_check.upper40 = icmp ult i32* %arrayidx37, %add.ptr38
  %_Dynamic_check.range41 = and i1 %_Dynamic_check.lower39, %_Dynamic_check.upper40
  br i1 %_Dynamic_check.range41, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded36
  store i32 92, i32* %arrayidx37, align 4
  %23 = load i32*, i32** %lis_t, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %23, i64 7
  %24 = load i32*, i32** %lis_t, align 8
  %25 = load i32*, i32** %lis_t, align 8
  %add.ptr45 = getelementptr inbounds i32, i32* %25, i64 10
  %_Dynamic_check.lower46 = icmp ule i32* %24, %arrayidx44
  %_Dynamic_check.upper47 = icmp ult i32* %arrayidx44, %add.ptr45
  %_Dynamic_check.range48 = and i1 %_Dynamic_check.lower46, %_Dynamic_check.upper47
  br i1 %_Dynamic_check.range48, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded43
  store i32 53, i32* %arrayidx44, align 4
  %26 = load i32*, i32** %lis_t, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %26, i64 8
  %27 = load i32*, i32** %lis_t, align 8
  %28 = load i32*, i32** %lis_t, align 8
  %add.ptr52 = getelementptr inbounds i32, i32* %28, i64 10
  %_Dynamic_check.lower53 = icmp ule i32* %27, %arrayidx51
  %_Dynamic_check.upper54 = icmp ult i32* %arrayidx51, %add.ptr52
  %_Dynamic_check.range55 = and i1 %_Dynamic_check.lower53, %_Dynamic_check.upper54
  br i1 %_Dynamic_check.range55, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded50
  store i32 100, i32* %arrayidx51, align 4
  %29 = load i32*, i32** %lis_t, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %29, i64 9
  %30 = load i32*, i32** %lis_t, align 8
  %31 = load i32*, i32** %lis_t, align 8
  %add.ptr59 = getelementptr inbounds i32, i32* %31, i64 10
  %_Dynamic_check.lower60 = icmp ule i32* %30, %arrayidx58
  %_Dynamic_check.upper61 = icmp ult i32* %arrayidx58, %add.ptr59
  %_Dynamic_check.range62 = and i1 %_Dynamic_check.lower60, %_Dynamic_check.upper61
  br i1 %_Dynamic_check.range62, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %_Dynamic_check.succeeded57
  store i32 100, i32* %arrayidx58, align 4
  %32 = load i32*, i32** %lis_t_t, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 48, i32* %arrayidx65, align 4
  %33 = load i32*, i32** %lis_t_t, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 54, i32* %arrayidx66, align 4
  %34 = load i32*, i32** %lis_t_t, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 92, i32* %arrayidx67, align 4
  %35 = load i32*, i32** %lis_t_t, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 36, i32* %arrayidx68, align 4
  %36 = load i32*, i32** %lis_t_t, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 13, i32* %arrayidx69, align 4
  %37 = load i32*, i32** %lis_t_t, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %37, i64 5
  store i32 8, i32* %arrayidx70, align 4
  %38 = load i32*, i32** %lis_t_t, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %38, i64 6
  store i32 92, i32* %arrayidx71, align 4
  %39 = load i32*, i32** %lis_t_t, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 53, i32* %arrayidx72, align 4
  %40 = load i32*, i32** %lis_t_t, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 100, i32* %arrayidx73, align 4
  %41 = load i32*, i32** %lis_t_t, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %41, i64 9
  store i32 100, i32* %arrayidx74, align 4
  ret i32 0

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed35:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded36
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #5
  unreachable

_Dynamic_check.failed63:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/checkedc-llvm-project.git 8d853ea48ef682321e9472f03f367a6c8dae1ee9)"}
