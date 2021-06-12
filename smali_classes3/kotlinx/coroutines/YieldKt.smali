.class public final Lkotlinx/coroutines/YieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/CoroutineContext;)V

    .line 21
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/DispatchedContinuation;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lkotlinx/coroutines/DispatchedContinuation;

    if-eqz v1, :cond_3

    .line 22
    iget-object v2, v1, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->a(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-static {v1}, Lkotlinx/coroutines/DispatchedKt;->a(Lkotlinx/coroutines/DispatchedContinuation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/DispatchedContinuation;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object v0
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    .line 31
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
