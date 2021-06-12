.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;->b:Lio/reactivex/MaybeObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;->b:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;->b:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
