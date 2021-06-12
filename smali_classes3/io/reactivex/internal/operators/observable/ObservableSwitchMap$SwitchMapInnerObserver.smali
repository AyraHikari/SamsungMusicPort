.class final Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSwitchMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3540c639803a63b9L


# instance fields
.field final bufferSize:I

.field volatile done:Z

.field final index:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 339
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    .line 340
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->index:J

    .line 341
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 392
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 385
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    iget-wide v2, v2, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->unique:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->done:Z

    .line 387
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->drain()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->innerError(Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 370
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    iget-wide v2, v2, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->unique:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->drain()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 346
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    .line 349
    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    const/4 v0, 0x7

    .line 351
    invoke-interface {p1, v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 353
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 354
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->done:Z

    .line 355
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 359
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    return-void

    .line 364
    :cond_1
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->bufferSize:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_2
    return-void
.end method
