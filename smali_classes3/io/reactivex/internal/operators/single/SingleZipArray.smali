.class public final Lio/reactivex/internal/operators/single/SingleZipArray;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->a:[Lio/reactivex/SingleSource;

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 43
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/single/SingleZipArray;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    return-void

    .line 47
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lio/reactivex/functions/Function;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V

    .line 49
    invoke-interface {p1, v3}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 52
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 56
    :cond_1
    aget-object p1, v0, v2

    if-nez p1, :cond_2

    .line 59
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->innerError(Ljava/lang/Throwable;I)V

    return-void

    .line 63
    :cond_2
    iget-object v4, v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
