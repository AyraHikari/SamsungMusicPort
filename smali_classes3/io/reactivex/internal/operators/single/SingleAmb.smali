.class public final Lio/reactivex/internal/operators/single/SingleAmb;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb;->a:[Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [Lio/reactivex/SingleSource;

    .line 41
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleAmb;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;

    if-nez v4, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    return-void

    .line 46
    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 47
    new-array v5, v5, [Lio/reactivex/SingleSource;

    .line 48
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 51
    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    return-void

    .line 59
    :cond_2
    array-length v3, v0

    .line 62
    :cond_3
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 64
    new-instance v4, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;

    invoke-direct {v4, p1, v2}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 65
    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_7

    .line 68
    aget-object v6, v0, v5

    .line 69
    invoke-virtual {v4}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->get()Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    if-nez v6, :cond_6

    .line 74
    invoke-virtual {v2}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "One of the sources is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v4, v1, v2}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 79
    :cond_5
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 84
    :cond_6
    invoke-interface {v6, v4}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
