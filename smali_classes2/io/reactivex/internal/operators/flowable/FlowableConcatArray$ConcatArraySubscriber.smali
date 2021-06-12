.class final Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatArraySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71382f6d553150acL


# instance fields
.field final delayError:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field produced:J

.field final sources:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>([Lorg/reactivestreams/Publisher;ZLorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;Z",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 63
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    .line 65
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 9

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    .line 99
    array-length v1, v0

    .line 100
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 107
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_1
    return-void

    .line 117
    :cond_3
    aget-object v4, v0, v2

    if-nez v4, :cond_6

    .line 120
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "A Publisher entry is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v5, :cond_5

    .line 122
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v5, :cond_4

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    sub-int v6, v1, v2

    add-int/2addr v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    iput-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    .line 127
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 135
    :cond_6
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    .line 137
    iput-wide v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    .line 138
    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced(J)V

    .line 140
    :cond_7
    invoke-interface {v4, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v2, v2, 0x1

    .line 143
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    .line 145
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 82
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    array-length v1, v1

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    .line 88
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->onComplete()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
