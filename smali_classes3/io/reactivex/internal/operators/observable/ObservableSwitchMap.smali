.class public final Lio/reactivex/internal/operators/observable/ObservableSwitchMap;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;
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
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->a:Lio/reactivex/ObservableSource;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->b:Lio/reactivex/functions/Function;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Lio/reactivex/ObservableSource;Lio/reactivex/Observer;Lio/reactivex/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->b:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap;->d:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IZ)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
