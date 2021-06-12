.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78db4ef70799ee01L


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 341
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->idx:J

    .line 342
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 380
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 385
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 373
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->idx:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;->onTimeout(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 363
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->idx:J

    invoke-interface {v0, v1, v2, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;->onTimeoutError(JLjava/lang/Throwable;)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Subscription;

    .line 353
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 354
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 355
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->lazySet(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->idx:J

    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;->onTimeout(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 347
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
