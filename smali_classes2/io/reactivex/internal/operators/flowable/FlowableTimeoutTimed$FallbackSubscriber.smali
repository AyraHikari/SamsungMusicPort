.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FallbackSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->a:Lorg/reactivestreams/Subscriber;

    .line 295
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 315
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber;->b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
