.class public final Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/BooleanSupplier;


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 35
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 37
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;->c:Lio/reactivex/functions/BooleanSupplier;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;->b:Lio/reactivex/Flowable;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BooleanSupplier;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V

    .line 38
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->subscribeNext()V

    return-void
.end method
