.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TU;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;-><init>(Lio/reactivex/Observer;)V

    .line 35
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->b:Lio/reactivex/ObservableSource;

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 38
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
