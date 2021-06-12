.class final Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x26fd42ce5a1686a7L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field volatile requested:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 69
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public request(J)V
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->requested:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 75
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->requested:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Can\'t deliver value due to lack of requests"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->trySet(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
