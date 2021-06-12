.class final Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field private static final serialVersionUID:J = -0x20d478356927aeadL


# instance fields
.field final bufferSize:I

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

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final size:J

.field upstream:Lorg/reactivestreams/Subscription;

.field window:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;JI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 77
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->size:J

    .line 78
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 133
    invoke-interface {v0}, Lorg/reactivestreams/Processor;->onComplete()V

    .line 136
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 122
    invoke-interface {v0, p1}, Lorg/reactivestreams/Processor;->onError(Ljava/lang/Throwable;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

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

    .line 92
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->index:J

    .line 94
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->getAndIncrement()I

    .line 98
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->bufferSize:I

    invoke-static {v2, p0}, Lio/reactivex/processors/UnicastProcessor;->a(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v2

    .line 99
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 101
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 106
    invoke-virtual {v2, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 108
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->size:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_1

    .line 109
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->index:J

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 111
    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    goto :goto_0

    .line 113
    :cond_1
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->index:J

    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 86
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 2

    .line 141
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->size:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->b(JJ)J

    move-result-wide p1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method
