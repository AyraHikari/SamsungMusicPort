.class final Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapIterableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TR;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c0d039055ea7eaeL


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field outputFused:Z

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    .line 71
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 157
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    .line 89
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    .line 99
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 103
    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    if-eqz v1, :cond_1

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 105
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 109
    :cond_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v1, :cond_2

    return-void

    .line 116
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 125
    iget-boolean v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v1, :cond_3

    return-void

    .line 132
    :cond_3
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_1

    .line 140
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :catch_0
    move-exception p1

    .line 134
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 135
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 118
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 119
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    .line 93
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
