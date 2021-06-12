.class public final Lio/reactivex/internal/operators/flowable/FlowableBuffer;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:I

.field final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;)V"
        }
    .end annotation

    .line 46
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->c:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->d:I

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->c:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 48
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->d:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->c:I

    if-le v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->c:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->d:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->c:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->d:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
