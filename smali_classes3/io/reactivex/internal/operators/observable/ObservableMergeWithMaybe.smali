.class public final Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;-><init>(Lio/reactivex/Observer;)V

    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 46
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe;->b:Lio/reactivex/MaybeSource;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
