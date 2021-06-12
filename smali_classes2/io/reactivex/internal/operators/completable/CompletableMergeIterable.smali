.class public final Lio/reactivex/internal/operators/completable/CompletableMergeIterable;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Lio/reactivex/CompletableObserver;)V
    .locals 5

    .line 34
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 36
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "The source iterator returned is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    new-instance v3, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;

    invoke-direct {v3, p1, v0, v2}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 52
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    .line 94
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onComplete()V

    return-void

    .line 70
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 77
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v4, "The iterator returned a null CompletableSource"

    invoke-static {p1, v4}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 89
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 91
    invoke-interface {p1, v3}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 81
    invoke-virtual {v3, p1}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 60
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 62
    invoke-virtual {v3, p1}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 43
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 44
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
