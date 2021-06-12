.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$Node;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final f:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

.field static final g:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field final i:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:I

.field l:Ljava/lang/Throwable;

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 54
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->f:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 60
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->g:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 153
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->g:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    if-ne v0, v1, :cond_1

    return-void

    .line 156
    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 159
    new-array v2, v2, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    const/4 v3, 0x0

    .line 160
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    aput-object p1, v2, v1

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache;)V

    .line 111
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 112
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->a(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 114
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/Flowable;

    invoke-virtual {p1, p0}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->c(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    :goto_0
    return-void
.end method

.method b(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 176
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 177
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 184
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

    .line 196
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->f:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 198
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 199
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 200
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 203
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method c(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 216
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 223
    :cond_0
    iget-wide v2, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    .line 224
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    .line 225
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 226
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 228
    iget v8, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->d:I

    const/4 v9, 0x1

    move-object v10, v5

    move v5, v4

    const/4 v4, 0x1

    .line 232
    :cond_1
    :goto_0
    iget-boolean v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->m:Z

    .line 234
    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->h:J

    const/4 v14, 0x0

    cmp-long v12, v12, v2

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    .line 239
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 241
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->l:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 243
    invoke-interface {v7, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 245
    :cond_3
    invoke-interface {v7}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_2
    return-void

    :cond_4
    if-nez v12, :cond_7

    .line 253
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v11, v15

    if-nez v15, :cond_5

    .line 257
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    return-void

    :cond_5
    cmp-long v11, v11, v2

    if-eqz v11, :cond_7

    if-ne v5, v8, :cond_6

    .line 266
    iget-object v5, v10, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    move-object v10, v5

    goto :goto_3

    :cond_6
    move v14, v5

    .line 272
    :goto_3
    iget-object v5, v10, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->a:[Ljava/lang/Object;

    aget-object v5, v5, v14

    invoke-interface {v7, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v5, v14, 0x1

    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    goto :goto_0

    .line 285
    :cond_7
    iput-wide v2, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    .line 286
    iput v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    .line 287
    iput-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    neg-int v4, v4

    .line 289
    invoke-virtual {v1, v4}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 4

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->m:Z

    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->g:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 340
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache;->c(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->m:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 328
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->m:Z

    .line 330
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->g:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 331
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableCache;->c(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 303
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->k:I

    .line 305
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;-><init>(I)V

    .line 307
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 308
    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->k:I

    .line 309
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->j:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    iput-object v1, p1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 310
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->j:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->j:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 313
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->k:I

    .line 315
    :goto_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->h:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->h:J

    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 317
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache;->c(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 298
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
