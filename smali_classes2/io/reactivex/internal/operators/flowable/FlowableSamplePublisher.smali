.class public final Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Z


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/reactivex/subscribers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 41
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->d:Z

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->b:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->c:Lorg/reactivestreams/Publisher;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->b:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->c:Lorg/reactivestreams/Publisher;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_0
    return-void
.end method
