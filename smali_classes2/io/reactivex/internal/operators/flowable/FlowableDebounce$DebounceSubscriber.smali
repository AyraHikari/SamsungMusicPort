.class final Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDebounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d5776fd7e6ae27fL


# instance fields
.field final debounceSelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field final debouncer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile index:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debounceSelector:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method emit(JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->index:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    .line 146
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->cancel()V

    .line 149
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->done:Z

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 119
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;

    .line 122
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a()V

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 81
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->index:J

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 91
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debounceSelector:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The publisher supplied is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;

    invoke-direct {v4, p0, v0, v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;JLjava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->debouncer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {v3, v4}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->cancel()V

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 70
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 130
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
