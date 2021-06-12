.class public final Lio/reactivex/internal/operators/completable/CompletableConcatIterable;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;
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
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/util/Iterator;)V

    .line 46
    iget-object v0, v1, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    invoke-virtual {v1}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->next()V

    return-void

    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 41
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void
.end method
