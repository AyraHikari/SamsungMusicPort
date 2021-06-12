.class final Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableElementAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ElementAtSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x386f7dd17fceb6ddL


# instance fields
.field count:J

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field done:Z

.field final errorOnFewer:Z

.field final index:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 57
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->index:J

    .line 58
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->defaultValue:Ljava/lang/Object;

    .line 59
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->errorOnFewer:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 115
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->defaultValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->errorOnFewer:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->complete(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->count:J

    .line 77
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->index:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->done:Z

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->complete(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 83
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->count:J

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 67
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
