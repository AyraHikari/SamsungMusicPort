.class public final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->d:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->e:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;-><init>(IZ)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->c:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "selector returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V

    .line 72
    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->b:Lio/reactivex/Flowable;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void

    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 66
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
