.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;
.super Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapDelayed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28e181349daae86aL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final veryEnd:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;-><init>(Lio/reactivex/functions/Function;I)V

    .line 391
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    .line 392
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    .line 439
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->cancel()V

    .line 440
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 6

    .line 446
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    .line 449
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    if-eqz v0, :cond_1

    return-void

    .line 453
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    if-nez v0, :cond_b

    .line 455
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    if-eqz v0, :cond_2

    .line 457
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    if-nez v1, :cond_2

    .line 458
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 460
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 468
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 480
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 482
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 484
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_b

    .line 493
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Publisher;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->sourceMode:I

    if-eq v1, v3, :cond_7

    .line 504
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    add-int/2addr v1, v3

    .line 505
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->limit:I

    if-ne v1, v4, :cond_6

    .line 506
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    .line 507
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 509
    :cond_6
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    .line 513
    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_a

    .line 515
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 520
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_8

    goto :goto_0

    .line 533
    :cond_8
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 534
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 537
    :cond_9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 538
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;-><init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->setSubscription(Lorg/reactivestreams/Subscription;)V

    goto :goto_4

    :catch_0
    move-exception v0

    .line 522
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 523
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 524
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 525
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 541
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 542
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 495
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 497
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 498
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 499
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 470
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 471
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 472
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 473
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 546
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    if-nez p1, :cond_0

    .line 419
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    const/4 p1, 0x1

    .line 420
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    :cond_0
    const/4 p1, 0x0

    .line 422
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 423
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->drain()V

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    .line 404
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->drain()V

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 431
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->request(J)V

    return-void
.end method

.method subscribeActual()V
    .locals 1

    .line 397
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
