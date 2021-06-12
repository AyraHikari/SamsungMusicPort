.class public final Lio/reactivex/internal/operators/observable/ObservableCache;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCache$Node;,
        Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

.field static final f:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile g:J

.field final h:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:I

.field k:Ljava/lang/Throwable;

.field volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->e:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 56
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableCache;->f:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    return-void
.end method


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache;)V

    .line 107
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 108
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->a(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 110
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->c(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    :goto_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 149
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->f:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    if-ne v0, v1, :cond_1

    return-void

    .line 152
    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 155
    new-array v2, v2, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    const/4 v3, 0x0

    .line 156
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    aput-object p1, v2, v1

    .line 159
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method b(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 172
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 173
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 180
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

    .line 192
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->e:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 194
    new-array v5, v5, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 195
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 196
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 199
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method c(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    .line 220
    iget v2, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    .line 221
    iget-object v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 222
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->downstream:Lio/reactivex/Observer;

    .line 223
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 227
    :cond_1
    :goto_0
    iget-boolean v8, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 228
    iput-object v9, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    return-void

    .line 233
    :cond_2
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->l:Z

    .line 235
    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->g:J

    const/4 v12, 0x0

    cmp-long v10, v10, v0

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    .line 240
    iput-object v9, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 242
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->k:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 244
    invoke-interface {v4, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 246
    :cond_4
    invoke-interface {v4}, Lio/reactivex/Observer;->onComplete()V

    :goto_2
    return-void

    :cond_5
    if-nez v10, :cond_7

    if-ne v2, v5, :cond_6

    .line 256
    iget-object v2, v3, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->b:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    move-object v3, v2

    const/4 v2, 0x0

    .line 262
    :cond_6
    iget-object v8, v3, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-interface {v4, v8}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    add-int/2addr v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    .line 274
    :cond_7
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    .line 275
    iput v2, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    .line 276
    iput-object v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    neg-int v7, v7

    .line 278
    invoke-virtual {p1, v7}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 4

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->l:Z

    .line 324
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->f:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 325
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCache;->c(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 313
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->l:Z

    .line 315
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableCache;->f:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 316
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableCache;->c(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 292
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->j:I

    .line 294
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    .line 296
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 297
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->j:I

    .line 298
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->i:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->b:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 299
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->i:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->i:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 302
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->j:I

    .line 304
    :goto_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->g:J

    .line 305
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 306
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCache;->c(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
