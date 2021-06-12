.class Lkotlinx/coroutines/DeferredCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Deferred;
.implements Lkotlinx/coroutines/selects/SelectClause1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lkotlinx/coroutines/Deferred<",
        "TT;>;",
        "Lkotlinx/coroutines/selects/SelectClause1<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static synthetic a(Lkotlinx/coroutines/DeferredCoroutine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p1, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    iget v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/DeferredCoroutine$await$1;-><init>(Lkotlinx/coroutines/DeferredCoroutine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/DeferredCoroutine;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    iput-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/DeferredCoroutine;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/DeferredCoroutine;->b(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lkotlinx/coroutines/DeferredCoroutine;->p()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
