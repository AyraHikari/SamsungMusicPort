.class final Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferCloseObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75f145dafa87c3a6L


# instance fields
.field final index:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<",
            "TT;TC;**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<",
            "TT;TC;**>;J)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 340
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    .line 341
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->index:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 379
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

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

    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 372
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->lazySet(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->index:J

    invoke-virtual {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->close(Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 362
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->lazySet(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->boundaryError(Lio/reactivex/disposables/Disposable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    .line 352
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq p1, v0, :cond_0

    .line 353
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->lazySet(Ljava/lang/Object;)V

    .line 354
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 355
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->index:J

    invoke-virtual {p1, p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->close(Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 346
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
