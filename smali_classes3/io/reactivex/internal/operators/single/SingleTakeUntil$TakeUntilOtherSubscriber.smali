.class final Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleTakeUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeUntilOtherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47bf9f723cbf4ec5L


# instance fields
.field final parent:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<",
            "*>;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 135
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->parent:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 164
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 158
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->parent:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->otherError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->parent:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 145
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->parent:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->otherError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 140
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
