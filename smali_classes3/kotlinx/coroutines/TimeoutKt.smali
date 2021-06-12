.class public final Lkotlinx/coroutines/TimeoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 49
    iget v2, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 65
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-wide p1, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->J$0:J

    :try_start_0
    instance-of p1, p3, Lkotlin/Result$Failure;

    if-nez p1, :cond_1

    move-object p0, p3

    goto :goto_1

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p1, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    move-object p3, p0

    goto :goto_2

    :pswitch_1
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const-wide/16 v4, 0x0

    cmp-long p3, p0, v4

    if-gtz p3, :cond_2

    return-object v3

    .line 52
    :cond_2
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/TimeoutCoroutine;

    iput-object v2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    :try_start_1
    iput-wide p0, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->J$0:J

    iput-object p2, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lkotlinx/coroutines/TimeoutKt$withTimeoutOrNull$1;->label:I

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 55
    new-instance v4, Lkotlinx/coroutines/TimeoutCoroutine;

    invoke-direct {v4, p0, p1, v2}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/Continuation;)V

    .line 56
    iput-object v4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    invoke-static {v4, p2}, Lkotlinx/coroutines/TimeoutKt;->a(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    .line 54
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p0

    :catch_1
    move-exception p1

    .line 61
    :goto_2
    iget-object p0, p1, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/TimeoutCoroutine;

    if-ne p0, p2, :cond_5

    return-object v3

    .line 64
    :cond_5
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 49
    :cond_6
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/TimeoutKt;->b(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(JLkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 3

    const-string v0, "coroutine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    return-object v0
.end method

.method private static final b(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lkotlinx/coroutines/TimeoutCoroutine<",
            "TU;-TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    .line 74
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 75
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object v0

    iget-wide v2, p0, Lkotlinx/coroutines/TimeoutCoroutine;->c:J

    move-object v4, p0

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v0, v2, v3, v4}, Lkotlinx/coroutines/Delay;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;

    .line 78
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/AbstractCoroutine;

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->b(Lkotlinx/coroutines/AbstractCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
