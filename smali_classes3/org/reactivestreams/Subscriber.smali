.class public interface abstract Lorg/reactivestreams/Subscriber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onSubscribe(Lorg/reactivestreams/Subscription;)V
.end method
