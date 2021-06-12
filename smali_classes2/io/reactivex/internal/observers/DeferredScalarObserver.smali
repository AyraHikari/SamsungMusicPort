.class public abstract Lio/reactivex/internal/observers/DeferredScalarObserver;
.super Lio/reactivex/internal/observers/DeferredScalarDisposable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/DeferredScalarDisposable<",
        "TR;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b1b71a072cf1ebL


# instance fields
.field protected upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 70
    invoke-super {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->dispose()V

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->value:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarObserver;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarObserver;->complete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->value:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarObserver;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
