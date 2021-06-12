.class public interface abstract Lio/reactivex/internal/observers/InnerQueuedObserverSupport;
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
.method public abstract drain()V
.end method

.method public abstract innerComplete(Lio/reactivex/internal/observers/InnerQueuedObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract innerError(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract innerNext(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
