.class final Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayMaybeObserver"
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
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d4175c4cbdbad1cL


# instance fields
.field final delay:J

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->delay:J

    .line 69
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 70
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 90
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->error:Ljava/lang/Throwable;

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->value:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    :goto_0
    return-void
.end method

.method schedule()V
    .locals 4

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->delay:J

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
