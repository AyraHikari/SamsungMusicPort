.class final Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e3f736d9160236fL


# instance fields
.field final parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver<",
            "*>;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 267
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 286
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 282
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 272
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
