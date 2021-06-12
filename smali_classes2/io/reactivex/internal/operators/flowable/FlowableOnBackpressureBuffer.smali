.class public final Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber;
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
.field final c:I

.field final d:Z

.field final e:Z

.field final f:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;IZZLio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;IZZ",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 38
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->c:I

    .line 39
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->d:Z

    .line 40
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->e:Z

    .line 41
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->f:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->b:Lio/reactivex/Flowable;

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->d:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->e:Z

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;->f:Lio/reactivex/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IZZLio/reactivex/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
