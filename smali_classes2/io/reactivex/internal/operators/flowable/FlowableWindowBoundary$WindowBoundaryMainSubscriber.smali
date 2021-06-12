.class final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;
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
.field static final NEXT_WINDOW:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1efd47eb1fc2a3a0L


# instance fields
.field final boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber<",
            "TT;TB;>;"
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

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 86
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->capacityHint:I

    .line 87
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance p1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 91
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->dispose()V

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method drain()V
    .locals 12

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 176
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 177
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 178
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->emitted:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 183
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 184
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 185
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    return-void

    .line 189
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 191
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    if-eqz v9, :cond_4

    .line 193
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 194
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 195
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 197
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 198
    invoke-virtual {v7, v1}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 200
    :cond_3
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 204
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

    .line 209
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 212
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 213
    invoke-virtual {v7}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 215
    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 218
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 219
    invoke-virtual {v7, v1}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 221
    :cond_8
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v11, :cond_a

    .line 257
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->emitted:J

    neg-int v6, v6

    .line 258
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 230
    :cond_a
    sget-object v9, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    .line 231
    invoke-virtual {v7, v10}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    .line 236
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 237
    invoke-virtual {v7}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 240
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 241
    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->capacityHint:I

    invoke-static {v7, p0}, Lio/reactivex/processors/UnicastProcessor;->a(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v7

    .line 242
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 243
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 245
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-eqz v8, :cond_d

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 247
    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :cond_d
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 250
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->dispose()V

    .line 251
    new-instance v7, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 252
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    goto/16 :goto_0
.end method

.method innerComplete()V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    .line 165
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method innerNext()V
    .locals 2

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->dispose()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->dispose()V

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->done:Z

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    goto :goto_0

    .line 114
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

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->drain()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
