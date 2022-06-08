; ModuleID = '/home/arun/Desktop/testC/Bubble_Sort/sort.mChecked.c'
source_filename = "/home/arun/Desktop/testC/Bubble_Sort/sort.mChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"q\00", align 1
@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 0, i32 23, i32 14, i32 12, i32 9, i32 39], align 16

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @sort(i32 %n, i32* %ptr) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ptr.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %ret = alloca i32, align 4
  %i18 = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32*, i32** %ptr.addr, align 8
  %6 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  %7 = load i32, i32* %add.ptr, align 4
  %8 = load i32*, i32** %ptr.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext4 = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %8, i64 %idx.ext4
  %10 = load i32, i32* %add.ptr5, align 4
  %cmp6 = icmp slt i32 %7, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %11 = load i32*, i32** %ptr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext7 = sext i32 %12 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %11, i64 %idx.ext7
  %13 = load i32, i32* %add.ptr8, align 4
  store i32 %13, i32* %t, align 4
  %14 = load i32*, i32** %ptr.addr, align 8
  %15 = load i32, i32* %j, align 4
  %idx.ext9 = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %14, i64 %idx.ext9
  %16 = load i32, i32* %add.ptr10, align 4
  %17 = load i32*, i32** %ptr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idx.ext11 = sext i32 %18 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %17, i64 %idx.ext11
  store i32 %16, i32* %add.ptr12, align 4
  %19 = load i32, i32* %t, align 4
  %20 = load i32*, i32** %ptr.addr, align 8
  %21 = load i32, i32* %j, align 4
  %idx.ext13 = sext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %20, i64 %idx.ext13
  store i32 %19, i32* %add.ptr14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !2

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end17:                                        ; preds = %for.cond
  store i64 0, i64* %i18, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end17
  %24 = load i64, i64* %i18, align 8
  %25 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %25 to i64
  %cmp20 = icmp ult i64 %24, %conv
  br i1 %cmp20, label %for.body22, label %for.end28

for.body22:                                       ; preds = %for.cond19
  %26 = load i32, i32* %ret, align 4
  %27 = load i32*, i32** %ptr.addr, align 8
  %28 = load i64, i64* %i18, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %28
  %29 = load i32*, i32** %ptr.addr, align 8
  %30 = load i32*, i32** %ptr.addr, align 8
  %31 = load i32, i32* %n.addr, align 4
  %idx.ext23 = sext i32 %31 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %30, i64 %idx.ext23
  %_Dynamic_check.lower = icmp ule i32* %29, %arrayidx
  %_Dynamic_check.upper = icmp ult i32* %arrayidx, %add.ptr24
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.body22
  %32 = load i32, i32* %arrayidx, align 4
  %add25 = add nsw i32 %26, %32
  store i32 %add25, i32* %ret, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %_Dynamic_check.succeeded
  %33 = load i64, i64* %i18, align 8
  %inc27 = add i64 %33, 1
  store i64 %inc27, i64* %i18, align 8
  br label %for.cond19, !llvm.loop !5

_Dynamic_check.failed:                            ; preds = %for.body22
  call void @llvm.trap() #5
  unreachable

for.end28:                                        ; preds = %for.cond19
  %34 = load i32, i32* %ret, align 4
  ret i32 %34
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %q = alloca i32*, align 8
  %arr = alloca [6 x i32], align 16
  %tainted_array = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %n, align 4
  %call = call i8* @t_malloc(i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %q, align 8
  %1 = load i32*, i32** %q, align 8
  %2 = bitcast i32* %1 to i8*
  call void @t_free(i8* %2)
  %3 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  %call1 = call noalias i8* @malloc(i64 24) #6
  %4 = bitcast i8* %call1 to i32*
  store i32* %4, i32** %tainted_array, align 8
  %5 = load i32*, i32** %tainted_array, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32*, i32** %tainted_array, align 8
  %7 = load i32*, i32** %tainted_array, align 8
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 6
  %_Dynamic_check.lower = icmp ule i32* %6, %arrayidx
  %_Dynamic_check.upper = icmp ult i32* %arrayidx, %add.ptr
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  store i32 0, i32* %arrayidx, align 4
  %8 = load i32*, i32** %tainted_array, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32*, i32** %tainted_array, align 8
  %10 = load i32*, i32** %tainted_array, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %10, i64 6
  %_Dynamic_check.lower4 = icmp ule i32* %9, %arrayidx2
  %_Dynamic_check.upper5 = icmp ult i32* %arrayidx2, %add.ptr3
  %_Dynamic_check.range6 = and i1 %_Dynamic_check.lower4, %_Dynamic_check.upper5
  br i1 %_Dynamic_check.range6, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  store i32 23, i32* %arrayidx2, align 4
  %11 = load i32*, i32** %tainted_array, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32*, i32** %tainted_array, align 8
  %13 = load i32*, i32** %tainted_array, align 8
  %add.ptr10 = getelementptr inbounds i32, i32* %13, i64 6
  %_Dynamic_check.lower11 = icmp ule i32* %12, %arrayidx9
  %_Dynamic_check.upper12 = icmp ult i32* %arrayidx9, %add.ptr10
  %_Dynamic_check.range13 = and i1 %_Dynamic_check.lower11, %_Dynamic_check.upper12
  br i1 %_Dynamic_check.range13, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded8
  store i32 14, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %tainted_array, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %14, i64 3
  %15 = load i32*, i32** %tainted_array, align 8
  %16 = load i32*, i32** %tainted_array, align 8
  %add.ptr17 = getelementptr inbounds i32, i32* %16, i64 6
  %_Dynamic_check.lower18 = icmp ule i32* %15, %arrayidx16
  %_Dynamic_check.upper19 = icmp ult i32* %arrayidx16, %add.ptr17
  %_Dynamic_check.range20 = and i1 %_Dynamic_check.lower18, %_Dynamic_check.upper19
  br i1 %_Dynamic_check.range20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded15
  store i32 12, i32* %arrayidx16, align 4
  %17 = load i32*, i32** %tainted_array, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %17, i64 4
  %18 = load i32*, i32** %tainted_array, align 8
  %19 = load i32*, i32** %tainted_array, align 8
  %add.ptr24 = getelementptr inbounds i32, i32* %19, i64 6
  %_Dynamic_check.lower25 = icmp ule i32* %18, %arrayidx23
  %_Dynamic_check.upper26 = icmp ult i32* %arrayidx23, %add.ptr24
  %_Dynamic_check.range27 = and i1 %_Dynamic_check.lower25, %_Dynamic_check.upper26
  br i1 %_Dynamic_check.range27, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded22
  store i32 9, i32* %arrayidx23, align 4
  %20 = load i32*, i32** %tainted_array, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %20, i64 5
  %21 = load i32*, i32** %tainted_array, align 8
  %22 = load i32*, i32** %tainted_array, align 8
  %add.ptr31 = getelementptr inbounds i32, i32* %22, i64 6
  %_Dynamic_check.lower32 = icmp ule i32* %21, %arrayidx30
  %_Dynamic_check.upper33 = icmp ult i32* %arrayidx30, %add.ptr31
  %_Dynamic_check.range34 = and i1 %_Dynamic_check.lower32, %_Dynamic_check.upper33
  br i1 %_Dynamic_check.range34, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %_Dynamic_check.succeeded29
  store i32 39, i32* %arrayidx30, align 4
  %23 = load i32, i32* %n, align 4
  %24 = load i32*, i32** %tainted_array, align 8
  %call37 = call i32 @sort(i32 %23, i32* %24)
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
}

declare dso_local i8* @t_malloc(i64, i8*) #2

declare dso_local void @t_free(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

attributes #0 = { noinline nounwind optnone tainted uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/checkedc-llvm-project.git 258cbbb5d01e577d91e54e1bde2dcee6e904fa27)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
