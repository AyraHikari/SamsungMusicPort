.class public final Lio/reactivex/internal/operators/flowable/FlowableAmb;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->b:[Lorg/reactivestreams/Publisher;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 40
    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    .line 42
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/Publisher;

    if-nez v4, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 47
    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 48
    new-array v5, v5, [Lorg/reactivestreams/Publisher;

    .line 49
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 52
    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 60
    :cond_2
    array-length v3, v0

    :cond_3
    if-nez v3, :cond_4

    .line 64
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void

    :cond_4
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    .line 68
    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 72
    :cond_5
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    invoke-direct {v1, p1, v3}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;-><init>(Lorg/reactivestreams/Subscriber;I)V

    .line 73
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->a([Lorg/reactivestreams/Publisher;)V

    return-void
.end method
