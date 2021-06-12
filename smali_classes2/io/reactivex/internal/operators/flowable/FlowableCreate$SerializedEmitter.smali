.class final Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableEmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43c4fdd95fbcd5c6L


# instance fields
.field volatile done:Z

.field final emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    .line 99
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 100
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->drainLoop()V

    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 8

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    .line 169
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 170
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    return-void

    .line 180
    :cond_1
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 181
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 182
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 186
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    .line 188
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 193
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onComplete()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    .line 204
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 201
    :cond_5
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    .line 158
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->drain()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 131
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 109
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->get()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onNext(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 119
    monitor-enter v0

    .line 120
    :try_start_0
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 126
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->drainLoop()V

    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public requested()J
    .locals 2

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->requested()J

    move-result-wide v0

    return-wide v0
.end method

.method public serialize()Lio/reactivex/FlowableEmitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/FlowableEmitter<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->emitter:Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 142
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->done:Z

    .line 146
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;->drain()V

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method
