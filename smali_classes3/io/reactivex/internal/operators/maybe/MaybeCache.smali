.class public final Lio/reactivex/internal/operators/maybe/MaybeCache;
.super Lio/reactivex/Maybe;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

.field static final b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/MaybeSource<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    new-array v1, v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    sput-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->a:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    .line 32
    new-array v0, v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    sput-object v0, Lio/reactivex/internal/operators/maybe/MaybeCache;->b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 120
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    .line 121
    sget-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 124
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 127
    new-array v3, v3, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    .line 128
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    aput-object p1, v3, v1

    .line 130
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/internal/operators/maybe/MaybeCache;)V

    .line 51
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCache;->a(Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCache;->b(Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeSource;

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1, p0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    :cond_1
    return-void

    .line 59
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 62
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 66
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    :cond_5
    :goto_0
    return-void
.end method

.method b(Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    .line 140
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 148
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 160
    sget-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->a:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 162
    new-array v5, v5, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    .line 163
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 164
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 166
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v3}, Lio/reactivex/MaybeObserver;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 100
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->f:Ljava/lang/Throwable;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v3, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->e:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/MaybeCache;->b:[Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 91
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/MaybeCache$CacheDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v3, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
