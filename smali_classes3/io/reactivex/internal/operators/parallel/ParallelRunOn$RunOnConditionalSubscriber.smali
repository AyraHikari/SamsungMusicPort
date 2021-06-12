.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    .line 335
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 345
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 352
    iget v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    .line 353
    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    .line 354
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 355
    iget v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 359
    :cond_0
    :goto_0
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_1
    :goto_1
    cmp-long v13, v11, v7

    if-eqz v13, :cond_8

    .line 363
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    if-eqz v14, :cond_2

    .line 364
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    return-void

    .line 368
    :cond_2
    iget-boolean v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    if-eqz v14, :cond_3

    .line 371
    iget-object v15, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v15, :cond_3

    .line 373
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 375
    invoke-interface {v3, v15}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 377
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 382
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    :goto_2
    if-eqz v14, :cond_5

    if-eqz v17, :cond_5

    .line 387
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 389
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_5
    if-eqz v17, :cond_6

    goto :goto_3

    .line 397
    :cond_6
    invoke-interface {v3, v15}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    :cond_7
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    .line 404
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v14, v1

    invoke-interface {v13, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    :goto_3
    if-nez v13, :cond_b

    .line 409
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->cancelled:Z

    if-eqz v13, :cond_9

    .line 410
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    return-void

    .line 414
    :cond_9
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->done:Z

    if-eqz v13, :cond_b

    .line 415
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v13, :cond_a

    .line 417
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 419
    invoke-interface {v3, v13}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 421
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 424
    :cond_a
    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 425
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 427
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_b
    cmp-long v9, v11, v9

    if-eqz v9, :cond_c

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-eqz v7, :cond_c

    .line 434
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 437
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->get()I

    move-result v7

    if-ne v7, v6, :cond_d

    .line 439
    iput v1, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->consumed:I

    neg-int v6, v6

    .line 440
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_d
    move v6, v7

    goto/16 :goto_0
.end method
