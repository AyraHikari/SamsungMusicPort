.class public final Lkotlinx/coroutines/DelayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 72
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 86
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 74
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object v2

    invoke-interface {v2, p0, p1, v1}, Lkotlinx/coroutines/Delay;->a(JLkotlinx/coroutines/CancellableContinuation;)V

    .line 87
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->d()Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p0
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->a:Lkotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/Delay;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/Delay;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->a()Lkotlinx/coroutines/Delay;

    move-result-object p0

    :goto_0
    return-object p0
.end method
