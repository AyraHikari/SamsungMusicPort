.class final Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;
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
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x85380018ff2a7eL


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field other:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final task:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 103
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->other:Lio/reactivex/SingleSource;

    .line 104
    iput-wide p3, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->timeout:J

    .line 105
    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 106
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_0

    .line 108
    new-instance p2, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    invoke-direct {p2, p1}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;-><init>(Lio/reactivex/SingleObserver;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 158
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 148
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 133
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 139
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 117
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 121
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->other:Lio/reactivex/SingleSource;

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->downstream:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-wide v2, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->timeout:J

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lio/reactivex/internal/util/ExceptionHelper;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->other:Lio/reactivex/SingleSource;

    .line 126
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->fallback:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver;

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    :cond_2
    :goto_0
    return-void
.end method
