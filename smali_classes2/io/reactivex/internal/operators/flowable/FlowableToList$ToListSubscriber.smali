.class final Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableToList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TU;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70e2558c7ced9df0L


# instance fields
.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 89
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->value:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 64
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
