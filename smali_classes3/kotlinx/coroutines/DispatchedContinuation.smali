.class public final Lkotlinx/coroutines/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    .line 82
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->a()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    instance-of p2, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->h:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 174
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 175
    iput p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->e:I

    .line 176
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 89
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    .line 90
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->a()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->a()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public f()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 96
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 83
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->h:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->a(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 102
    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    .line 103
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->e:I

    .line 104
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->a:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->a()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->a:Ljava/lang/Object;

    .line 291
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->e:I

    .line 292
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/EventLoop;->a(Lkotlinx/coroutines/DispatchedTask;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->a(Z)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->b:Ljava/lang/Object;

    .line 300
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 109
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 307
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->f()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    .line 316
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->b(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 304
    :try_start_3
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 323
    :try_start_4
    new-instance v2, Lkotlinx/coroutines/DispatchException;

    const-string v3, "Unexpected exception in unconfined event loop"

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 316
    :goto_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoop;->b(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugKt;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
