.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapCompletableMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x752c1ce874ed53bfL


# instance fields
.field volatile cancelled:Z

.field final delayErrors:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;ZI)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 80
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 81
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 82
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->delayErrors:Z

    .line 83
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 84
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 85
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->cancelled:Z

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method innerComplete(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber<",
            "TT;>.InnerConsumer;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->onComplete()V

    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber<",
            "TT;>.InnerConsumer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 207
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 161
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->delayErrors:Z

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    .line 136
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->cancel()V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 142
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->getAndIncrement()I

    .line 120
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;)V

    .line 122
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->cancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 112
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 114
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 96
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 98
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 100
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .locals 0

    return-void
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
