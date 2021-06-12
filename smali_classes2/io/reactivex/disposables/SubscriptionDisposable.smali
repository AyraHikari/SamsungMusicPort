.class final Lio/reactivex/disposables/SubscriptionDisposable;
.super Lio/reactivex/disposables/ReferenceDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/ReferenceDisposable<",
        "Lorg/reactivestreams/Subscription;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x9cfc6416eb4a343L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onDisposed(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/SubscriptionDisposable;->onDisposed(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method protected onDisposed(Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 31
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method
