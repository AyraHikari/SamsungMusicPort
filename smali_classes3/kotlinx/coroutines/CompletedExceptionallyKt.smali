.class public final Lkotlinx/coroutines/CompletedExceptionallyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {v0, p0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
