; ModuleID = 'sort.mChecked.c'
source_filename = "sort.mChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 0, i32 23, i32 14, i32 12, i32 9, i32 39], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @t_malloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(i32 %n, i32* %ptr) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ptr.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %i108 = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc105, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end107

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
  %_Dynamic_check.non_null = icmp ne i32* %5, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.body3
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  %_Dynamic_check.non_null4 = icmp ne i32* %add.ptr, null
  br i1 %_Dynamic_check.non_null4, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %7 = load i32*, i32** %ptr.addr, align 8
  %8 = load i32*, i32** %ptr.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null7 = icmp ne i32* %8, null
  br i1 %_Dynamic_check.non_null7, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %idx.ext10 = sext i32 %9 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %8, i64 %idx.ext10
  %_Dynamic_check.lower = icmp ule i32* %7, %add.ptr
  %_Dynamic_check.upper = icmp ult i32* %add.ptr, %add.ptr11
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded9
  %10 = load i32, i32* %add.ptr, align 4
  %11 = load i32*, i32** %ptr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %_Dynamic_check.non_null14 = icmp ne i32* %11, null
  br i1 %_Dynamic_check.non_null14, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %idx.ext17 = sext i32 %12 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %11, i64 %idx.ext17
  %_Dynamic_check.non_null19 = icmp ne i32* %add.ptr18, null
  br i1 %_Dynamic_check.non_null19, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded16
  %13 = load i32*, i32** %ptr.addr, align 8
  %14 = load i32*, i32** %ptr.addr, align 8
  %15 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null22 = icmp ne i32* %14, null
  br i1 %_Dynamic_check.non_null22, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded21
  %idx.ext25 = sext i32 %15 to i64
  %add.ptr26 = getelementptr inbounds i32, i32* %14, i64 %idx.ext25
  %_Dynamic_check.lower27 = icmp ule i32* %13, %add.ptr18
  %_Dynamic_check.upper28 = icmp ult i32* %add.ptr18, %add.ptr26
  %_Dynamic_check.range29 = and i1 %_Dynamic_check.lower27, %_Dynamic_check.upper28
  br i1 %_Dynamic_check.range29, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded24
  %16 = load i32, i32* %add.ptr18, align 4
  %cmp32 = icmp slt i32 %10, %16
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded31
  %17 = load i32*, i32** %ptr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %_Dynamic_check.non_null33 = icmp ne i32* %17, null
  br i1 %_Dynamic_check.non_null33, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.then
  %idx.ext36 = sext i32 %18 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %17, i64 %idx.ext36
  %_Dynamic_check.non_null38 = icmp ne i32* %add.ptr37, null
  br i1 %_Dynamic_check.non_null38, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %_Dynamic_check.succeeded35
  %19 = load i32*, i32** %ptr.addr, align 8
  %20 = load i32*, i32** %ptr.addr, align 8
  %21 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null41 = icmp ne i32* %20, null
  br i1 %_Dynamic_check.non_null41, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded40
  %idx.ext44 = sext i32 %21 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %20, i64 %idx.ext44
  %_Dynamic_check.lower46 = icmp ule i32* %19, %add.ptr37
  %_Dynamic_check.upper47 = icmp ult i32* %add.ptr37, %add.ptr45
  %_Dynamic_check.range48 = and i1 %_Dynamic_check.lower46, %_Dynamic_check.upper47
  br i1 %_Dynamic_check.range48, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded43
  %22 = load i32, i32* %add.ptr37, align 4
  store i32 %22, i32* %t, align 4
  %23 = load i32*, i32** %ptr.addr, align 8
  %24 = load i32, i32* %j, align 4
  %_Dynamic_check.non_null51 = icmp ne i32* %23, null
  br i1 %_Dynamic_check.non_null51, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %_Dynamic_check.succeeded50
  %idx.ext54 = sext i32 %24 to i64
  %add.ptr55 = getelementptr inbounds i32, i32* %23, i64 %idx.ext54
  %_Dynamic_check.non_null56 = icmp ne i32* %add.ptr55, null
  br i1 %_Dynamic_check.non_null56, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded53
  %25 = load i32*, i32** %ptr.addr, align 8
  %26 = load i32*, i32** %ptr.addr, align 8
  %27 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null59 = icmp ne i32* %26, null
  br i1 %_Dynamic_check.non_null59, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded58
  %idx.ext62 = sext i32 %27 to i64
  %add.ptr63 = getelementptr inbounds i32, i32* %26, i64 %idx.ext62
  %_Dynamic_check.lower64 = icmp ule i32* %25, %add.ptr55
  %_Dynamic_check.upper65 = icmp ult i32* %add.ptr55, %add.ptr63
  %_Dynamic_check.range66 = and i1 %_Dynamic_check.lower64, %_Dynamic_check.upper65
  br i1 %_Dynamic_check.range66, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded61
  %28 = load i32, i32* %add.ptr55, align 4
  %29 = load i32*, i32** %ptr.addr, align 8
  %30 = load i32, i32* %i, align 4
  %_Dynamic_check.non_null69 = icmp ne i32* %29, null
  br i1 %_Dynamic_check.non_null69, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded68
  %idx.ext72 = sext i32 %30 to i64
  %add.ptr73 = getelementptr inbounds i32, i32* %29, i64 %idx.ext72
  %_Dynamic_check.non_null74 = icmp ne i32* %add.ptr73, null
  br i1 %_Dynamic_check.non_null74, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded71
  %31 = load i32*, i32** %ptr.addr, align 8
  %32 = load i32*, i32** %ptr.addr, align 8
  %33 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null77 = icmp ne i32* %32, null
  br i1 %_Dynamic_check.non_null77, label %_Dynamic_check.succeeded79, label %_Dynamic_check.failed78

_Dynamic_check.succeeded79:                       ; preds = %_Dynamic_check.succeeded76
  %idx.ext80 = sext i32 %33 to i64
  %add.ptr81 = getelementptr inbounds i32, i32* %32, i64 %idx.ext80
  %_Dynamic_check.lower82 = icmp ule i32* %31, %add.ptr73
  %_Dynamic_check.upper83 = icmp ult i32* %add.ptr73, %add.ptr81
  %_Dynamic_check.range84 = and i1 %_Dynamic_check.lower82, %_Dynamic_check.upper83
  br i1 %_Dynamic_check.range84, label %_Dynamic_check.succeeded86, label %_Dynamic_check.failed85

_Dynamic_check.succeeded86:                       ; preds = %_Dynamic_check.succeeded79
  store i32 %28, i32* %add.ptr73, align 4
  %34 = load i32, i32* %t, align 4
  %35 = load i32*, i32** %ptr.addr, align 8
  %36 = load i32, i32* %j, align 4
  %_Dynamic_check.non_null87 = icmp ne i32* %35, null
  br i1 %_Dynamic_check.non_null87, label %_Dynamic_check.succeeded89, label %_Dynamic_check.failed88

_Dynamic_check.succeeded89:                       ; preds = %_Dynamic_check.succeeded86
  %idx.ext90 = sext i32 %36 to i64
  %add.ptr91 = getelementptr inbounds i32, i32* %35, i64 %idx.ext90
  %_Dynamic_check.non_null92 = icmp ne i32* %add.ptr91, null
  br i1 %_Dynamic_check.non_null92, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.succeeded89
  %37 = load i32*, i32** %ptr.addr, align 8
  %38 = load i32*, i32** %ptr.addr, align 8
  %39 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null95 = icmp ne i32* %38, null
  br i1 %_Dynamic_check.non_null95, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded94
  %idx.ext98 = sext i32 %39 to i64
  %add.ptr99 = getelementptr inbounds i32, i32* %38, i64 %idx.ext98
  %_Dynamic_check.lower100 = icmp ule i32* %37, %add.ptr91
  %_Dynamic_check.upper101 = icmp ult i32* %add.ptr91, %add.ptr99
  %_Dynamic_check.range102 = and i1 %_Dynamic_check.lower100, %_Dynamic_check.upper101
  br i1 %_Dynamic_check.range102, label %_Dynamic_check.succeeded104, label %_Dynamic_check.failed103

_Dynamic_check.succeeded104:                      ; preds = %_Dynamic_check.succeeded97
  store i32 %34, i32* %add.ptr91, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %for.body3
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed34:                          ; preds = %if.then
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed39:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed78:                          ; preds = %_Dynamic_check.succeeded76
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed85:                          ; preds = %_Dynamic_check.succeeded79
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed88:                          ; preds = %_Dynamic_check.succeeded86
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed93:                          ; preds = %_Dynamic_check.succeeded89
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded94
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed103:                         ; preds = %_Dynamic_check.succeeded97
  call void @llvm.trap() #4
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded104, %_Dynamic_check.succeeded31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !2

for.end:                                          ; preds = %for.cond1
  br label %for.inc105

for.inc105:                                       ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %41, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end107:                                       ; preds = %for.cond
  store i64 0, i64* %i108, align 8
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end107
  %42 = load i64, i64* %i108, align 8
  %43 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %43 to i64
  %cmp110 = icmp ult i64 %42, %conv
  br i1 %cmp110, label %for.body112, label %for.end132

for.body112:                                      ; preds = %for.cond109
  %44 = load i32*, i32** %ptr.addr, align 8
  %45 = load i64, i64* %i108, align 8
  %_Dynamic_check.non_null113 = icmp ne i32* %44, null
  br i1 %_Dynamic_check.non_null113, label %_Dynamic_check.succeeded115, label %_Dynamic_check.failed114

_Dynamic_check.succeeded115:                      ; preds = %for.body112
  %add.ptr116 = getelementptr inbounds i32, i32* %44, i64 %45
  %_Dynamic_check.non_null117 = icmp ne i32* %add.ptr116, null
  br i1 %_Dynamic_check.non_null117, label %_Dynamic_check.succeeded119, label %_Dynamic_check.failed118

_Dynamic_check.succeeded119:                      ; preds = %_Dynamic_check.succeeded115
  %46 = load i32*, i32** %ptr.addr, align 8
  %47 = load i32*, i32** %ptr.addr, align 8
  %48 = load i32, i32* %n.addr, align 4
  %_Dynamic_check.non_null120 = icmp ne i32* %47, null
  br i1 %_Dynamic_check.non_null120, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %_Dynamic_check.succeeded119
  %idx.ext123 = sext i32 %48 to i64
  %add.ptr124 = getelementptr inbounds i32, i32* %47, i64 %idx.ext123
  %_Dynamic_check.lower125 = icmp ule i32* %46, %add.ptr116
  %_Dynamic_check.upper126 = icmp ult i32* %add.ptr116, %add.ptr124
  %_Dynamic_check.range127 = and i1 %_Dynamic_check.lower125, %_Dynamic_check.upper126
  br i1 %_Dynamic_check.range127, label %_Dynamic_check.succeeded129, label %_Dynamic_check.failed128

_Dynamic_check.succeeded129:                      ; preds = %_Dynamic_check.succeeded122
  %49 = load i32, i32* %add.ptr116, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %for.inc130

for.inc130:                                       ; preds = %_Dynamic_check.succeeded129
  %50 = load i64, i64* %i108, align 8
  %inc131 = add i64 %50, 1
  store i64 %inc131, i64* %i108, align 8
  br label %for.cond109, !llvm.loop !5

_Dynamic_check.failed114:                         ; preds = %for.body112
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed118:                         ; preds = %_Dynamic_check.succeeded115
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed121:                         ; preds = %_Dynamic_check.succeeded119
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed128:                         ; preds = %_Dynamic_check.succeeded122
  call void @llvm.trap() #4
  unreachable

for.end132:                                       ; preds = %for.cond109
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %arr = alloca [6 x i32], align 16
  %temp_ptr = alloca i32*, align 8
  %checked_ptr = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %n, align 4
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i64 0, i64 0
  %_Dynamic_check.is_null = icmp eq i32* %arraydecay, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i64 0, i64 0
  %_Dynamic_check.non_null = icmp ne i32* %arraydecay2, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay2, i64 6
  %_Dynamic_check.non_null3 = icmp ne i32* %arraydecay, null
  br i1 %_Dynamic_check.non_null3, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %add.ptr6 = getelementptr inbounds i32, i32* %arraydecay, i64 5
  %_Dynamic_check.lower = icmp ule i32* %arraydecay1, %arraydecay
  %_Dynamic_check.upper = icmp ule i32* %add.ptr6, %add.ptr
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed7

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded5, %entry
  store i32* %arraydecay, i32** %temp_ptr, align 8
  %1 = load i32*, i32** %temp_ptr, align 8
  %_Dynamic_check.is_null8 = icmp eq i32* %1, null
  br i1 %_Dynamic_check.is_null8, label %_Dynamic_check.success22, label %_Dynamic_check.subsumption9

_Dynamic_check.subsumption9:                      ; preds = %_Dynamic_check.success
  %2 = load i32*, i32** %temp_ptr, align 8
  %3 = load i32*, i32** %temp_ptr, align 8
  %_Dynamic_check.non_null10 = icmp ne i32* %3, null
  br i1 %_Dynamic_check.non_null10, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.subsumption9
  %add.ptr13 = getelementptr inbounds i32, i32* %3, i64 5
  %_Dynamic_check.non_null14 = icmp ne i32* %1, null
  br i1 %_Dynamic_check.non_null14, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %add.ptr17 = getelementptr inbounds i32, i32* %1, i64 7
  %_Dynamic_check.lower18 = icmp ule i32* %2, %1
  %_Dynamic_check.upper19 = icmp ule i32* %add.ptr17, %add.ptr13
  %_Dynamic_check.cast20 = and i1 %_Dynamic_check.lower18, %_Dynamic_check.upper19
  br i1 %_Dynamic_check.cast20, label %_Dynamic_check.success22, label %_Dynamic_check.failed21

_Dynamic_check.success22:                         ; preds = %_Dynamic_check.succeeded16, %_Dynamic_check.success
  store i32* %1, i32** %checked_ptr, align 8
  %4 = load i32, i32* %n, align 4
  %5 = load i32*, i32** %checked_ptr, align 8
  call void @sort(i32 %4, i32* %5)
  ret i32 0

_Dynamic_check.failed:                            ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.subsumption9
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #4
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #4
  unreachable
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/checkedc-llvm-project.git 7ea66b40c3a57d04d50ed2d41761809dd00b1250)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
