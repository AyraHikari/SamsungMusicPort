.class public final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
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
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->a:Lio/reactivex/Observable;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->b:Lio/reactivex/functions/Function;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/ScalarXMapZHelper;->a(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/CompletableObserver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->a:Lio/reactivex/Observable;

    new-instance v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->b:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
