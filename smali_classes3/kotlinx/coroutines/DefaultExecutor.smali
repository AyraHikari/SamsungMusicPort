.class public final Lkotlinx/coroutines/DefaultExecutor;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lkotlinx/coroutines/DefaultExecutor;

.field private static final c:J

.field private static volatile d:Ljava/lang/Thread;

.field private static volatile e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lkotlinx/coroutines/DefaultExecutor;

    invoke-direct {v0}, Lkotlinx/coroutines/DefaultExecutor;-><init>()V

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/EventLoop;->a(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 23
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_0
    const-string v1, "try {\n            java.l\u2026AULT_KEEP_ALIVE\n        }"

    .line 22
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/DefaultExecutor;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    return-void
.end method

.method private final k()Z
    .locals 2

    .line 44
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final declared-synchronized l()Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 96
    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized m()Z
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 117
    :try_start_1
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->e:I

    .line 118
    move-object v1, p0

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 115
    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized n()V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 141
    :try_start_1
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->e:I

    .line 142
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->j()V

    .line 143
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;

    invoke-direct {v0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;-><init>(JLjava/lang/Runnable;)V

    sget-object p1, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    move-object p2, v0

    check-cast p2, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/DefaultExecutor;->a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method protected b()Ljava/lang/Thread;
    .locals 1

    .line 33
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->l()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 12

    .line 61
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->a:Lkotlinx/coroutines/ThreadLocalEventLoop;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/EventLoop;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ThreadLocalEventLoop;->a(Lkotlinx/coroutines/EventLoop;)V

    .line 62
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->d()V

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->m()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 87
    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    .line 88
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->n()V

    .line 89
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->e()V

    .line 91
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->b()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 67
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 68
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_7

    cmp-long v9, v3, v1

    if-nez v9, :cond_6

    .line 72
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v10

    invoke-interface {v10}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v10

    if-nez v9, :cond_3

    .line 73
    sget-wide v3, Lkotlinx/coroutines/DefaultExecutor;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    add-long/2addr v3, v10

    :cond_3
    const/4 v9, 0x0

    sub-long v9, v3, v10

    cmp-long v11, v9, v7

    if-gtz v11, :cond_5

    .line 87
    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    .line 88
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->n()V

    .line 89
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->e()V

    .line 91
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->b()Ljava/lang/Thread;

    :cond_4
    return-void

    .line 76
    :cond_5
    :try_start_2
    invoke-static {v5, v6, v9, v10}, Lkotlin/ranges/RangesKt;->b(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 78
    :cond_6
    sget-wide v9, Lkotlinx/coroutines/DefaultExecutor;->c:J

    invoke-static {v5, v6, v9, v10}, Lkotlin/ranges/RangesKt;->b(JJ)J

    move-result-wide v5

    :cond_7
    :goto_1
    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    .line 82
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->k()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_9

    .line 87
    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    .line 88
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->n()V

    .line 89
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->e()V

    .line 91
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->b()Ljava/lang/Thread;

    :cond_8
    return-void

    .line 83
    :cond_9
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v7

    invoke-interface {v7, p0, v5, v6}, Lkotlinx/coroutines/TimeSource;->a(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 87
    check-cast v0, Ljava/lang/Thread;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->d:Ljava/lang/Thread;

    .line 88
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->n()V

    .line 89
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->e()V

    .line 91
    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->d()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->b()Ljava/lang/Thread;

    :cond_a
    throw v1
.end method
