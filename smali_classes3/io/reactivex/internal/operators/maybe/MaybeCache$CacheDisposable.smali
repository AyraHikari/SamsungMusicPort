.class final Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/maybe/MaybeCache<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5060cba6deb671f3L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/internal/operators/maybe/MaybeCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/maybe/MaybeCache<",
            "TT;>;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 182
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->downstream:Lio/reactivex/MaybeObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/maybe/MaybeCache;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeCache;->b(Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
