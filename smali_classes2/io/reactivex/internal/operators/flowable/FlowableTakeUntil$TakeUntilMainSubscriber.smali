.class final Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeUntilMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;
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
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44a1e030ca135947L


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

.field final other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber<",
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

    .line 55
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    .line 60
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

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

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z

    return-void
.end method

.method public request(J)V
    .locals 2

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
