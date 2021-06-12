.class public final Lio/reactivex/internal/operators/single/SingleFlatMap;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
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


# virtual methods
.method protected b(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMap;->a:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMap;->b:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->a(Lio/reactivex/SingleObserver;)V

    return-void
.end method
