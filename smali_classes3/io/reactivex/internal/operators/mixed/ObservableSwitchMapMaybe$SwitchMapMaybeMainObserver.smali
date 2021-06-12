.class final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapMaybeMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x4af86f46b0766842L


# instance fields
.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    .line 87
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->mapper:Lio/reactivex/functions/Function;

    .line 88
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    .line 89
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    return-void
.end method

.method disposeInner()V
    .locals 2

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-eqz v0, :cond_0

    .line 157
    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-eq v0, v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->dispose()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 8

    .line 195
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    .line 201
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 202
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 207
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    if-eqz v5, :cond_2

    return-void

    .line 211
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 212
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez v5, :cond_3

    .line 213
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 214
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 219
    :cond_3
    iget-boolean v5, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 220
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-nez v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 224
    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 226
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 228
    :cond_5
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :goto_2
    return-void

    :cond_6
    if-nez v7, :cond_8

    .line 233
    iget-object v5, v6, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->item:Ljava/lang/Object;

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 237
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    iget-object v5, v6, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->item:Ljava/lang/Object;

    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    :goto_3
    neg-int v4, v4

    .line 242
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method innerComplete(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    :cond_0
    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    return-void

    .line 185
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    :cond_0
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->dispose()V

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    new-instance v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;)V

    .line 124
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    .line 125
    sget-object v2, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 97
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
