.class final Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/functions/BooleanSupplier;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublisherBufferOverlappingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/functions/BooleanSupplier;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66485ec0ba03436dL


# instance fields
.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TC;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;"
        }
    .end annotation
.end field

.field index:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field produced:J

.field final size:I

.field final skip:I

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 318
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 319
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->size:I

    .line 320
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->skip:I

    .line 321
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 322
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 323
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->buffers:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->cancelled:Z

    .line 356
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 430
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->done:Z

    .line 436
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->produced:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 438
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 440
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->buffers:Ljava/util/ArrayDeque;

    invoke-static {v0, v1, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->a(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 417
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->done:Z

    .line 423
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 425
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->buffers:Ljava/util/ArrayDeque;

    .line 376
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->index:I

    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_1

    .line 382
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "The bufferSupplier returned a null buffer"

    invoke-static {v1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 385
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->cancel()V

    .line 386
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 393
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 395
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->size:I

    if-ne v3, v4, :cond_2

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 398
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->produced:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->produced:J

    .line 402
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 405
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 406
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    :cond_3
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->skip:I

    if-ne v2, p1, :cond_4

    const/4 v2, 0x0

    .line 412
    :cond_4
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->index:I

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 364
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 7

    .line 333
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->buffers:Ljava/util/ArrayDeque;

    move-wide v1, p1

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->a(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->skip:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->b(JJ)J

    move-result-wide p1

    .line 343
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->size:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(JJ)J

    move-result-wide p1

    .line 344
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 347
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->skip:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->b(JJ)J

    move-result-wide p1

    .line 348
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method
