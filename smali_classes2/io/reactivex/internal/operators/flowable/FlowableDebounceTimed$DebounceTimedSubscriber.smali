.class final Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceTimedSubscriber"
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
.field private static final serialVersionUID:J = -0x7e5310a1f6e139dcL


# instance fields
.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile index:J

.field final timeout:J

.field timer:Lio/reactivex/disposables/Disposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lorg/reactivestreams/Subscription;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 69
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timeout:J

    .line 70
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 71
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method emit(JLjava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->index:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    .line 157
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 159
    invoke-virtual {p4}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;->dispose()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->cancel()V

    .line 162
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->done:Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 130
    :cond_1
    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;->emit()V

    .line 135
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->done:Z

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 113
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 89
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->index:J

    .line 91
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 96
    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;)V

    .line 97
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    .line 98
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->timeout:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 79
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 141
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
