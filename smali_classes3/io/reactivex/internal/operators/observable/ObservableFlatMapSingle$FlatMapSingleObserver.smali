.class final Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile cancelled:Z

.field final delayErrors:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    .line 79
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->delayErrors:Z

    .line 80
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 81
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->cancelled:Z

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method drain()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 8

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    .line 224
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 229
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->cancelled:Z

    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->clear()V

    return-void

    .line 234
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->delayErrors:Z

    if-nez v5, :cond_2

    .line 235
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 237
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->clear()V

    .line 239
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 245
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz v7, :cond_4

    .line 246
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 250
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 252
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 254
    :cond_6
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :goto_3
    return-void

    :cond_7
    if-eqz v6, :cond_8

    neg-int v4, v4

    .line 266
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 263
    :cond_8
    invoke-interface {v0, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TR;>;"
        }
    .end annotation

    .line 183
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz v0, :cond_1

    return-object v0

    .line 187
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/Observable;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    .line 188
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method innerError(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver<",
            "TT;TR;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 196
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 199
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 201
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->drain()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method innerSuccess(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver<",
            "TT;TR;>.InnerObserver;TR;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->get()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 153
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 154
    :goto_0
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 157
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p2, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    :goto_1
    return-void

    .line 165
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 169
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move-result-object p1

    .line 170
    monitor-enter p1

    .line 171
    :try_start_0
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 172
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->drainLoop()V

    return-void

    :catchall_0
    move-exception p2

    .line 172
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public isDisposed()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->drain()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;)V

    .line 112
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->cancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p1, v0}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 102
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 104
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 91
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
