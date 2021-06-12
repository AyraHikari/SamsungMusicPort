.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapCompletableMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x752c1ce874ed53bfL


# instance fields
.field final delayErrors:Z

.field volatile disposed:Z

.field final downstream:Lio/reactivex/CompletableObserver;

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
.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;ZI)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 89
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->delayErrors:Z

    .line 90
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 91
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 92
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->disposed:Z

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method innerComplete(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber<",
            "TT;>.InnerObserver;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 188
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->onComplete()V

    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber<",
            "TT;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 193
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 168
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->delayErrors:Z

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->dispose()V

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 149
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
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

    .line 117
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->getAndIncrement()I

    .line 127
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;)V

    .line 129
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->disposed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 103
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 105
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 107
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method
