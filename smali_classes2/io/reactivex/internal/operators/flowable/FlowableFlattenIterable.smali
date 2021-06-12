.class public final Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->b:Lio/reactivex/Flowable;

    instance-of v0, v0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->b:Lio/reactivex/Flowable;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->c:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    invoke-static {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;->a(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V

    return-void

    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 73
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void

    :catch_1
    move-exception v0

    .line 55
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->c:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;->d:I

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
