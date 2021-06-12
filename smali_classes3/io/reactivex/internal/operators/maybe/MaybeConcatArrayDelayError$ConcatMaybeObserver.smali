.class final Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30dc8174e7c3966aL


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field index:I

.field produced:J

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;[Lio/reactivex/MaybeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->downstream:Lorg/reactivestreams/Subscriber;

    .line 72
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    .line 73
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 75
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method drain()V
    .locals 11

    .line 121
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->downstream:Lorg/reactivestreams/Subscriber;

    .line 127
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 130
    :cond_1
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 135
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 139
    sget-object v5, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_4

    .line 140
    iget-wide v7, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->produced:J

    .line 141
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 142
    iput-wide v7, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->produced:J

    .line 143
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 146
    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    if-eqz v6, :cond_7

    .line 155
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 156
    iget v3, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->index:I

    .line 157
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    array-length v4, v4

    if-ne v3, v4, :cond_6

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 162
    :cond_5
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_1
    return-void

    :cond_6
    add-int/lit8 v4, v3, 0x1

    .line 166
    iput v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->index:I

    .line 168
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    aget-object v3, v4, v3

    invoke-interface {v3, p0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    .line 172
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->drain()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 81
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 83
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->drain()V

    :cond_0
    return-void
.end method
