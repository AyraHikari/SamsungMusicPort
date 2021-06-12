.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OutputCanceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TR;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "*>;"
        }
    .end annotation
.end field

.field c:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "*>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->a:Lorg/reactivestreams/Subscriber;

    .line 86
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->c:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 106
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->c:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->c:Lorg/reactivestreams/Subscription;

    .line 94
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->c:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
