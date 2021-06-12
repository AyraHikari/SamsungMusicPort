.class Lkotlinx/coroutines/StandaloneCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lkotlinx/coroutines/StandaloneCoroutine;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method
