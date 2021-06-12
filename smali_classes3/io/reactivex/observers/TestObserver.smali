.class public Lio/reactivex/observers/TestObserver;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/TestObserver$EmptyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/observers/TestObserver<",
        "TT;>;>;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private final i:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final dispose()V
    .locals 1

    .line 220
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    .line 186
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->e:Ljava/lang/Thread;

    .line 193
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->d:J

    .line 195
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->i:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    .line 163
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->e:Ljava/lang/Thread;

    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->i:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->f:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->e:Ljava/lang/Thread;

    .line 137
    iget v0, p0, Lio/reactivex/observers/TestObserver;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->k:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->k:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->dispose()V

    :cond_1
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    .line 153
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->i:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->e:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 90
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 96
    :cond_2
    iget v0, p0, Lio/reactivex/observers/TestObserver;->g:I

    if-eqz v0, :cond_4

    .line 97
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_4

    .line 98
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueDisposable;

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->k:Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 100
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->k:Lio/reactivex/internal/fuseable/QueueDisposable;

    iget v1, p0, Lio/reactivex/observers/TestObserver;->g:I

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v0

    .line 101
    iput v0, p0, Lio/reactivex/observers/TestObserver;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 104
    iput-boolean v1, p0, Lio/reactivex/observers/TestObserver;->f:Z

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/observers/TestObserver;->e:Ljava/lang/Thread;

    .line 108
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->k:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_3
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->d:J

    .line 113
    iget-object p1, p0, Lio/reactivex/observers/TestObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 116
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 123
    :cond_4
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->i:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lio/reactivex/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->onComplete()V

    return-void
.end method
