.class final Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->a:Lorg/reactivestreams/Subscriber;

    .line 85
    new-array p1, p2, [Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    return-void
.end method


# virtual methods
.method public a([Lorg/reactivestreams/Publisher;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 92
    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->a:Lorg/reactivestreams/Subscriber;

    invoke-direct {v4, p0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;ILorg/reactivestreams/Subscriber;)V

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 94
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 95
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 98
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 102
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    .line 126
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    if-eq v3, p1, :cond_0

    .line 129
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->cancel()V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public cancel()V
    .locals 4

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 144
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    .line 108
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->request(J)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->b:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 115
    invoke-virtual {v3, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->request(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
