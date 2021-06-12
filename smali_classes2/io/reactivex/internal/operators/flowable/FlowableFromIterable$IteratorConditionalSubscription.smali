.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    .line 284
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 4

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 290
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 292
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v2, :cond_1

    return-void

    .line 299
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Iterator.next() returned a null value"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 314
    :cond_3
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 317
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v2, :cond_4

    return-void

    .line 324
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_0

    .line 332
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v0, :cond_5

    .line 333
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 326
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 327
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 301
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 302
    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method slowPath(J)V
    .locals 8

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 344
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    :cond_0
    move-wide p1, v2

    :cond_1
    :goto_0
    cmp-long v6, p1, v4

    if-eqz v6, :cond_8

    .line 350
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v6, :cond_2

    return-void

    .line 357
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v7, :cond_3

    return-void

    :cond_3
    if-nez v6, :cond_4

    .line 370
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator.next() returned a null value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 373
    :cond_4
    invoke-interface {v1, v6}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v6

    .line 376
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v7, :cond_5

    return-void

    .line 383
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v7, :cond_7

    .line 391
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez p1, :cond_6

    .line 392
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_6
    return-void

    :cond_7
    if-eqz v6, :cond_1

    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    goto :goto_0

    :catch_0
    move-exception p1

    .line 385
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 386
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 359
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 360
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 402
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->get()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    neg-long p1, p1

    .line 404
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->addAndGet(J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    return-void
.end method
