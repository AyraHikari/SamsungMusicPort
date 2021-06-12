.class final Lio/reactivex/Scheduler$DisposeTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisposeTask"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Lio/reactivex/Scheduler$Worker;

.field c:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lio/reactivex/Scheduler$DisposeTask;->a:Ljava/lang/Runnable;

    .line 571
    iput-object p2, p0, Lio/reactivex/Scheduler$DisposeTask;->b:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 587
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->b:Lio/reactivex/Scheduler$Worker;

    instance-of v0, v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->b:Lio/reactivex/Scheduler$Worker;

    check-cast v0, Lio/reactivex/internal/schedulers/NewThreadWorker;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/NewThreadWorker;->b()V

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->b:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->b:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 576
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 578
    :try_start_0
    iget-object v1, p0, Lio/reactivex/Scheduler$DisposeTask;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    .line 581
    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->c:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 580
    invoke-virtual {p0}, Lio/reactivex/Scheduler$DisposeTask;->dispose()V

    .line 581
    iput-object v0, p0, Lio/reactivex/Scheduler$DisposeTask;->c:Ljava/lang/Thread;

    throw v1
.end method
