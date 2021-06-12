.class public final Lio/reactivex/internal/operators/flowable/FlowableTimer;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/Scheduler;

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 40
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer;->b:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer;->c:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimer;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
