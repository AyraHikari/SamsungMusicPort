.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3fec6c572fe7d027L


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final id:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 531
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 532
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    .line 533
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 588
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 584
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-boolean p1, p1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 572
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    :cond_0
    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 575
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 561
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 538
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    .line 541
    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    const/4 v0, 0x7

    .line 543
    invoke-interface {p1, v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 545
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    .line 546
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 547
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 548
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 552
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    .line 553
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_1
    return-void
.end method
