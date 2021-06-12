.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
.super Lio/reactivex/Flowable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final b:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

.field static final c:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:I

.field final h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:I

.field volatile l:Z

.field m:Ljava/lang/Throwable;

.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 130
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->b:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 133
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->c:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1

    .line 157
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 158
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 159
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->g:I

    .line 160
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->h:Z

    .line 161
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 163
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->b:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 8

    .line 466
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->c:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 467
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 468
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 296
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V

    .line 297
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 298
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->b(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 245
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 246
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->c:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 249
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 251
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 252
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    aput-object p1, v3, v1

    .line 254
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 263
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 264
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 271
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

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 282
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->b:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 284
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 285
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 286
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 288
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 24

    move-object/from16 v1, p0

    .line 315
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 323
    iget v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->n:I

    .line 324
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->g:I

    .line 325
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->k:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 326
    :goto_0
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 328
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    move v9, v2

    const/4 v2, 0x1

    .line 333
    :goto_1
    array-length v10, v8

    if-eqz v0, :cond_16

    if-eqz v10, :cond_16

    .line 338
    array-length v11, v8

    const-wide v12, 0x7fffffffffffffffL

    move v14, v10

    move-wide v15, v12

    const/4 v10, 0x0

    :goto_2
    const-wide/high16 v17, -0x8000000000000000L

    if-ge v10, v11, :cond_4

    aget-object v5, v8, v10

    .line 339
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v19

    move-object/from16 v21, v7

    iget-wide v6, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    sub-long v19, v19, v6

    cmp-long v5, v19, v17

    if-eqz v5, :cond_2

    cmp-long v5, v15, v19

    if-lez v5, :cond_3

    move-wide/from16 v15, v19

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v21

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v21, v7

    const-wide/16 v5, 0x0

    if-nez v14, :cond_5

    move-wide v15, v5

    :cond_5
    :goto_4
    cmp-long v7, v15, v5

    if-eqz v7, :cond_12

    .line 354
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->isDisposed()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 355
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 359
    :cond_6
    iget-boolean v10, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    if-eqz v10, :cond_7

    .line 361
    iget-boolean v11, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->h:Z

    if-nez v11, :cond_7

    .line 362
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    if-eqz v11, :cond_7

    .line 364
    invoke-virtual {v1, v11}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Ljava/lang/Throwable;)V

    return-void

    .line 372
    :cond_7
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    if-eqz v10, :cond_a

    if-eqz v14, :cond_a

    .line 383
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 385
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 387
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f()V

    :goto_6
    return-void

    :cond_a
    if-eqz v14, :cond_b

    goto :goto_a

    .line 398
    :cond_b
    array-length v7, v8

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_7
    const-wide/16 v19, 0x1

    if-ge v10, v7, :cond_e

    aget-object v5, v8, v10

    .line 399
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v22

    cmp-long v6, v22, v17

    if-eqz v6, :cond_d

    cmp-long v6, v22, v12

    if-eqz v6, :cond_c

    .line 402
    iget-wide v12, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    add-long v12, v12, v19

    iput-wide v12, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    .line 404
    :cond_c
    iget-object v5, v5, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    const/4 v14, 0x1

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0x0

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    sub-long v15, v15, v19

    if-eqz v4, :cond_f

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_f

    .line 414
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Subscription;

    int-to-long v6, v3

    invoke-interface {v5, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v9, 0x0

    .line 417
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    if-nez v14, :cond_11

    if-eq v5, v8, :cond_10

    goto :goto_9

    :cond_10
    const-wide/16 v5, 0x0

    const-wide v12, 0x7fffffffffffffffL

    goto/16 :goto_4

    :cond_11
    :goto_9
    move-object v8, v5

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 374
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 375
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 376
    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_12
    :goto_a
    if-nez v7, :cond_17

    .line 425
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 426
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 430
    :cond_13
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    if-eqz v5, :cond_14

    .line 432
    iget-boolean v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->h:Z

    if-nez v6, :cond_14

    .line 433
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    if-eqz v6, :cond_14

    .line 435
    invoke-virtual {v1, v6}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_14
    if-eqz v5, :cond_17

    .line 440
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 441
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_15

    .line 443
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 445
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f()V

    :goto_b
    return-void

    :cond_16
    move-object/from16 v21, v7

    .line 452
    :cond_17
    iput v9, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->n:I

    .line 453
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    if-nez v0, :cond_19

    .line 458
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 460
    :cond_19
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    :goto_c
    move-object/from16 v7, v21

    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method f()V
    .locals 8

    .line 475
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->c:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 476
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 477
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->m:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    .line 232
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 218
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x3

    .line 173
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->k:I

    .line 176
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 177
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->l:Z

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 182
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->k:I

    .line 183
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 184
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/QueueDrainHelper;->a(Lorg/reactivestreams/Subscription;I)V

    return-void

    .line 189
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f:I

    invoke-static {v0}, Lio/reactivex/internal/util/QueueDrainHelper;->a(I)Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->j:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 191
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->f:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/QueueDrainHelper;->a(Lorg/reactivestreams/Subscription;I)V

    :cond_2
    return-void
.end method
