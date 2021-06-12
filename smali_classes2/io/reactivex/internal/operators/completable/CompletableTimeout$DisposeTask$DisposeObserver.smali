.class final Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisposeObserver"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->b:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->b:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;->a:Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
