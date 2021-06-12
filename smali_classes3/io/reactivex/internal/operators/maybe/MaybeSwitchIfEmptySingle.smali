.class public final Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;
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
.field final a:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
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

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->a:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->b:Lio/reactivex/SingleSource;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
