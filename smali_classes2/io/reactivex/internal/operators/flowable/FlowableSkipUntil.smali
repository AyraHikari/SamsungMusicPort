.class public final Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 35
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;->c:Lorg/reactivestreams/Publisher;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 39
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;->b:Lio/reactivex/Flowable;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
