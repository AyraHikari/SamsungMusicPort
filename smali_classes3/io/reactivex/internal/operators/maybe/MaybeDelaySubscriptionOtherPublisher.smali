.class public final Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$DelayMaybeObserver;,
        Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$OtherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher;->b:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$OtherSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher;->a:Lio/reactivex/MaybeSource;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$OtherSubscriber;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/MaybeSource;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
