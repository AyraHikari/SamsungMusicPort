.class public final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler;

.field final e:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 35
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/Scheduler;

    .line 38
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/ObservableSource;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/Scheduler;

    invoke-virtual {v3}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V

    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 46
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;->startTimeout(J)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/Scheduler;

    invoke-virtual {v3}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/ObservableSource;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Lio/reactivex/ObservableSource;)V

    .line 50
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->startTimeout(J)V

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
