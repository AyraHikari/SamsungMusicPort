.class final Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayWithMainObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->b:Lio/reactivex/MaybeObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->b:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->b:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;->b:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
