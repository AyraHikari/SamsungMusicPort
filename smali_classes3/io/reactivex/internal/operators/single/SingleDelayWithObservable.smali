.class public final Lio/reactivex/internal/operators/single/SingleDelayWithObservable;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TU;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable;->b:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable;->a:Lio/reactivex/SingleSource;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
