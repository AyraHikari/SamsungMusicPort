.class public final Lio/reactivex/processors/AsyncProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final b:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

.field static final c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Throwable;

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    new-array v1, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v1, Lio/reactivex/processors/AsyncProcessor;->b:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 123
    new-array v0, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    return-void
.end method


# virtual methods
.method protected a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V

    .line 230
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 231
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->a(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->b(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 238
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->f:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {v0, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method a(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 258
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 259
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 263
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 265
    new-array v3, v3, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 266
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    aput-object p1, v3, v1

    .line 269
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 282
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 283
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 290
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

    .line 303
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->b:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 305
    new-array v5, v5, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 306
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 307
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 309
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 190
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->f:Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 196
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 197
    invoke-virtual {v3}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 201
    invoke-virtual {v4, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 175
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 177
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->f:Ljava/lang/Object;

    .line 181
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->e:Ljava/lang/Throwable;

    .line 182
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 183
    invoke-virtual {v3, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 165
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->f:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->c:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 156
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 160
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
