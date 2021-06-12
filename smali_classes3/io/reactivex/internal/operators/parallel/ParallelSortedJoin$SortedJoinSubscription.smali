.class final Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SortedJoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30527af9756114d9L


# instance fields
.field volatile cancelled:Z

.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
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

.field final indexes:[I

.field final lists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    .line 84
    new-array p1, p2, [Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 87
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    invoke-direct {v0, p0, p3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;-><init>(Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    .line 90
    new-array p1, p2, [Ljava/util/List;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    .line 91
    new-array p1, p2, [I

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method cancelAll()V
    .locals 4

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method drain()V
    .locals 18

    move-object/from16 v1, p0

    .line 140
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 146
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    .line 147
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    .line 148
    array-length v4, v0

    const/4 v6, 0x1

    .line 152
    :goto_0
    iget-object v7, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    :goto_1
    const/4 v14, 0x0

    cmp-long v15, v11, v7

    if-eqz v15, :cond_9

    .line 156
    iget-boolean v15, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-eqz v15, :cond_1

    .line 157
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_1
    iget-object v15, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    if-eqz v15, :cond_2

    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 164
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-interface {v2, v15}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v15, -0x1

    move-object v13, v14

    const/4 v15, 0x0

    const/16 v17, -0x1

    :goto_2
    if-ge v15, v4, :cond_7

    .line 173
    aget-object v9, v3, v15

    .line 174
    aget v10, v0, v15

    .line 176
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v10, :cond_6

    if-nez v13, :cond_3

    .line 178
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_3
    move-object v13, v5

    move/from16 v17, v15

    goto :goto_5

    .line 181
    :cond_3
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 186
    :try_start_0
    iget-object v9, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    invoke-interface {v9, v13, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_6

    goto :goto_3

    :catch_0
    move-exception v0

    .line 188
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 190
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 192
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    .line 194
    :cond_5
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_7
    if-nez v13, :cond_8

    .line 206
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    .line 211
    :cond_8
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 213
    aget v5, v0, v17

    const/4 v9, 0x1

    add-int/2addr v5, v9

    aput v5, v0, v17

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x1

    if-nez v15, :cond_e

    .line 219
    iget-boolean v5, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-eqz v5, :cond_a

    .line 220
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_a
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 227
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_d

    .line 235
    aget v10, v0, v5

    aget-object v13, v3, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v10, v13, :cond_c

    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_e

    .line 242
    invoke-static {v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_e
    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-eqz v5, :cond_f

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v5, v7, v13

    if-eqz v5, :cond_f

    .line 249
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v11

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 252
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->get()I

    move-result v5

    if-ne v5, v6, :cond_10

    neg-int v5, v6

    .line 254
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_10

    return-void

    :cond_10
    move v6, v5

    goto/16 :goto_0
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 134
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method innerNext(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    aput-object p1, v0, p2

    .line 124
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 97
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    :cond_0
    return-void
.end method
