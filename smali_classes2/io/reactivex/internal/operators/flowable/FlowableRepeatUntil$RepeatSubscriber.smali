.class final Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field produced:J

.field final sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final stop:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BooleanSupplier;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/BooleanSupplier;",
            "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 54
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    .line 55
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->source:Lorg/reactivestreams/Publisher;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->stop:Lio/reactivex/functions/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->stop:Lio/reactivex/functions/BooleanSupplier;

    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->subscribeNext()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->produced:J

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method subscribeNext()V
    .locals 6

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 99
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 103
    :cond_1
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->produced:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 105
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->produced:J

    .line 106
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v3, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    .line 109
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {v1, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    neg-int v0, v0

    .line 111
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method
