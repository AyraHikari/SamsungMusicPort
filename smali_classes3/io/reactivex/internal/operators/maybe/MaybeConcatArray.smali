.class public final Lio/reactivex/internal/operators/maybe/MaybeConcatArray;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;->b:[Lio/reactivex/MaybeSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;-><init>(Lorg/reactivestreams/Subscriber;[Lio/reactivex/MaybeSource;)V

    .line 42
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 43
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method
