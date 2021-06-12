.class final Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final c:Lio/reactivex/disposables/CompositeDisposable;

.field private final d:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final e:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 199
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->e:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 200
    new-instance p1, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->b:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    .line 201
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->c:Lio/reactivex/disposables/CompositeDisposable;

    .line 202
    new-instance p1, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->d:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    .line 203
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->d:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->b:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 204
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->d:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 6

    .line 223
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->a:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 227
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->e:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->b:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6

    .line 233
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->a:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 237
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->e:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->c:Lio/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->a:Z

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->d:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->a:Z

    return v0
.end method
