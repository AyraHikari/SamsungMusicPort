.class final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowBoundaryInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 289
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    .line 318
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    .line 309
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 294
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->b:Z

    .line 298
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->dispose()V

    .line 299
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->innerNext(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;)V

    return-void
.end method
