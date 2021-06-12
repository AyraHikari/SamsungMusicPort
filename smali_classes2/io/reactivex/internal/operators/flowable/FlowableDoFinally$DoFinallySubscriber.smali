.class final Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDoFinally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoFinallySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3907ba0b13897e3dL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onFinally:Lio/reactivex/functions/Action;

.field qs:Lio/reactivex/internal/fuseable/QueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field

.field syncFused:Z

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->onFinally:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->runFinally()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->runFinally()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->runFinally()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 74
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 78
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_1
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->syncFused:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->runFinally()V

    :cond_0
    return-object v0
.end method

.method public request(J)V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method public requestFusion(I)I
    .locals 3

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 114
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->syncFused:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method runFinally()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;->onFinally:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 149
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
