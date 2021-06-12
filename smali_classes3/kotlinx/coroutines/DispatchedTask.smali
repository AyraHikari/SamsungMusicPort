.class public abstract Lkotlinx/coroutines/DispatchedTask;
.super Lkotlinx/coroutines/scheduling/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/Task;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/Task;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/DispatchedTask;->e:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 215
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public abstract f()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final run()V
    .locals 7

    .line 218
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedTask;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->f()Lkotlin/coroutines/Continuation;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lkotlinx/coroutines/DispatchedContinuation;

    .line 221
    iget-object v2, v1, Lkotlinx/coroutines/DispatchedContinuation;->d:Lkotlin/coroutines/Continuation;

    .line 222
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 223
    iget v4, p0, Lkotlinx/coroutines/DispatchedTask;->e:I

    invoke-static {v4}, Lkotlinx/coroutines/ResumeModeKt;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v4, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->c()Ljava/lang/Object;

    move-result-object v5

    .line 225
    iget-object v1, v1, Lkotlinx/coroutines/DispatchedContinuation;->b:Ljava/lang/Object;

    .line 282
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 226
    :try_start_1
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 229
    :cond_1
    invoke-virtual {p0, v5}, Lkotlinx/coroutines/DispatchedTask;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 285
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0, v5}, Lkotlinx/coroutines/DispatchedTask;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 235
    :goto_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->c()V

    return-void

    .line 287
    :goto_2
    :try_start_3
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v2

    .line 220
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 237
    :try_start_4
    new-instance v2, Lkotlinx/coroutines/DispatchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    :goto_3
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->c()V

    throw v1
.end method
