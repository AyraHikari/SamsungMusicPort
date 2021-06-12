.class public final Lio/reactivex/internal/operators/flowable/FlowableCount;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
