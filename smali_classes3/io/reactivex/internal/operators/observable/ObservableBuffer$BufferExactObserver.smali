.class final Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExactObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field e:I

.field f:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    .line 63
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->b:I

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Empty buffer supplied"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->d:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->e:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->b:I

    if-lt p1, v1, :cond_0

    .line 113
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->e:I

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a()Z

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->f:Lio/reactivex/disposables/Disposable;

    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
