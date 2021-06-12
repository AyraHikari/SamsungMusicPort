.class final Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapCompletableMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver;
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
.field private static final serialVersionUID:J = 0x752c1ce874ed53bfL


# instance fields
.field final delayErrors:Z

.field volatile disposed:Z

.field final downstream:Lio/reactivex/CompletableObserver;

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
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

    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    .line 76
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->mapper:Lio/reactivex/functions/Function;

    .line 77
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->delayErrors:Z

    .line 78
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 79
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->disposed:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method innerComplete(Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver<",
            "TT;>.InnerObserver;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->onComplete()V

    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver<",
            "TT;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->c(Lio/reactivex/disposables/Disposable;)Z

    .line 165
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->delayErrors:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->dispose()V

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 125
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_2
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

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->getAndIncrement()I

    .line 107
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;)V

    .line 109
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->disposed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 101
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
