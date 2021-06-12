.class public final Lio/reactivex/internal/subscriptions/AsyncSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = 0x618aba5ea1440227L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final resource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/AsyncSubscription;-><init>()V

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/AsyncSubscription;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replaceResource(Lio/reactivex/disposables/Disposable;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    return p1
.end method

.method public request(J)V
    .locals 1

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    return p1
.end method

.method public setSubscription(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/AsyncSubscription;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z

    return-void
.end method
