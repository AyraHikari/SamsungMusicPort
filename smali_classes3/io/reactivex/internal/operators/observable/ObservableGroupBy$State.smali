.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableSource;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/Observer<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final parent:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 228
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 229
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->parent:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    .line 230
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->key:Ljava/lang/Object;

    .line 231
    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->delayError:Z

    return-void
.end method


# virtual methods
.method checkTerminated(ZZLio/reactivex/Observer;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/Observer<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 320
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 321
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->parent:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->cancel(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    .line 329
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 330
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 332
    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    :goto_0
    return v1

    .line 339
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 341
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 342
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 343
    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 347
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 348
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 3

    .line 236
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->parent:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->cancel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 8

    .line 281
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 287
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->delayError:Z

    .line 288
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Observer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 292
    :goto_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->done:Z

    .line 293
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 296
    :goto_2
    invoke-virtual {p0, v5, v7, v2, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->checkTerminated(ZZLio/reactivex/Observer;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_3

    .line 304
    :cond_4
    invoke-interface {v2, v6}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_3
    neg-int v4, v4

    .line 308
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    if-nez v2, :cond_1

    .line 313
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Observer;

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->done:Z

    .line 277
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->done:Z

    .line 272
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->drain()V

    return-void
.end method

.method public subscribe(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->drain()V

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Observer allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
