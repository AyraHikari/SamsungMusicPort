.class public final Lio/reactivex/internal/util/HalfSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/reactivex/Observer;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lio/reactivex/Observer;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-virtual {p3, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 132
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 148
    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-virtual {p3, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 70
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method
