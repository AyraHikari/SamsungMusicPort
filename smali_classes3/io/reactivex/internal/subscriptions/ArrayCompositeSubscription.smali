.class public final Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v1, v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 88
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v2, v3, :cond_0

    .line 89
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 90
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public replaceResource(ILorg/reactivestreams/Subscription;)Lorg/reactivestreams/Subscription;
    .locals 2

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 70
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    .line 72
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public setResource(ILorg/reactivestreams/Subscription;)Z
    .locals 2

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 46
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    .line 48
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 52
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 54
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
