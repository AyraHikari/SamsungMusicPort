.class public final Lio/reactivex/internal/operators/flowable/FlowableReduce;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


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

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce;->c:Lio/reactivex/functions/BiFunction;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
