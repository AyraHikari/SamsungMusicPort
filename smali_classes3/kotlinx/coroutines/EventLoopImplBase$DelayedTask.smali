.class public abstract Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lkotlinx/coroutines/internal/ThreadSafeHeapNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/EventLoopImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelayedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field public final b:J

.field private c:I


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 252
    iput v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->c:I

    .line 254
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v0

    invoke-static {p1, p2}, Lkotlinx/coroutines/EventLoopKt;->a(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    iget-wide v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized a(Lkotlinx/coroutines/internal/ThreadSafeHeap;Lkotlinx/coroutines/EventLoopImplBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
            ">;",
            "Lkotlinx/coroutines/EventLoopImplBase;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "delayed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 270
    :cond_0
    :try_start_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 342
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :try_start_2
    invoke-static {p2}, Lkotlinx/coroutines/EventLoopImplBase;->a(Lkotlinx/coroutines/EventLoopImplBase;)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->b(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 348
    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/lit8 p1, p2, 0x1

    .line 270
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p2

    .line 348
    :try_start_4
    monitor-exit p1

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 268
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;

    .line 279
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z

    .line 282
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 277
    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 252
    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->c:I

    return-void
.end method

.method public a(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 249
    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;

    return-void

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(J)Z
    .locals 2

    .line 265
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 252
    iget v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->c:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 240
    check-cast p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 1

    .line 274
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/DefaultExecutor;->a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
