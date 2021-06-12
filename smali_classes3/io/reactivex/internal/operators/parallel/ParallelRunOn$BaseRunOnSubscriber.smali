.class abstract Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseRunOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ffc3440018b78e6L


# instance fields
.field volatile cancelled:Z

.field consumed:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final limit:I

.field final prefetch:I

.field final queue:Lio/reactivex/internal/queue/SpscArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field upstream:Lorg/reactivestreams/Subscription;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 136
    iput p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->prefetch:I

    .line 137
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    shr-int/lit8 p2, p1, 0x2

    sub-int/2addr p1, p2

    .line 138
    iput p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->limit:I

    .line 139
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->schedule()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 161
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->schedule()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 149
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->schedule()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 177
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->schedule()V

    :cond_0
    return-void
.end method

.method final schedule()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
