.class public final Lio/reactivex/internal/operators/completable/CompletableConcat;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# virtual methods
.method public b(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->a:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->b:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;-><init>(Lio/reactivex/CompletableObserver;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
