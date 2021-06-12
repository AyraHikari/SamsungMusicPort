.class final Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableConcatIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerObserver"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;

.field final sd:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sources:Ljava/util/Iterator;

    .line 62
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method next()V
    .locals 3

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sources:Ljava/util/Iterator;

    .line 91
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 97
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void

    .line 112
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The CompletableSource returned is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/CompletableSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    invoke-interface {v1, p0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 115
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 99
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->next()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
