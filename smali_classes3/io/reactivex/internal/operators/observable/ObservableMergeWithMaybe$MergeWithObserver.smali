.class final Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final OTHER_STATE_CONSUMED_OR_EMPTY:I = 0x2

.field static final OTHER_STATE_HAS_VALUE:I = 0x1

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field volatile disposed:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field volatile mainDone:Z

.field final otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile otherState:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field singleItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    .line 79
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    .line 81
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->disposed:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 134
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method drain()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 9

    .line 182
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 187
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->disposed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 188
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 189
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void

    .line 193
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 194
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 195
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 196
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 200
    :cond_2
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherState:I

    const/4 v5, 0x2

    if-ne v3, v1, :cond_3

    .line 202
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 203
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 204
    iput v5, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherState:I

    .line 206
    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 209
    :cond_3
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDone:Z

    .line 210
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v7, :cond_4

    .line 211
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v3, v5, :cond_6

    .line 215
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 216
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    neg-int v2, v2

    .line 227
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 224
    :cond_7
    invoke-interface {v0, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/Observable;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    .line 170
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    :cond_0
    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDone:Z

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drain()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method otherComplete()V
    .locals 1

    const/4 v0, 0x2

    .line 162
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherState:I

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drain()V

    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 155
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drain()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method otherSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 141
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherState:I

    goto :goto_0

    .line 143
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->singleItem:Ljava/lang/Object;

    .line 144
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherState:I

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->drainLoop()V

    return-void
.end method
