.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->a:Lio/reactivex/Observer;

    .line 284
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 304
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
