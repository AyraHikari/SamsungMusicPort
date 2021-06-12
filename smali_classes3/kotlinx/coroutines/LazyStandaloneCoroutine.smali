.class final Lkotlinx/coroutines/LazyStandaloneCoroutine;
.super Lkotlinx/coroutines/StandaloneCoroutine;
.source "SourceFile"


# instance fields
.field private c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/StandaloneCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 170
    iput-object p2, p0, Lkotlinx/coroutines/LazyStandaloneCoroutine;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method protected D_()V
    .locals 2

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/LazyStandaloneCoroutine;->c:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 174
    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v1, p0, Lkotlinx/coroutines/LazyStandaloneCoroutine;->c:Lkotlin/jvm/functions/Function2;

    .line 175
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0, v1}, Lkotlinx/coroutines/intrinsics/CancellableKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
