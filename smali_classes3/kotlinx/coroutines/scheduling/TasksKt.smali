.class public final Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:J

.field public static g:Lkotlinx/coroutines/scheduling/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 18
    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    const-string v2, "kotlinx.coroutines.scheduler.offload.threshold"

    const/16 v3, 0x60

    const/4 v4, 0x0

    const/16 v5, 0x80

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 23
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->b:I

    const-string v1, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->c:I

    const-string v1, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 37
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->a()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v2

    const/4 v3, 0x1

    const/16 v5, 0x8

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->d:I

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 44
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    .line 45
    sget v2, Lkotlinx/coroutines/scheduling/TasksKt;->d:I

    const v3, 0x1ffffe

    .line 44
    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->a(III)I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x1ffffe

    const/4 v5, 0x4

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->e:I

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 53
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->f:J

    .line 57
    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->a:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    check-cast v0, Lkotlinx/coroutines/scheduling/TimeSource;

    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->g:Lkotlinx/coroutines/scheduling/TimeSource;

    return-void
.end method
