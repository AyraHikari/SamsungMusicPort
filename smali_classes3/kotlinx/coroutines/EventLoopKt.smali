.class public final Lkotlinx/coroutines/EventLoopKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/Symbol;

.field private static final b:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/EventLoopKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 31
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/EventLoopKt;->b:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final a(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p0

    :goto_0
    return-wide v0
.end method

.method public static final a()Lkotlinx/coroutines/EventLoop;
    .locals 3

    .line 316
    new-instance v0, Lkotlinx/coroutines/BlockingEventLoop;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/coroutines/BlockingEventLoop;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lkotlinx/coroutines/EventLoop;

    return-object v0
.end method

.method public static final b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 28
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/EventLoopKt;->a:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/EventLoopKt;->b:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method
