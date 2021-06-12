.class final Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver;->a:Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
