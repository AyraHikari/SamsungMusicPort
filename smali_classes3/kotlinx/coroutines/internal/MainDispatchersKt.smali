.class public final Lkotlinx/coroutines/internal/MainDispatchersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;)",
            "Lkotlinx/coroutines/MainCoroutineDispatcher;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-interface {p0, p1}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->b(Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    new-instance v0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    invoke-interface {p0}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/MainCoroutineDispatcher;

    :goto_0
    return-object p1
.end method
