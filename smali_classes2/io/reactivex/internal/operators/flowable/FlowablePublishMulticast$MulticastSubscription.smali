.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x783f9b81a81b45ffL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 496
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 497
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    .line 510
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->b(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V

    .line 512
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 4

    .line 517
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public request(J)V
    .locals 1

    .line 502
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 504
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->parent:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->e()V

    :cond_0
    return-void
.end method
