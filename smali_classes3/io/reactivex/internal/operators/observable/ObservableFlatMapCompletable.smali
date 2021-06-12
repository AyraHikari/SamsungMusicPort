.class public final Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable$FlatMapCompletableMainObserver;
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
.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
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
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable$FlatMapCompletableMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable;->b:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletable$FlatMapCompletableMainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
