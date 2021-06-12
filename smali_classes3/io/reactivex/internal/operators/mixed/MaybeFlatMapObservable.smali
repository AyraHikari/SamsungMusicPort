.class public final Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable;
.super Lio/reactivex/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable$FlatMapObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable$FlatMapObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable;->b:Lio/reactivex/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable$FlatMapObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/MaybeFlatMapObservable;->a:Lio/reactivex/MaybeSource;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
