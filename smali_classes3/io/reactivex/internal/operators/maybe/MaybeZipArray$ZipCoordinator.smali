.class final Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeZipArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d1e29153b0426a9L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final values:[Ljava/lang/Object;

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;I",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/MaybeObserver;

    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    .line 83
    new-array p1, p2, [Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 85
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    invoke-direct {v0, p0, p3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    .line 88
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 100
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method disposeExcept(I)V
    .locals 4

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    .line 124
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 126
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    .line 129
    aget-object v2, v0, p1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;->dispose()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method innerComplete(I)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    .line 145
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    :cond_0
    return-void
.end method

.method innerError(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->disposeExcept(I)V

    .line 136
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p2, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method innerSuccess(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 107
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 111
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    invoke-interface {p1, p2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The zipper returned a null value"

    invoke-static {p1, p2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p2, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 114
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p2, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
