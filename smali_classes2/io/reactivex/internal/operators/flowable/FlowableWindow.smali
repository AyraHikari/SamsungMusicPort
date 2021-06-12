.class public final Lio/reactivex/internal/operators/flowable/FlowableWindow;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Lio/reactivex/Flowable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:I


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->b:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JI)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->b:Lio/reactivex/Flowable;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->b:Lio/reactivex/Flowable;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
