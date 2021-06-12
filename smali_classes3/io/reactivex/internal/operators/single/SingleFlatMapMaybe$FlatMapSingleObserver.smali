.class final Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleObserver"
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
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5119332c5c483496L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 61
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

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

    .line 81
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapMaybeObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapMaybeObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
