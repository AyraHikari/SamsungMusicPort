.class final Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleElementObserver"
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


# instance fields
.field final a:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/disposables/Disposable;

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->d:Z

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 76
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->c:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->b:Lio/reactivex/disposables/Disposable;

    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
