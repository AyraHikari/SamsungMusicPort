.class final Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RefCountObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66f7ddf0554a95a7L


# instance fields
.field final connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/internal/operators/observable/ObservableRefCount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableRefCount<",
            "TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableRefCount<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 201
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->downstream:Lio/reactivex/Observer;

    .line 202
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    .line 203
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 231
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->a(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 213
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 247
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
