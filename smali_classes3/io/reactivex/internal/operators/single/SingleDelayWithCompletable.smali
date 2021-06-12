.class public final Lio/reactivex/internal/operators/single/SingleDelayWithCompletable;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDelayWithCompletable$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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

.field final b:Lio/reactivex/CompletableSource;


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

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable;->b:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable$OtherObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable;->a:Lio/reactivex/SingleSource;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable$OtherObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
