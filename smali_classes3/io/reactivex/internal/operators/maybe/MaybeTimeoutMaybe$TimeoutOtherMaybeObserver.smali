.class final Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutOtherMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x783c01649d3b2729L


# instance fields
.field final parent:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver;->otherComplete()V

    return-void
.end method
