.class final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowBoundaryMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final NEXT_WINDOW:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1efd47eb1fc2a3a0L


# instance fields
.field final boundarySubscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber<",
            "TT;TB;>;>;"
        }
    .end annotation
.end field

.field final capacityHint:I

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final other:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/MpscLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/MpscLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

.field upstream:Lorg/reactivestreams/Subscription;

.field window:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final windows:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;)V

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 88
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->capacityHint:I

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->boundarySubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance p1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 92
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->other:Ljava/util/concurrent/Callable;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->disposeBoundary()V

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method disposeBoundary()V
    .locals 2

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->boundarySubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 151
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 152
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 12

    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 193
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 194
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 195
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->emitted:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 200
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 201
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 202
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    return-void

    .line 206
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 208
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    if-eqz v9, :cond_4

    .line 210
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 211
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 212
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 214
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 215
    invoke-virtual {v7, v1}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 217
    :cond_3
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 221
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 226
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 229
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 230
    invoke-virtual {v7}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 232
    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 235
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 236
    invoke-virtual {v7, v1}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 238
    :cond_8
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v11, :cond_a

    .line 291
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->emitted:J

    neg-int v6, v6

    .line 292
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 247
    :cond_a
    sget-object v9, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    .line 248
    invoke-virtual {v7, v10}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    .line 253
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 254
    invoke-virtual {v7}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 257
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v7, v3, v9

    if-eqz v7, :cond_d

    .line 259
    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->capacityHint:I

    invoke-static {v7, p0}, Lio/reactivex/processors/UnicastProcessor;->a(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v7

    .line 260
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 261
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 266
    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->other:Ljava/util/concurrent/Callable;

    invoke-interface {v9}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "The other Callable returned a null Publisher"

    invoke-static {v9, v10}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    new-instance v10, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;

    invoke-direct {v10, p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;)V

    .line 276
    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->boundarySubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v8, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 277
    invoke-interface {v9, v10}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 280
    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    .line 268
    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 269
    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 270
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    goto/16 :goto_0

    .line 283
    :cond_d
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v7}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 284
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->disposeBoundary()V

    .line 285
    new-instance v7, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 286
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    goto/16 :goto_0
.end method

.method innerComplete()V
    .locals 1

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    .line 182
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    .line 173
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method innerNext(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->boundarySubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->disposeBoundary()V

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->disposeBoundary()V

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->done:Z

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    goto :goto_0

    .line 122
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

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->drain()V

    const-wide v0, 0x7fffffffffffffffL

    .line 105
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public run()V
    .locals 1

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method
