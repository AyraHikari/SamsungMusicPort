.class public final Lkotlinx/coroutines/ThreadPoolDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->d:I

    iput-object p2, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->e:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iget p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->d:I

    new-instance p2, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;

    invoke-direct {p2, p0}, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;-><init>(Lkotlinx/coroutines/ThreadPoolDispatcher;)V

    check-cast p2, Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p2, "Executors.newScheduledTh\u2026.incrementAndGet())\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->c:Ljava/util/concurrent/Executor;

    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/ThreadPoolDispatcher;->c()V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/ThreadPoolDispatcher;)I
    .locals 0

    .line 68
    iget p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->d:I

    return p0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 68
    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 74
    iget-object v0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/ThreadPoolDispatcher;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.concurrent.ExecutorService"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadPoolDispatcher["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
