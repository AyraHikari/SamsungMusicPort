.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2837b1063a0ed65fL


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 125
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 126
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->resultSelector:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->value:Ljava/lang/Object;

    .line 142
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->resultSelector:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The resultSelector returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
