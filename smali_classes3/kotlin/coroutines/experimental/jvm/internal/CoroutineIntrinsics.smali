.class public final Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->a(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/ContinuationInterceptor;->a(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method
