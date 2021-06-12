.class final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;


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
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    .line 78
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->b:Lio/reactivex/functions/Function;

    .line 79
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    .line 80
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eqz v0, :cond_0

    .line 154
    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eq v0, v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    :cond_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;Ljava/lang/Throwable;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    if-eqz p1, :cond_0

    .line 174
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->dispose()V

    .line 180
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 181
    sget-object p2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    .line 182
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

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

    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->g:Z

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->c:Z

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->onComplete()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a()V

    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 130
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_2

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
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

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->b:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    new-instance v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    .line 109
    sget-object v2, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->f:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    .line 116
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 101
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->h:Lio/reactivex/disposables/Disposable;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
