.class public final Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;
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
.field final c:Lio/reactivex/CompletableSource;


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

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;->c:Lio/reactivex/CompletableSource;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
