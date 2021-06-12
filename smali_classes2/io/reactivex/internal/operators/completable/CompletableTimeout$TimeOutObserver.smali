.class final Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeOutObserver"
.end annotation


# instance fields
.field private final a:Lio/reactivex/disposables/CompositeDisposable;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 64
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->c:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->c:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->c:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
