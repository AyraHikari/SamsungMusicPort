.class public Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "SourceFile"


# instance fields
.field private b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->c:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->d:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->e:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->f:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->c()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7

    const-string v0, "schedulerName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->f:J

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 42
    sget p1, Lkotlinx/coroutines/scheduling/TasksKt;->d:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 43
    sget p2, Lkotlinx/coroutines/scheduling/TasksKt;->e:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private final c()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    .line 113
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->c:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->d:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->e:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final a(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;

    sget-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;-><init>(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILkotlinx/coroutines/scheduling/TaskMode;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    sget-object p3, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/DefaultExecutor;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/DefaultExecutor;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/DefaultExecutor;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[scheduler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
