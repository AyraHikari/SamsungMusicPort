.class final Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrampolineWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 96
    :cond_0
    new-instance v0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    .line 97
    iget-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 103
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Z

    if-eqz p2, :cond_2

    .line 104
    iget-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 105
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 107
    :cond_2
    iget-object p2, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    if-nez p2, :cond_3

    .line 115
    iget-object p2, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 121
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 111
    :cond_3
    iget-boolean p3, p2, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->d:Z

    if-nez p3, :cond_1

    .line 112
    iget-object p2, p2, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->a:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 124
    :cond_4
    new-instance p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;-><init>(Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;)V

    invoke-static {p1}, Lio/reactivex/disposables/Disposables;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 89
    new-instance p2, Lio/reactivex/internal/schedulers/TrampolineScheduler$SleepingRunnable;

    invoke-direct {p2, p1, p0, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$SleepingRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;J)V

    invoke-virtual {p0, p2, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Z

    return v0
.end method
