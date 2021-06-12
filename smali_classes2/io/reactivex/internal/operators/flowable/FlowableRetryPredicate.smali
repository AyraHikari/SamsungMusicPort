.class public final Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;
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
.field final c:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:J


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    new-instance v5, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 39
    invoke-interface {p1, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 41
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->d:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->c:Lio/reactivex/functions/Predicate;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->b:Lio/reactivex/Flowable;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLio/reactivex/functions/Predicate;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V

    .line 42
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;->subscribeNext()V

    return-void
.end method
