.class final Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapMaybeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final STATE_ACTIVE:I = 0x1

.field static final STATE_INACTIVE:I = 0x0

.field static final STATE_RESULT_VALUE:I = 0x2

.field private static final serialVersionUID:J = -0x7ed83da4674d8da5L


# instance fields
.field volatile cancelled:Z

.field consumed:I

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final errorMode:Lio/reactivex/internal/util/ErrorMode;

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver<",
            "TR;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile state:I

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 112
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 113
    iput p3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->prefetch:I

    .line 114
    iput-object p4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 116
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 117
    new-instance p1, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->inner:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;

    .line 118
    new-instance p1, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {p1, p3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->cancelled:Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->inner:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->dispose()V

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method drain()V
    .locals 15

    .line 200
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 206
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    .line 207
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 208
    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 209
    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    iget v5, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->prefetch:I

    iget v6, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->prefetch:I

    const/4 v7, 0x1

    shr-int/2addr v6, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    .line 215
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->cancelled:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 216
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 217
    iput-object v9, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    goto/16 :goto_4

    .line 221
    :cond_2
    iget v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    .line 223
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 224
    sget-object v10, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-eq v1, v10, :cond_3

    sget-object v10, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v1, v10, :cond_4

    if-nez v8, :cond_4

    .line 226
    :cond_3
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 227
    iput-object v9, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    .line 228
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v10, 0x0

    if-nez v8, :cond_a

    .line 235
    iget-boolean v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->done:Z

    .line 236
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v8, :cond_7

    if-eqz v11, :cond_7

    .line 240
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 242
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    .line 244
    :cond_6
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_7
    if-eqz v11, :cond_8

    goto :goto_4

    .line 253
    :cond_8
    iget v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->consumed:I

    add-int/2addr v8, v7

    if-ne v8, v5, :cond_9

    .line 255
    iput v10, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->consumed:I

    .line 256
    iget-object v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v10, v5

    invoke-interface {v8, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 258
    :cond_9
    iput v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->consumed:I

    .line 264
    :goto_3
    :try_start_0
    iget-object v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v8, v9}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "The mapper returned a null MaybeSource"

    invoke-static {v8, v9}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iput v7, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    .line 276
    iget-object v9, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->inner:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;

    invoke-interface {v8, v9}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    goto :goto_4

    :catch_0
    move-exception v1

    .line 266
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 267
    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 268
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 269
    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 270
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 271
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v11, 0x2

    if-ne v8, v11, :cond_b

    .line 279
    iget-wide v11, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->emitted:J

    .line 280
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-eqz v8, :cond_b

    .line 281
    iget-object v8, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    .line 282
    iput-object v9, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    .line 284
    invoke-interface {v0, v8}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v11, v8

    .line 286
    iput-wide v11, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->emitted:J

    .line 287
    iput v10, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    goto/16 :goto_0

    :cond_b
    :goto_4
    neg-int v6, v6

    .line 296
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method innerComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    .line 184
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, v0, :cond_0

    .line 190
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 192
    iput p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method innerSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->item:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 178
    iput p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->state:I

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->done:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->inner:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->dispose()V

    :cond_0
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->done:Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 134
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 126
    iget v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->drain()V

    return-void
.end method
