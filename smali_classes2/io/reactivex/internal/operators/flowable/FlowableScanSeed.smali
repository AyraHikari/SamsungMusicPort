.class public final Lio/reactivex/internal/operators/flowable/FlowableScanSeed;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The seed supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;->b:Lio/reactivex/Flowable;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;->c:Lio/reactivex/functions/BiFunction;

    invoke-static {}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;->a()I

    move-result v4

    invoke-direct {v2, p1, v3, v0, v4}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void

    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 48
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
