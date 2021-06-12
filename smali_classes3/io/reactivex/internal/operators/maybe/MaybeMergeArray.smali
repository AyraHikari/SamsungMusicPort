.class public final Lio/reactivex/internal/operators/maybe/MaybeMergeArray;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeMergeArray$ClqSimpleQueue;,
        Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;,
        Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;,
        Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;
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
.field final b:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;->b:[Lio/reactivex/MaybeSource;

    .line 46
    array-length v1, v0

    .line 50
    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;->a()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 51
    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;-><init>(I)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$ClqSimpleQueue;

    invoke-direct {v2}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$ClqSimpleQueue;-><init>()V

    .line 55
    :goto_0
    new-instance v3, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;

    invoke-direct {v3, p1, v1, v2}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;)V

    .line 57
    invoke-interface {p1, v3}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 59
    iget-object p1, v3, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 62
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    invoke-interface {v4, v3}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    return-void
.end method
