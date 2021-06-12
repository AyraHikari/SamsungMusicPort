.class public Lio/reactivex/subscribers/TestSubscriber;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/subscribers/TestSubscriber<",
        "TT;>;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field private final i:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private m:Lio/reactivex/internal/fuseable/QueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->j:Z

    .line 268
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 282
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->cancel()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->j:Z

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 243
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    .line 245
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->e:Ljava/lang/Thread;

    .line 251
    iget-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->d:J

    .line 253
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/subscribers/TestSubscriber;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 221
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    .line 223
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->e:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    .line 232
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    .line 191
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->e:Ljava/lang/Thread;

    .line 197
    iget v0, p0, Lio/reactivex/subscribers/TestSubscriber;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 199
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->m:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->m:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->cancel()V

    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    .line 213
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->e:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 139
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 145
    :cond_2
    iget v0, p0, Lio/reactivex/subscribers/TestSubscriber;->g:I

    if-eqz v0, :cond_4

    .line 146
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_4

    .line 147
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    iput-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->m:Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 149
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->m:Lio/reactivex/internal/fuseable/QueueSubscription;

    iget v1, p0, Lio/reactivex/subscribers/TestSubscriber;->g:I

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v0

    .line 150
    iput v0, p0, Lio/reactivex/subscribers/TestSubscriber;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 153
    iput-boolean v1, p0, Lio/reactivex/subscribers/TestSubscriber;->f:Z

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->e:Ljava/lang/Thread;

    .line 157
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/subscribers/TestSubscriber;->m:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 158
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    iget-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/subscribers/TestSubscriber;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 163
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 172
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    .line 174
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 177
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/subscribers/TestSubscriber;->a()V

    return-void
.end method

.method public final request(J)V
    .locals 2

    .line 261
    iget-object v0, p0, Lio/reactivex/subscribers/TestSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/subscribers/TestSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
