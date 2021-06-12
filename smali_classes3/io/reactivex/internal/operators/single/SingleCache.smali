.class public final Lio/reactivex/internal/operators/single/SingleCache;
.super Lio/reactivex/Single;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

.field static final b:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;


# instance fields
.field final c:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 24
    new-array v1, v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    sput-object v1, Lio/reactivex/internal/operators/single/SingleCache;->a:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 26
    new-array v0, v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    sput-object v0, Lio/reactivex/internal/operators/single/SingleCache;->b:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 71
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 72
    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->b:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 75
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 77
    new-array v3, v3, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 78
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    aput-object p1, v3, v1

    .line 80
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/internal/operators/single/SingleCache;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 50
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCache;->a(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v0}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCache;->b(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->c:Lio/reactivex/SingleSource;

    invoke-interface {p1, p0}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 57
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method b(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 90
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 97
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

    .line 110
    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->a:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 112
    new-array v5, v5, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 113
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 114
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 116
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 142
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->g:Ljava/lang/Throwable;

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->b:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v3, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

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

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->f:Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->b:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v3, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
