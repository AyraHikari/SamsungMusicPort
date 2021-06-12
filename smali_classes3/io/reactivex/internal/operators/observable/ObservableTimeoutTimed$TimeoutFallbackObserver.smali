.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutFallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x343e2a2afd6bc01eL


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fallback:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field final task:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 192
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    .line 193
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->timeout:J

    .line 194
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 195
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 196
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    .line 197
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 198
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 266
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 267
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 272
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 243
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 245
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 230
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 232
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->startTimeout(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onTimeout(J)V
    .locals 3

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 254
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    const/4 p2, 0x0

    .line 255
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->fallback:Lio/reactivex/ObservableSource;

    .line 257
    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->downstream:Lio/reactivex/Observer;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 259
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    :cond_0
    return-void
.end method

.method startTimeout(J)V
    .locals 4

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;

    invoke-direct {v2, p1, p2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->timeout:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
