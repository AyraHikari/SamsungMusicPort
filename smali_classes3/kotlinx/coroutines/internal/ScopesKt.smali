.class public final Lkotlinx/coroutines/internal/ScopesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/AbstractCoroutine;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/AbstractCoroutine<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

    if-eqz p0, :cond_1

    .line 35
    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
