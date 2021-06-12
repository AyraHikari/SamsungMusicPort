.class public final Lio/reactivex/internal/operators/completable/CompletableTimer;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/Scheduler;


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 4

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 41
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->c:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;->setFuture(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
