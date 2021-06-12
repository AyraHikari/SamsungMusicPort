.class final Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler$Worker;

.field e:Lio/reactivex/disposables/Disposable;

.field f:Lio/reactivex/disposables/Disposable;

.field volatile g:J

.field h:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->a:Lio/reactivex/Observer;

    .line 62
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->b:J

    .line 63
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->c:Ljava/util/concurrent/TimeUnit;

    .line 64
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->g:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p4}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->dispose()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->h:Z

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 122
    :cond_1
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->run()V

    .line 126
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->h:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->h:Z

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 106
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 81
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->g:J

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 88
    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;)V

    .line 89
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->f:Lio/reactivex/disposables/Disposable;

    .line 90
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->d:Lio/reactivex/Scheduler$Worker;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->e:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->e:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
