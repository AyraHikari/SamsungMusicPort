.class final Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntervalRangeSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x26fd42ce5a1686a7L


# instance fields
.field count:J

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final end:J

.field final resource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 78
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->count:J

    .line 79
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->end:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 84
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 100
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->count:J

    .line 101
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 103
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->end:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 107
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 111
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->count:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->decrementAndGet()J

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t deliver value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->count:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " due to lack of requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
