.class public final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field final c:I


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->c:I

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;-><init>(Lio/reactivex/Observer;ILjava/util/concurrent/Callable;)V

    .line 46
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
