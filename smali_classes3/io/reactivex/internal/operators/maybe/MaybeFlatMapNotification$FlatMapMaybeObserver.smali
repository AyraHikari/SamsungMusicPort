.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;
    }
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
.field private static final serialVersionUID:J = 0x3cb9c044fe24c252L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final onCompleteSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final onErrorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final onSuccessMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 76
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onSuccessMapper:Lio/reactivex/functions/Function;

    .line 77
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onErrorMapper:Lio/reactivex/functions/Function;

    .line 78
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 83
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onCompleteSupplier returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void

    :catch_0
    move-exception v0

    .line 138
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 139
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onErrorMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onErrorMapper returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    new-instance p1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {v0, p1}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void

    :catch_0
    move-exception v0

    .line 123
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 97
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->onSuccessMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The onSuccessMapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
