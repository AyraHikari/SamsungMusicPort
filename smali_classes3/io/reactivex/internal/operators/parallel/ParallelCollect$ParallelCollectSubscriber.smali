.class final Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;
.super Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelCollectSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/DeferredScalarSubscriber<",
        "TT;TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42292ea02dae7f04L


# instance fields
.field collection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final collector:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "-TC;-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;TC;",
            "Lio/reactivex/functions/BiConsumer<",
            "-TC;-TT;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 101
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collection:Ljava/lang/Object;

    .line 102
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collector:Lio/reactivex/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 155
    invoke-super {p0}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->cancel()V

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->done:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collection:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collection:Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->done:Z

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collection:Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collector:Lio/reactivex/functions/BiConsumer;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->collection:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/functions/BiConsumer;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->cancel()V

    .line 127
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 112
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
