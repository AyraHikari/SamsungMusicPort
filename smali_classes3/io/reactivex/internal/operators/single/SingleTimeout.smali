.class public final Lio/reactivex/internal/operators/single/SingleTimeout;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler;

.field final e:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    new-instance v6, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->e:Lio/reactivex/SingleSource;

    iget-wide v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;)V

    .line 51
    invoke-interface {p1, v6}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 53
    iget-object p1, v6, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->d:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 55
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->a:Lio/reactivex/SingleSource;

    invoke-interface {p1, v6}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    return-void
.end method
