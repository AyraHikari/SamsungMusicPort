.class final Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublisherBufferExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:I

.field d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field e:Lorg/reactivestreams/Subscription;

.field f:Z

.field g:I


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;I",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

    .line 74
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->c:I

    .line 75
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->f:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->d:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->f:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->f:Z

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

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

    .line 101
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->d:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->d:Ljava/util/Collection;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->cancel()V

    .line 113
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 120
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->g:I

    add-int/lit8 p1, p1, 0x1

    .line 123
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->c:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->g:I

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->d:Ljava/util/Collection;

    .line 126
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->g:I

    :goto_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->e:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->e:Lorg/reactivestreams/Subscription;

    .line 95
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 3

    .line 80
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->e:Lorg/reactivestreams/Subscription;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;->c:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Lio/reactivex/internal/util/BackpressureHelper;->b(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
