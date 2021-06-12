.class public final Lio/reactivex/internal/operators/completable/CompletableDelay;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/CompletableSource;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler;

.field final e:Z


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 9

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->a:Lio/reactivex/CompletableSource;

    new-instance v8, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    iget-wide v3, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->d:Lio/reactivex/Scheduler;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;-><init>(Lio/reactivex/CompletableObserver;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
