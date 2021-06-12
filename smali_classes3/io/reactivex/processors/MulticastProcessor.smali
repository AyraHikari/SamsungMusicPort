.class public final Lio/reactivex/processors/MulticastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final n:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

.field static final o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:I

.field final g:I

.field final h:Z

.field volatile i:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile j:Z

.field volatile k:Ljava/lang/Throwable;

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    new-array v1, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v1, Lio/reactivex/processors/MulticastProcessor;->n:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 161
    new-array v0, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v0, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    return-void
.end method


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 367
    new-instance v0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V

    .line 368
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 369
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->a(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->b(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->f()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/processors/MulticastProcessor;->h:Z

    if-nez v0, :cond_3

    .line 377
    :cond_2
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->k:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 379
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 383
    :cond_3
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_0
    return-void
.end method

.method a(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 389
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 390
    sget-object v1, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 393
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 395
    new-array v3, v3, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 396
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    aput-object p1, v3, v1

    .line 398
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 408
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 415
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 426
    iget-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->h:Z

    if-eqz v1, :cond_5

    .line 427
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 429
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->n:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v1, -0x1

    .line 438
    new-array v5, v5, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 439
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 440
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    return-void
.end method

.method f()V
    .locals 21

    move-object/from16 v1, p0

    .line 450
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v2, v1, Lio/reactivex/processors/MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 456
    iget v0, v1, Lio/reactivex/processors/MulticastProcessor;->l:I

    .line 457
    iget v3, v1, Lio/reactivex/processors/MulticastProcessor;->g:I

    .line 458
    iget v4, v1, Lio/reactivex/processors/MulticastProcessor;->m:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 463
    :cond_1
    :goto_0
    iget-object v7, v1, Lio/reactivex/processors/MulticastProcessor;->i:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v7, :cond_15

    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 467
    array-length v9, v8

    if-eqz v9, :cond_15

    .line 472
    array-length v9, v8

    const-wide/16 v10, -0x1

    move-wide v14, v10

    const/4 v13, 0x0

    :goto_1
    const-wide/16 v16, 0x0

    if-ge v13, v9, :cond_4

    aget-object v12, v8, v13

    .line 473
    invoke-virtual {v12}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v18

    cmp-long v16, v18, v16

    if-ltz v16, :cond_3

    cmp-long v16, v14, v10

    if-nez v16, :cond_2

    .line 476
    iget-wide v14, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    sub-long v18, v18, v14

    move-wide/from16 v14, v18

    goto :goto_2

    .line 478
    :cond_2
    iget-wide v10, v12, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v14, v10

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, -0x1

    goto :goto_1

    :cond_4
    move v9, v0

    :cond_5
    :goto_3
    cmp-long v10, v14, v16

    if-lez v10, :cond_f

    .line 484
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 486
    sget-object v11, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v0, v11, :cond_6

    .line 487
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_6
    if-eq v8, v0, :cond_7

    goto/16 :goto_a

    .line 495
    :cond_7
    iget-boolean v0, v1, Lio/reactivex/processors/MulticastProcessor;->j:Z

    .line 500
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v11

    move v11, v0

    move-object/from16 v0, v20

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 502
    invoke-static {v11}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 503
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x0

    .line 506
    iput-object v11, v1, Lio/reactivex/processors/MulticastProcessor;->k:Ljava/lang/Throwable;

    .line 507
    iput-boolean v5, v1, Lio/reactivex/processors/MulticastProcessor;->j:Z

    const/4 v11, 0x1

    :goto_4
    if-nez v0, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    .line 512
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->k:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 514
    sget-object v3, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 515
    invoke-virtual {v5, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 518
    :cond_9
    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    .line 519
    invoke-virtual {v4}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    if-eqz v12, :cond_c

    goto :goto_9

    .line 529
    :cond_c
    array-length v10, v8

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_d

    aget-object v12, v8, v11

    .line 530
    invoke-virtual {v12, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x1

    sub-long/2addr v14, v10

    if-eq v4, v5, :cond_5

    add-int/lit8 v12, v9, 0x1

    if-ne v12, v3, :cond_e

    .line 538
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    int-to-long v9, v3

    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    move v9, v12

    goto/16 :goto_3

    :cond_f
    :goto_9
    if-nez v10, :cond_14

    .line 544
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 546
    sget-object v10, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v0, v10, :cond_10

    .line 547
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_10
    if-eq v8, v0, :cond_11

    :goto_a
    move v0, v9

    goto/16 :goto_0

    .line 555
    :cond_11
    iget-boolean v0, v1, Lio/reactivex/processors/MulticastProcessor;->j:Z

    if-eqz v0, :cond_14

    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 556
    iget-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->k:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    .line 558
    sget-object v3, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_13

    aget-object v5, v2, v4

    .line 559
    invoke-virtual {v5, v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 562
    :cond_12
    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->o:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_13

    aget-object v4, v0, v3

    .line 563
    invoke-virtual {v4}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_13
    return-void

    :cond_14
    move v0, v9

    .line 572
    :cond_15
    iget-object v7, v1, Lio/reactivex/processors/MulticastProcessor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 339
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iput-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->j:Z

    .line 341
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->f()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 327
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->k:Ljava/lang/Throwable;

    .line 330
    iput-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->j:Z

    .line 331
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->f()V

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->m:I

    if-nez v0, :cond_1

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 295
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->i:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 297
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 298
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->f()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 261
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x3

    .line 266
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 268
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->m:I

    .line 269
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->i:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 270
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->j:Z

    .line 271
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 275
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->m:I

    .line 276
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->i:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 278
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 283
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->f:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->i:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 285
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method
