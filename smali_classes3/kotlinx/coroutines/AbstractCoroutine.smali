.class public abstract Lkotlinx/coroutines/AbstractCoroutine;
.super Lkotlinx/coroutines/JobSupport;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lkotlinx/coroutines/Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/Job;"
    }
.end annotation


# instance fields
.field protected final a:Lkotlin/coroutines/CoroutineContext;

.field private final c:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/AbstractCoroutine;->a:Lkotlin/coroutines/CoroutineContext;

    .line 49
    iget-object p1, p0, Lkotlinx/coroutines/AbstractCoroutine;->a:Lkotlin/coroutines/CoroutineContext;

    move-object p2, p0

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/AbstractCoroutine;->c:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 2

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/AbstractCoroutine;->a:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/AbstractCoroutine;->a(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method protected D_()V
    .locals 0

    return-void
.end method

.method public H_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 105
    instance-of p2, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p2, :cond_0

    .line 106
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/AbstractCoroutine;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/AbstractCoroutine;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->C_()V

    .line 160
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 56
    invoke-super {p0}, Lkotlinx/coroutines/JobSupport;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lkotlinx/coroutines/AbstractCoroutine;->a:Lkotlin/coroutines/CoroutineContext;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->D_()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lkotlinx/coroutines/AbstractCoroutine;->c:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineContextKt;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/JobSupport;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/JobSupport;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 49
    iget-object v0, p0, Lkotlinx/coroutines/AbstractCoroutine;->c:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/AbstractCoroutine;->c:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 117
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->H_()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/AbstractCoroutine;->a(Ljava/lang/Object;I)Z

    return-void
.end method
