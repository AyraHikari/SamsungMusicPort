.class public final Lkotlinx/coroutines/AwaitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$awaitAll$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_5

    const/4 p1, 0x0

    .line 119
    new-array p1, p1, [Lkotlinx/coroutines/Deferred;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, [Lkotlinx/coroutines/Deferred;

    .line 39
    new-instance v2, Lkotlinx/coroutines/AwaitAll;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/AwaitAll;-><init>([Lkotlinx/coroutines/Deferred;)V

    iput-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->L$0:Ljava/lang/Object;

    const/4 p0, 0x1

    iput p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/AwaitAll;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 38
    :cond_3
    :goto_1
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    :goto_2
    return-object p0

    .line 119
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_6
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$awaitAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->L$0:Ljava/lang/Object;

    check-cast p0, [Lkotlinx/coroutines/Deferred;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    .line 24
    array-length p1, p0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance p1, Lkotlinx/coroutines/AwaitAll;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/AwaitAll;-><init>([Lkotlinx/coroutines/Deferred;)V

    iput-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/AwaitAll;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 23
    :cond_4
    :goto_2
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    :goto_3
    return-object p0

    :cond_5
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/Job;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$joinAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    iget p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iget-object v4, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$2:Ljava/lang/Object;

    check-cast v4, [Lkotlinx/coroutines/Job;

    iget-object v5, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$1:Ljava/lang/Object;

    check-cast v5, [Lkotlinx/coroutines/Job;

    iget-object v6, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    check-cast v6, [Lkotlinx/coroutines/Job;

    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object p1, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v6

    goto :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_4

    .line 120
    array-length p1, p0

    const/4 v2, 0x0

    move-object v4, p0

    move v2, p1

    move-object v5, v1

    move-object p1, v4

    move-object v1, p1

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v2, :cond_3

    aget-object v6, p1, p0

    .line 48
    iput-object v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iput p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iput-object v6, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/Job;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_2

    return-object v5

    :cond_2
    :goto_2
    add-int/2addr p0, v3

    goto :goto_1

    .line 121
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    .line 48
    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$joinAll$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$3:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_4

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v5

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/Job;

    .line 57
    iput-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$4:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/Job;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    .line 123
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    .line 57
    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
