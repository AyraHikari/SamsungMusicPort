.class public final Lio/reactivex/internal/operators/flowable/FlowableAll;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableAll$AllSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
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
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAll;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableAll$AllSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableAll;->c:Lio/reactivex/functions/Predicate;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableAll$AllSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
