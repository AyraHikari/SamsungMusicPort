.class final Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipUntilMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5707023ca3cf971dL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile gate:Z

.field final other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber<",
            "TT;>.OtherSubscriber;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    .line 63
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z

    return-void
.end method

.method public request(J)V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->gate:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
