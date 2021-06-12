.class abstract Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseConcatMapSubscriber"
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
        "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport<",
        "TR;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30bac63fcc0431bbL


# instance fields
.field volatile active:Z

.field volatile cancelled:Z

.field consumed:I

.field volatile done:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<",
            "TR;>;"
        }
    .end annotation
.end field

.field final limit:I

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

.field final prefetch:I

.field queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 103
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->prefetch:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 104
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->limit:I

    .line 105
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;-><init>(Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    .line 106
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method abstract drain()V
.end method

.method public final innerComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->active:Z

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->drain()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->done:Z

    .line 165
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->sourceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 155
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->drain()V

    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 114
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 115
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x7

    .line 116
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->sourceMode:I

    .line 119
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 120
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->done:Z

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->subscribeActual()V

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->drain()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 128
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->sourceMode:I

    .line 129
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->subscribeActual()V

    .line 133
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 138
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->subscribeActual()V

    .line 142
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method

.method abstract subscribeActual()V
.end method
