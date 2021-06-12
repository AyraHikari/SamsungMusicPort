.class final Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;
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
.field final parent:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver<",
            "*>;)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 279
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 298
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 284
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
