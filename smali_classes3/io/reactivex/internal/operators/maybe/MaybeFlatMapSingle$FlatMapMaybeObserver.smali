.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42ff881892d3c404L


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 67
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapSingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapSingleObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/SingleObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
