.class final Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49fd60e1dc287b5fL


# instance fields
.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final eager:Z

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;ZLio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TU;Z",
            "Lio/reactivex/functions/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 104
    iput-boolean p3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    .line 105
    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 111
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    return-void
.end method

.method disposeAfter()V
    .locals 2

    .line 184
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 190
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 159
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 168
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 177
    iget-boolean p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

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

    .line 132
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 134
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    return-void

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 151
    iget-boolean p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    :cond_2
    return-void
.end method
