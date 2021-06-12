.class public final Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->b:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
