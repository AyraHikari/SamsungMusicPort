.class final Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1fc17b9fa19967edL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field remaining:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 58
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 59
    invoke-virtual {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 100
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 90
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 91
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 79
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    .line 80
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 83
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 67
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 69
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 6

    .line 108
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, p1

    :goto_0
    const/4 v4, 0x0

    sub-long v4, v0, v2

    .line 121
    invoke-virtual {p0, v0, v1, v4, v5}, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_3
    :goto_1
    return-void
.end method
