.class final Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/Emitter<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x68ffc50b57428478L


# instance fields
.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
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

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field hasNext:Z

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 77
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    .line 79
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 146
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    const-wide/16 v0, 0x1

    .line 156
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 159
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 186
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

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

    .line 166
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-nez v0, :cond_2

    .line 167
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 171
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 9

    .line 84
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    move-wide v4, p1

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_0
    cmp-long v6, p1, v4

    if-eqz v6, :cond_6

    .line 100
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 101
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    .line 106
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    const/4 v6, 0x1

    .line 109
    :try_start_0
    invoke-interface {v1, v0, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-eqz v0, :cond_5

    .line 120
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    .line 121
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 122
    invoke-direct {p0, v8}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 112
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    .line 113
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    .line 115
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->get()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_3

    .line 131
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    neg-long p1, p1

    .line 132
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->addAndGet(J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    return-void
.end method
