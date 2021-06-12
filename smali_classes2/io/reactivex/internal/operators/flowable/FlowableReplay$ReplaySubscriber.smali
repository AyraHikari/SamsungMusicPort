.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

.field private static final serialVersionUID:J = 0x6442c5ce7145e104L


# instance fields
.field final buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final management:Ljava/util/concurrent/atomic/AtomicInteger;

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 244
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 246
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    return-void
.end method

.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 265
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    .line 266
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->management:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 267
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 302
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 305
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 309
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 310
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 311
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    aput-object p1, v3, v1

    .line 314
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 297
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public dispose()V
    .locals 2

    .line 279
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 285
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 273
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method manageRequests()V
    .locals 11

    .line 427
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->management:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 433
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 437
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 439
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxChildRequested:J

    .line 442
    array-length v4, v1

    const/4 v5, 0x0

    move-wide v6, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v8, v1, v5

    .line 443
    iget-object v8, v8, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 446
    :cond_3
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 447
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscription;

    sub-long v2, v6, v2

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-eqz v10, :cond_7

    .line 451
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxChildRequested:J

    if-eqz v1, :cond_5

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    .line 454
    iput-wide v8, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxUpstreamRequested:J

    add-long/2addr v4, v2

    .line 455
    invoke-interface {v1, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    .line 457
    :cond_4
    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    add-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-gez v1, :cond_6

    const-wide v4, 0x7fffffffffffffffL

    .line 465
    :cond_6
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_1

    :cond_7
    cmp-long v2, v4, v8

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 470
    iput-wide v8, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 472
    invoke-interface {v1, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 475
    :cond_8
    :goto_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->management:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 414
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->done:Z

    .line 416
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->complete()V

    .line 417
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 418
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v4, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 398
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->done:Z

    .line 400
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 401
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 402
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 385
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 387
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 388
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4

    .line 375
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->manageRequests()V

    .line 377
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 378
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 331
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 332
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 341
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    .line 355
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 358
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    .line 360
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 362
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 365
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
