.class final Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;


# instance fields
.field final a:Lio/reactivex/CompletableObserver;

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    .line 79
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->b:Lio/reactivex/functions/Function;

    .line 80
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    .line 81
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eqz v0, :cond_0

    .line 156
    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    :cond_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;Ljava/lang/Throwable;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    if-eqz p1, :cond_0

    .line 176
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->dispose()V

    .line 182
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 183
    sget-object p2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    .line 184
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->onComplete()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a()V

    .line 131
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 132
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_2

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_2
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

    .line 99
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->b:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    .line 111
    sget-object v2, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    .line 118
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 103
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lorg/reactivestreams/Subscription;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 90
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
