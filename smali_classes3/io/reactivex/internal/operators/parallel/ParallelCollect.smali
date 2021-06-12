.class public final Lio/reactivex/internal/operators/parallel/ParallelCollect;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TC;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "-TC;-TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a()I
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect;->a:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->a()I

    move-result v0

    return v0
.end method

.method public a([Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelCollect;->b([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    array-length v0, p1

    .line 57
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 64
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The initialSupplier returned a null value"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;

    aget-object v5, p1, v2

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect;->c:Lio/reactivex/functions/BiConsumer;

    invoke-direct {v4, v5, v3, v6}, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/parallel/ParallelCollect;->a([Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;)V

    return-void

    .line 74
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect;->a:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->a([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method a([Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 79
    invoke-static {p2, v2}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
