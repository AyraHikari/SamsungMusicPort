.class abstract Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 160
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->b:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method call(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 166
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerWhen;->c:Lio/reactivex/disposables/Disposable;

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerWhen;->b:Lio/reactivex/disposables/Disposable;

    if-eq v0, v1, :cond_1

    return-void

    .line 177
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 179
    sget-object p2, Lio/reactivex/internal/schedulers/SchedulerWhen;->b:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 184
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method protected abstract callActual(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)Lio/reactivex/disposables/Disposable;
.end method

.method public dispose()V
    .locals 3

    .line 199
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->c:Lio/reactivex/disposables/Disposable;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 202
    sget-object v2, Lio/reactivex/internal/schedulers/SchedulerWhen;->c:Lio/reactivex/disposables/Disposable;

    if-ne v1, v2, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->b:Lio/reactivex/disposables/Disposable;

    if-eq v1, v0, :cond_2

    .line 210
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method
