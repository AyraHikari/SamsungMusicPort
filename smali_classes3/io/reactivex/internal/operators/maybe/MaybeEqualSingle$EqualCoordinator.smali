.class final Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final isEqual:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 65
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    .line 67
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->isEqual:Lio/reactivex/functions/BiPredicate;

    .line 68
    new-instance p1, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    .line 69
    new-instance p1, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    return-void
.end method

.method done()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->value:Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->isEqual:Lio/reactivex/functions/BiPredicate;

    invoke-interface {v2, v0, v1}, Lio/reactivex/functions/BiPredicate;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method error(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    if-ne p1, v0, :cond_0

    .line 115
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    .line 119
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method subscribe(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    .line 74
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-interface {p2, p1}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
