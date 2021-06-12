.class public final Lio/reactivex/internal/operators/maybe/MaybeMap;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMap;->a:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeMap;->b:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->a(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
