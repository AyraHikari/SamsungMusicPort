.class final Lio/reactivex/disposables/FutureDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/util/concurrent/Future<",
        "*>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5ad55fad22d3c507L


# instance fields
.field private final allowInterrupt:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 29
    iput-boolean p2, p0, Lio/reactivex/disposables/FutureDisposable;->allowInterrupt:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/FutureDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 42
    iget-boolean v1, p0, Lio/reactivex/disposables/FutureDisposable;->allowInterrupt:Z

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/reactivex/disposables/FutureDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
