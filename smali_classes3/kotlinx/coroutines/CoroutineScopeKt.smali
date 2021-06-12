.class public final Lkotlinx/coroutines/CoroutineScopeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lkotlinx/coroutines/internal/ContextScope;

    sget-object v1, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final a(Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
