.class final Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeUntilOtherMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1191e1deb0e3c2ebL


# instance fields
.field final parent:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver<",
            "*TU;>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 140
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver;->otherComplete()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 135
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
