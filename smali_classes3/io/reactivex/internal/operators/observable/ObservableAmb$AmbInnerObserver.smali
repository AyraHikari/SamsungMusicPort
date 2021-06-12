.class final Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10756d62aa142dccL


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:I

.field final parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<",
            "TT;>;"
        }
    .end annotation
.end field

.field won:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;ILio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<",
            "TT;>;I",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    .line 151
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    .line 152
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 201
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    :cond_1
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

    .line 162
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
