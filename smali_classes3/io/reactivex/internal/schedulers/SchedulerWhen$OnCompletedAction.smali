.class Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnCompletedAction"
.end annotation


# instance fields
.field final a:Lio/reactivex/CompletableObserver;

.field final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->b:Ljava/lang/Runnable;

    .line 253
    iput-object p2, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->a:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v1}, Lio/reactivex/CompletableObserver;->onComplete()V

    throw v0
.end method
