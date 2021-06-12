.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x579a0f4f7e6bd483L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    return-void
.end method

.method drainLoop()V
    .locals 17

    move-object/from16 v0, p0

    .line 216
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    .line 217
    array-length v2, v1

    .line 218
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v5, 0x1

    .line 222
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1
    cmp-long v13, v10, v6

    if-eqz v13, :cond_8

    .line 227
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    if-eqz v13, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    return-void

    .line 232
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    if-eqz v13, :cond_1

    .line 234
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 235
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 239
    :cond_1
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    move-wide v14, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 243
    :goto_3
    array-length v4, v1

    if-ge v10, v4, :cond_5

    .line 244
    aget-object v4, v1, v10

    .line 245
    iget-object v12, v4, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v12, :cond_4

    .line 247
    invoke-interface {v12}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 251
    invoke-interface {v3, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v14

    cmp-long v4, v11, v6

    if-nez v4, :cond_3

    move-wide v10, v11

    goto :goto_4

    :cond_3
    move-wide v14, v11

    const/4 v11, 0x0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    if-eqz v13, :cond_6

    if-eqz v11, :cond_6

    .line 261
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_6
    if-eqz v11, :cond_7

    move-wide v10, v14

    goto :goto_4

    :cond_7
    move-wide v10, v14

    goto :goto_1

    :cond_8
    :goto_4
    cmp-long v4, v10, v6

    if-nez v4, :cond_e

    .line 271
    iget-boolean v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    if-eqz v4, :cond_9

    .line 272
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    return-void

    .line 276
    :cond_9
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v4}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    .line 278
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 279
    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 283
    :cond_a
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v2, :cond_d

    .line 288
    aget-object v13, v1, v12

    .line 290
    iget-object v13, v13, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v13, :cond_c

    .line 291
    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_d
    const/16 v16, 0x1

    :goto_7
    if-eqz v4, :cond_e

    if-eqz v16, :cond_e

    .line 298
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_e
    cmp-long v4, v10, v8

    if-eqz v4, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_f

    .line 304
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 307
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    move-result v4

    if-ne v4, v5, :cond_10

    neg-int v4, v5

    .line 309
    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    move v5, v4

    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 200
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 193
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 148
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 149
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    .line 151
    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object p1

    .line 155
    invoke-interface {p1, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 157
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Queue full?!"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 159
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 166
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 170
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object p1

    .line 172
    invoke-interface {p1, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 173
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 174
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Queue full?!"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 183
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    return-void
.end method
