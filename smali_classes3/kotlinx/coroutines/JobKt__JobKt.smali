.class final synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lkotlinx/coroutines/DisposeOnCompletion;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 577
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 449
    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 1

    .line 354
    new-instance v0, Lkotlinx/coroutines/JobImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public static synthetic a(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 354
    check-cast p0, Lkotlinx/coroutines/Job;

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
