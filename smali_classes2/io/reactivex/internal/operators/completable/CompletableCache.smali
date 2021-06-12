.class public final Lio/reactivex/internal/operators/completable/CompletableCache;
.super Lio/reactivex/Completable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

.field static final b:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;


# instance fields
.field final c:Lio/reactivex/CompletableSource;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 28
    new-array v1, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->a:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 30
    new-array v0, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableCache;->b:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z
    .locals 4

    .line 95
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 96
    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->b:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 99
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 100
    new-array v3, v3, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 101
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    aput-object p1, v3, v1

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 48
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;-><init>(Lio/reactivex/internal/operators/completable/CompletableCache;Lio/reactivex/CompletableObserver;)V

    .line 49
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->a(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->b(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->c:Lio/reactivex/CompletableSource;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method b(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V
    .locals 6

    .line 111
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 112
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 120
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

    .line 133
    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->a:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 135
    new-array v5, v5, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 136
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 137
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 140
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->b:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v3, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v3}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->f:Ljava/lang/Throwable;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->b:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    iget-object v3, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v3, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

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
