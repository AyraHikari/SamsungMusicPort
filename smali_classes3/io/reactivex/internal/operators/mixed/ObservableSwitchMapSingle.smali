.class public final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;
.super Lio/reactivex/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;
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
.field final a:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
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

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;->a:Lio/reactivex/Observable;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;->b:Lio/reactivex/functions/Function;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/ScalarXMapZHelper;->b(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;->a:Lio/reactivex/Observable;

    new-instance v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;->b:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
