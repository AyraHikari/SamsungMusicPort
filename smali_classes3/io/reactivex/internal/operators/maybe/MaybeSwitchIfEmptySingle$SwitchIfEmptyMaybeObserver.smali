.class final Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchIfEmptyMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver$OtherSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field private static final serialVersionUID:J = 0x3fe4688d997527b3L


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final other:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->other:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 65
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 93
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->other:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver$OtherSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-direct {v1, v2, p0}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver$OtherSingleObserver;-><init>(Lio/reactivex/SingleObserver;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

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

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
