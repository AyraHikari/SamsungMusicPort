.class public final Lkotlinx/coroutines/CoroutineExceptionHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "originalException"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thrownException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    check-cast v0, Ljava/lang/Throwable;

    .line 101
    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    .line 47
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    sget-object v0, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 30
    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->d(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 32
    :cond_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    check-cast p2, Lkotlinx/coroutines/Job;

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-void
.end method
