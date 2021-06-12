.class final Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TR;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6f97610685c39ceL


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 299
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->innerError(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 279
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->innerSuccess(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Object;)V

    return-void
.end method
