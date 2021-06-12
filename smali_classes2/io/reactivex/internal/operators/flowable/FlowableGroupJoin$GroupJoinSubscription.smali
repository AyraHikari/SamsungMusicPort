.class final Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$JoinSupport;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupJoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$JoinSupport;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final LEFT_CLOSE:Ljava/lang/Integer;

.field static final LEFT_VALUE:Ljava/lang/Integer;

.field static final RIGHT_CLOSE:Ljava/lang/Integer;

.field static final RIGHT_VALUE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x54414b546f40e739L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile cancelled:Z

.field final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final leftEnd:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field leftIndex:I

.field final lefts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final resultSelector:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/Flowable<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final rightEnd:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TTRight;+",
            "Lorg/reactivestreams/Publisher<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field rightIndex:I

.field final rights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_VALUE:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_VALUE:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_CLOSE:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_CLOSE:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/functions/Function<",
            "-TTRight;+",
            "Lorg/reactivestreams/Publisher<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/Flowable<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 133
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 134
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 135
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 136
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/Flowable;->a()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 137
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    .line 138
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    .line 139
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 140
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->leftEnd:Lio/reactivex/functions/Function;

    .line 141
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rightEnd:Lio/reactivex/functions/Function;

    .line 142
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->resultSelector:Lio/reactivex/functions/BiFunction;

    .line 143
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelled:Z

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelAll()V

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_1
    return-void
.end method

.method cancelAll()V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method drain()V
    .locals 10

    .line 191
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 201
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelled:Z

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    .line 206
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 208
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 209
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelAll()V

    .line 210
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->errorAll(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 214
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 216
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v7, :cond_7

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/UnicastProcessor;

    .line 222
    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    goto :goto_3

    .line 225
    :cond_6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 229
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    neg-int v3, v3

    .line 342
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 237
    :cond_8
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 239
    sget-object v7, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_VALUE:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    .line 243
    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->f()Lio/reactivex/processors/UnicastProcessor;

    move-result-object v5

    .line 244
    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->leftIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->leftIndex:I

    .line 245
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->leftEnd:Lio/reactivex/functions/Function;

    invoke-interface {v7, v4}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;

    invoke-direct {v8, p0, v2, v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$JoinSupport;ZI)V

    .line 257
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v6, v8}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 259
    invoke-interface {v7, v8}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 261
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    .line 263
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 264
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelAll()V

    .line 265
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->errorAll(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 272
    :cond_9
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->resultSelector:Lio/reactivex/functions/BiFunction;

    invoke-interface {v6, v4, v5}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 280
    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 281
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-static {v4, v6, v7}, Lio/reactivex/internal/util/BackpressureHelper;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 287
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 283
    :cond_a
    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Could not emit value due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->fail(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)V

    return-void

    :catch_0
    move-exception v2

    .line 274
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->fail(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)V

    return-void

    :catch_1
    move-exception v2

    .line 252
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->fail(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)V

    return-void

    .line 291
    :cond_b
    sget-object v7, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_VALUE:Ljava/lang/Integer;

    if-ne v6, v7, :cond_d

    .line 295
    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rightIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rightIndex:I

    .line 297
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :try_start_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rightEnd:Lio/reactivex/functions/Function;

    invoke-interface {v7, v4}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null Publisher"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/Publisher;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 308
    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;

    invoke-direct {v8, p0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$JoinSupport;ZI)V

    .line 309
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v5, v8}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 311
    invoke-interface {v7, v8}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 313
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 315
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 316
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelAll()V

    .line 317
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->errorAll(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 321
    :cond_c
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/processors/UnicastProcessor;

    .line 322
    invoke-virtual {v6, v4}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catch_2
    move-exception v2

    .line 304
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->fail(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)V

    return-void

    .line 325
    :cond_d
    sget-object v5, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_CLOSE:Ljava/lang/Integer;

    if-ne v6, v5, :cond_e

    .line 326
    check-cast v4, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;

    .line 328
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/processors/UnicastProcessor;

    .line 329
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v6, v4}, Lio/reactivex/disposables/CompositeDisposable;->b(Lio/reactivex/disposables/Disposable;)Z

    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {v5}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    goto/16 :goto_0

    .line 334
    :cond_e
    sget-object v5, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_CLOSE:Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    .line 335
    check-cast v4, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;

    .line 337
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v5, v4}, Lio/reactivex/disposables/CompositeDisposable;->b(Lio/reactivex/disposables/Disposable;)Z

    goto/16 :goto_0
.end method

.method errorAll(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/UnicastProcessor;

    .line 173
    invoke-virtual {v2, v0}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->lefts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->rights:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 179
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method fail(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "*>;)V"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 185
    invoke-interface {p3}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 186
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->cancelAll()V

    .line 187
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->errorAll(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method public innerClose(ZLio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;)V
    .locals 1

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_CLOSE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_CLOSE:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->drain()V

    return-void

    :catchall_0
    move-exception p1

    .line 378
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public innerCloseError(Ljava/lang/Throwable;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->drain()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerComplete(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 362
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 363
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->drain()V

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 353
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->drain()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerValue(ZLjava/lang/Object;)V
    .locals 1

    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->LEFT_VALUE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->RIGHT_VALUE:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->drain()V

    return-void

    :catchall_0
    move-exception p1

    .line 370
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public request(J)V
    .locals 1

    .line 148
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
