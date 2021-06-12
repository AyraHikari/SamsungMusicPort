.class public final Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed$SkipLastTimedObserver;
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

.field final e:I

.field final f:Z


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->a:Lio/reactivex/ObservableSource;

    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed$SkipLastTimedObserver;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->d:Lio/reactivex/Scheduler;

    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->e:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed;->f:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/observable/ObservableSkipLastTimed$SkipLastTimedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IZ)V

    invoke-interface {v0, v9}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
