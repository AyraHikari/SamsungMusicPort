.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/internal/subscribers/InnerQueuedSubscriberSupport;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapEagerDelayErrorSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/internal/subscribers/InnerQueuedSubscriberSupport<",
        "TR;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b0ddc635a9c154fL


# instance fields
.field volatile cancelled:Z

.field volatile current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errorMode:Lio/reactivex/internal/util/ErrorMode;

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final prefetch:I

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 93
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 94
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->maxConcurrency:I

    .line 95
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->prefetch:I

    .line 96
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    .line 97
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->subscribers:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 98
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 99
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drainAndCancel()V

    return-void
.end method

.method cancelAll()V
    .locals 1

    .line 181
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->subscribers:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 20

    move-object/from16 v1, p0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 231
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 232
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    const/4 v5, 0x1

    .line 235
    :cond_1
    :goto_0
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    if-nez v0, :cond_5

    .line 240
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq v3, v0, :cond_2

    .line 241
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    .line 245
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 250
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->done:Z

    .line 252
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->subscribers:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    if-eqz v0, :cond_4

    if-nez v8, :cond_4

    .line 255
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 259
    :cond_3
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_1
    return-void

    :cond_4
    if-eqz v8, :cond_6

    .line 265
    iput-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    goto :goto_2

    :cond_5
    move-object v8, v0

    :cond_6
    :goto_2
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_10

    .line 272
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v12

    if-eqz v12, :cond_10

    move/from16 v16, v5

    move-wide v13, v9

    :goto_3
    const-wide/16 v4, 0x1

    cmp-long v17, v13, v6

    if-eqz v17, :cond_c

    .line 275
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    if-eqz v0, :cond_7

    .line 276
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    return-void

    .line 280
    :cond_7
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v0, :cond_8

    .line 281
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 283
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 284
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    .line 287
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 292
    :cond_8
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v0

    .line 297
    :try_start_0
    invoke-interface {v12}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v15, :cond_9

    const/16 v19, 0x1

    goto :goto_4

    :cond_9
    const/16 v19, 0x0

    :goto_4
    if-eqz v0, :cond_a

    if-eqz v19, :cond_a

    .line 311
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 312
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    move-object v8, v11

    const/16 v18, 0x1

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_b

    goto :goto_5

    .line 321
    :cond_b
    invoke-interface {v2, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v4

    .line 325
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->requestOne()V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 299
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 300
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 301
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    .line 303
    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_5
    const/16 v18, 0x0

    :goto_6
    if-nez v17, :cond_f

    .line 329
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    if-eqz v0, :cond_d

    .line 330
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    return-void

    .line 334
    :cond_d
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v0, :cond_e

    .line 335
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    .line 337
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 338
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    .line 341
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 346
    :cond_e
    invoke-virtual {v8}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->isDone()Z

    move-result v0

    .line 348
    invoke-interface {v12}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v12

    if-eqz v0, :cond_f

    if-eqz v12, :cond_f

    .line 352
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->current:Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    .line 353
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    move-object v0, v11

    const/16 v18, 0x1

    goto :goto_7

    :cond_f
    move-object v0, v8

    goto :goto_7

    :cond_10
    move/from16 v16, v5

    move-object v0, v8

    move-wide v13, v9

    const/16 v18, 0x0

    :goto_7
    cmp-long v4, v13, v9

    if-eqz v4, :cond_11

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v6, v4

    if-eqz v4, :cond_11

    .line 361
    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_11
    if-eqz v18, :cond_12

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_12
    move/from16 v4, v16

    neg-int v4, v4

    .line 368
    invoke-virtual {v1, v4}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method drainAndCancel()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelAll()V

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public innerComplete(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;)V"
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    return-void
.end method

.method public innerError(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->setDone()V

    .line 208
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, p2, :cond_0

    .line 209
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerNext(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/InnerQueuedSubscriber<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 200
    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->innerError(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->done:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->done:Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    new-instance v0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->prefetch:I

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;-><init>(Lio/reactivex/internal/subscribers/InnerQueuedSubscriberSupport;I)V

    .line 129
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    if-eqz v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->subscribers:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 137
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->cancelled:Z

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->cancel()V

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drainAndCancel()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 123
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 109
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->maxConcurrency:I

    int-to-long v0, v0

    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_1
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 188
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;->drain()V

    :cond_0
    return-void
.end method
