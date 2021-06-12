.class public final Lio/reactivex/internal/operators/flowable/FlowableGenerate;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->c:Lio/reactivex/functions/BiFunction;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->d:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void

    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 48
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
